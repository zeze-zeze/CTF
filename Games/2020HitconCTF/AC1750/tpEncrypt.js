(function($) {
    $.encrypt = $.encrypt || {};
    $.encrypt.MD5 = function(text, option) {
        return CryptoJS.MD5(text, option).toString()
    };
    $.encrypt.AES = (function() {
        var KEY_LEN = 128 / 8;
        var IV_LEN = 16;
        var OPTIONS = {
            mode: CryptoJS.mode.CBC,
            padding: CryptoJS.pad.Pkcs7
        };
        var AES = function() {};
        AES.prototype.genKey = function() {
            var key = (new Date().getTime() + "" + Math.random() * 1000000000).substr(0, KEY_LEN);
            var iv = (new Date().getTime() + "" + Math.random() * 1000000000).substr(0, IV_LEN);
            this.key = key;
            this._keyUtf8 = CryptoJS.enc.Utf8.parse(key);
            this.iv = iv;
            this._ivUtf8 = CryptoJS.enc.Utf8.parse(iv);
            return {
                key: key,
                iv: iv
            }
        };
        AES.prototype.setKey = function(key, iv) {
            if (typeof key == "string" && key.length == KEY_LEN) {
                this.key = key;
                this._keyUtf8 = CryptoJS.enc.Utf8.parse(key)
            }
            if (typeof iv == "string" && iv.length == IV_LEN) {
                this.iv = iv;
                this._ivUtf8 = CryptoJS.enc.Utf8.parse(iv)
            }
        };
        AES.prototype.setStringKey = function(string) {
            var temp = string.split("&");
            var key = temp[0].split("=")[1];
            var iv = temp[1].split("=")[1];
            this.setKey(key, iv)
        };
        AES.prototype.getKey = function() {
            return {
                key: this.key,
                iv: this.iv
            }
        };
        AES.prototype.getKeyString = function(pattern) {
            pattern = pattern || "k=%key%&i=%iv%";
            var result = pattern.replace("%key%", this.key).replace("%iv%", this.iv);
            return result
        };
        AES.prototype.encrypt = function(plaintText) {
            var op = $.extend(OPTIONS, {
                iv: this._ivUtf8
            });
            var encryptedData = CryptoJS.AES.encrypt(plaintText, this._keyUtf8, op);
            return encryptedData.toString()
        };
        AES.prototype.decrypt = function(encrypted) {
            var op = $.extend(OPTIONS, {
                iv: this._ivUtf8
            });
            var decryptedData = CryptoJS.AES.decrypt(encrypted, this._keyUtf8, op);
            return decryptedData.toString(CryptoJS.enc.Utf8)
        };
        return AES
    })();
    $.encrypt.RSA = (function() {
        var rsaEncrypt = $.su.encrypt;
        var RSA = function() {};
        RSA.prototype.setKey = function(nn, ee) {
            this.nn = nn;
            this.ee = ee
        };
        RSA.prototype.setStringKey = function(string) {
            var temp = string.split("&");
            var nn = temp[0].split("=")[1];
            var ee = temp[1].split("=")[1];
            this.setKey(nn, ee)
        };
        RSA.prototype.encrypt = function(plaintText, nn, ee) {
            return rsaEncrypt(plaintText, [this.nn || nn, this.ee || ee], 1, 128)
        };
        RSA.prototype.getKeyString = function(pattern) {
            pattern = pattern || "nn=%nn%&ee=%ee%";
            var result = pattern.replace("%nn%", this.nn).replace("%ee%", this.ee);
            return result
        };
        return RSA
    })();
    $.encrypt.encryptor = (function() {
        var Encryptor = function(encryptorStr) {
            this.aes = new $.encrypt.AES();
            this.rsa = new $.encrypt.RSA()
        };
        Encryptor.prototype.setHash = function() {
            if (arguments.length == 2) {
                var name = arguments[0];
                var pwd = arguments[1];
                this.hash = $.encrypt.MD5(name + pwd)
            } else {
                var hash = arguments[0];
                this.hash = hash
            }
        };
        Encryptor.prototype.getHash = function() {
            return this.hash
        };
        Encryptor.prototype.setSeq = function(seq) {
            this.seq = parseInt(seq)
        };
        Encryptor.prototype.getSeq = function(seq) {
            return this.seq
        };
        Encryptor.prototype.genAESKey = function() {
            this.aes.genKey();
            this.aesKeyString = this.aes.getKeyString()
        };
        Encryptor.prototype.getAESKey = function() {
            return this.aes.getKeyString()
        };
        Encryptor.prototype.setAESStringKey = function(string) {
            this.aes.setStringKey(string);
            this.aesKeyString = string
        };
        Encryptor.prototype.setRSAKey = function(nn, ee) {
            this.rsa.setKey(nn, ee)
        };
        Encryptor.prototype.setRSAStringKey = function(string) {
            this.rsa.setStringKey(string)
        };
        Encryptor.prototype.getRSAKey = function() {
            return this.rsa.getKeyString()
        };
        Encryptor.prototype.getSignature = function(seq, isLogin) {
            if (isLogin) {
                var s = this.aesKeyString + "&h=" + this.hash + "&s=" + seq || this.seq
            } else {
                var s = "h=" + this.hash + "&s=" + seq || this.seq
            }
            var sign = "",
                pos = 0;
            while (pos < s.length) {
                sign = sign + this.rsa.encrypt(s.substr(pos, 53));
                pos = pos + 53
            }
            return sign
        };
        Encryptor.prototype.dataEncrypt = function(data, isLogin) {
            var result = {};
            var encryptedData = this.aes.encrypt(data);
            var dataLen = encryptedData.length;
            result.sign = this.getSignature(this.seq + dataLen, isLogin);
            result.data = encryptedData;
            return result
        };
        Encryptor.prototype.dataDecrypt = function(data) {
            var result = this.aes.decrypt(data);
            return result
        };
        return Encryptor
    })();
    $.encrypt.encryptManager = (function() {
        var EncryptManager = function() {};
        EncryptManager.prototype.genEncryptor = function() {
            this.encryptor = new $.encrypt.encryptor();
            return this.encryptor
        };
        EncryptManager.prototype.recordEncryptor = function() {
            if (this.encryptor) {
                localStorage.setItem("encryptorAES", this.encryptor.getAESKey());
                localStorage.setItem("encryptorSeq", this.encryptor.getSeq());
                localStorage.setItem("encryptorHash", this.encryptor.getHash());
                localStorage.setItem("encryptorRsa", this.encryptor.getRSAKey())
            }
        };
        EncryptManager.prototype.getEncryptor = function() {
            if (!this.encryptor) {
                this.encryptor = new $.encrypt.encryptor();
                this.encryptor.setAESStringKey(localStorage.getItem("encryptorAES"));
                this.encryptor.setSeq(localStorage.getItem("encryptorSeq"));
                this.encryptor.setHash(localStorage.getItem("encryptorHash"));
                this.encryptor.setRSAStringKey(localStorage.getItem("encryptorRsa"))
            }
            return this.encryptor
        };
        EncryptManager.prototype.cleanStorage = function() {
            localStorage.removeItem("encryptorAES");
            localStorage.removeItem("encryptorSeq");
            localStorage.removeItem("encryptorHash");
            localStorage.removeItem("encryptorRsa")
        };
        return new EncryptManager()
    })()
})(jQuery);