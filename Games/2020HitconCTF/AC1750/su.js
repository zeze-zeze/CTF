(function($) {
    $.su = $.su || {};
    $.su.globalVar = $.su.globalVar || {};
    if (!Array.prototype.indexOf) {
        Array.prototype.indexOf = function(elt) {
            var len = this.length >>> 0;
            var from = Number(arguments[1]) || 0;
            from = (from < 0) ? Math.ceil(from) : Math.floor(from);
            if (from < 0) {
                from += len
            }
            for (; from < len; from++) {
                if (from in this && this[from] === elt) {
                    return from
                }
            }
            return -1
        }
    }
    $.su.func = {};
    $.su.func.debug = function() {};
    $.su.func.breakWordWithLen = function(str, len) {
        if (typeof str != "string") {
            return str
        }
        if (str.length <= len) {
            return str
        } else {
            var subStr = str.substring(0, len);
            var result = subStr + "...";
            return result
        }
    };
    $.fn.fadeInSU = function(speed, fn) {
        if ($.support.opacity) {
            this.fadeIn(speed, fn)
        } else {
            this.show(0, fn)
        }
    };
    $.fn.fadeOutSU = function(speed, fn) {
        if ($.support.opacity) {
            this.fadeOut(speed, fn)
        } else {
            this.hide(0, fn)
        }
    };
    $.su.func.changeUnit = function(value) {
        var result = value;
        if (value >= 1000 * 1000 * 1000) {
            result = (result / (1000 * 1000 * 1000)).toFixed(3) + "G"
        } else {
            if (value >= 1000 * 1000) {
                result = (result / (1000 * 1000)).toFixed(3) + "M"
            } else {
                if (value >= 1000) {
                    result = (result / (1000)).toFixed(3) + "K"
                }
            }
        }
        return result
    };
    $.su.func.ipToInt = function(ip) {
        var patternIp = /^\s*[0-9]{1,3}\.{1}[0-9]{1,3}\.{1}[0-9]{1,3}\.{1}[0-9]{1,3}\s*$/;
        var ipArray = ip.split(".");
        if (ipArray.length != 4) {
            return -1
        }
        if (!patternIp.test(ip)) {
            return -1
        }
        return (Number(ipArray[0]) * (1 << 24) + (Number(ipArray[1]) << 16 | Number(ipArray[2]) << 8 | Number(ipArray[3])))
    };
    $.su.func.intToIp = function(int_ip) {
        var str_ip = ((int_ip >> 24) & 255) + "." + ((int_ip >> 16) & 255) + "." + ((int_ip >> 8) & 255) + "." + ((int_ip) & 255);
        return str_ip
    };
    $.su.func.isSameNet = function(ip1, ip2, mask) {
        if (ip1 == "") {
            return false
        }
        var ipToInt = $.su.func.ipToInt;
        var intIp1 = ipToInt(ip1);
        var intIp2 = ipToInt(ip2);
        var intMask = ipToInt(mask);
        if (intMask == 0) {
            return false
        }
        if ((intIp1 & intMask) != (intIp2 & intMask)) {
            return false
        }
        return true
    };
    $.su.func.isHostIp = function(ip1, ip2, mask) {
        if (ip1 == "") {
            return false
        }
        var ipToInt = $.su.func.ipToInt;
        var intIp1 = ipToInt(ip1);
        var intIp2 = ipToInt(ip2);
        var intMask = ipToInt(mask);
        if (intMask == 0) {
            return false
        }
        if ((intIp1 & 4294967295) != (intIp2 & intMask)) {
            return false
        }
        return true
    };
    $.su.func.isNetIp = function(ip, mask) {
        var ipToInt = $.su.func.ipToInt;
        if (!ip) {
            return false
        }
        var ipint = ipToInt(ip);
        var maskint = ipToInt(mask);
        if (maskint != 4294967294 && 0 == (ipint & (~maskint))) {
            return true
        }
        return false
    };
    $.su.func.isNetIpLegal = function(ip, mask) {
        var ipToInt = $.su.func.ipToInt;
        if (!ip) {
            return false
        }
        var ipint = ipToInt(ip);
        var maskint = ipToInt(mask);
        var res = ipint & maskint;
        if (res == 0 || res == maskint) {
            return false
        }
        return true
    };
    $.su.func.isBroadCastIp = function(ip, mask) {
        var ipToInt = $.su.func.ipToInt;
        if (!ip) {
            return false
        }
        var ipint = ipToInt(ip);
        var maskint = ipToInt(mask);
        if (maskint != 4294967294 && ((ipint & (~maskint)) == (~maskint))) {
            return true
        }
        return false
    };
    $.su.func.logicOr = function(int_a, int_b) {
        var binary_a = parseInt(int_a, 10).toString(2);
        var binary_b = parseInt(int_b, 10).toString(2);
        var len = (binary_a.length > binary_b.length) ? binary_a.length : binary_b.length;
        if (len != 32) {
            return int_a | int_b
        }
        var cut = Math.abs(binary_a.length - binary_b.length);
        var temp = "";
        for (var i = 0; i < cut; i++) {
            temp = temp + "0"
        }
        if (binary_a.length > binary_b.length) {
            binary_b = temp + binary_b
        } else {
            binary_a = temp + binary_a
        }
        var res = 0;
        for (var i = len - 1; i >= 0; i--) {
            if (binary_a.charAt(i) | binary_b.charAt(i) == 1) {
                if ((len - 1 - i) > 24) {
                    res = Number(res) + 256 * Number((1 << (len - 9 - i)))
                } else {
                    res = Number(res) + Number((1 << (len - 1 - i)))
                }
            }
        }
        return res
    }, $.su.func.ipContain = function(ip1, mask1, ip2, mask2) {
        var ipToInt = $.su.func.ipToInt;
        var intToIp = $.su.func.intToIp;
        ip1StartIp = ipToInt(intToIp(ipToInt(ip1) & ipToInt(mask1)));
        ip1EndIp = ipToInt(intToIp($.su.func.logicOr(ipToInt(ip1), ~ipToInt(mask1))));
        ip2StartIp = ipToInt(intToIp(ipToInt(ip2) & ipToInt(mask2)));
        ip2EndIp = ipToInt(intToIp($.su.func.logicOr(ipToInt(ip2), ~ipToInt(mask2))));
        if (ip1StartIp <= ip2StartIp && ip2EndIp <= ip1EndIp) {
            return true
        }
        return false
    };
    $.su.func.getLimitIp = function(lanIP, lanMask, type) {
        var ip_arr = lanIP.split(".");
        var mask_arr = lanMask.split(".");
        var ip_len = ip_arr.length;
        var mask_len = mask_arr.length;
        var return_arr = [];
        for (var i = 0; i < ip_len; ++i) {
            if (type == "min") {
                return_arr.push(ip_arr[i] & mask_arr[i])
            } else {
                var value = parseInt(mask_arr[i]);
                if (value < 128) {
                    return_arr.push(ip_arr[i] | (((~value - 128) << 24 >> 24) + 128))
                } else {
                    return_arr.push(ip_arr[i] | (~value << 24 >> 24))
                }
            }
        }
        return return_arr.join(".")
    };
    $.su.func.escapeHtml = function(string) {
        var r = string.toString();
        r = r.replace(/\&/g, "&amp;");
        r = r.replace(/\</g, "&lt;");
        r = r.replace(/\>/g, "&gt;");
        r = r.replace(/\"/g, "&quot;");
        r = r.replace(/\s/g, "&nbsp;");
        return r
    };
    $.su.func.unEscapeHtml = function(string) {
        var r = string.toString();
        r = r.replace(/&amp;/g, "&");
        r = r.replace(/&lt;/g, "<");
        r = r.replace(/&gt;/g, ">");
        r = r.replace(/&quot;/g, '"');
        r = r.replace(/&nbsp;/g, " ");
        return r
    };
    $.su.func.getRelatedTarget = function(event) {
        if (event.relatedTarget) {
            return event.relatedTarget
        } else {
            if (event.toElement) {
                return event.toElement
            } else {
                if (event.fromElement) {
                    return event.fromElement
                } else {
                    if (event.target) {
                        return event.target.attributes[0].ownerDocument.activeElement
                    } else {
                        return null
                    }
                }
            }
        }
    };
    $.su.func.prefixInteger = function(num, length) {
        return (Array(length).join("0") + num).slice(-length)
    };
    $.su.func.getBrowseVersion = function() {
        var Sys = {};
        var ua = navigator.userAgent.toLowerCase();
        var s;
        (s = ua.match(/msie ([\d.]+)/)) ? (Sys.browse = "ie", Sys.version = s[1]) : (s = ua.match(/firefox\/([\d.]+)/)) ? (Sys.browse = "firefox", Sys.version = s[1]) : (s = ua.match(/chrome\/([\d.]+)/)) ? (Sys.browse = "chrome", Sys.version = s[1]) : (s = ua.match(/opera.([\d.]+)/)) ? (Sys.browse = "opera", Sys.version = s[1]) : (s = ua.match(/version\/([\d.]+).*safari/)) ? (Sys.browse = "safari", Sys.version = s[1]) : 0;
        return Sys
    };
    $.su.func.setIframeSrc = function(module) {
        if (module) {
            var url = $.su.url.cloudOrigin + "/cloud_ui_v2/pages/device/index.html?module=" + module;
            $("#cloud-login").attr("src", url);
            $.su.func.setWaitingEvent("ev_watingTimeout")
        }
    };
    $.su.func.tokenRead = function(module, tryTime, proxy, renew) {
        var data = renew ? {
            renew: true
        } : {};
        proxy.read(data, function(data) {
            $.su.url.deviceToken = data.token;
            if (!$.su.url.deviceToken && ++tryTime < 3) {
                $.su.func.tokenRead(module, tryTime, proxy)
            } else {
                if (!$.su.url.deviceToken) {
                    $(window).trigger("ev_watingTimeout")
                } else {
                    $.su.url.cloudOrigin = data.origin_url;
                    $.su.func.setIframeSrc(module)
                }
            }
        })
    };
    $.su.func.getCloudOrigin = function(module) {
        $.su.url = $.su.url || {};
        var tryTime = 0;
        var proxyToken = new $.su.Proxy({
            url: $.su.url("/login?form=get_eweb_url"),
            encrypt: false
        });
        proxyToken.read({}, function(data) {
            $.su.url.cloudOrigin = data.origin_url;
            if (!$.su.url.cloudOrigin) {
                $(window).trigger("ev_watingTimeout")
            } else {
                $.su.func.setIframeSrc(module)
            }
        })
    };
    $.su.func.getToken = function(module, updateFlag) {
        $.su.url = $.su.url || {};
        var proxyToken = new $.su.Proxy({
            url: $.su.url("/admin/cloud_account?form=get_token")
        });
        if (!$.su.url.deviceToken) {
            var tryTime = 0;
            $.su.func.tokenRead(module, tryTime, proxyToken)
        } else {
            if (updateFlag) {
                var tryTime = 0;
                var renew = true;
                $.su.func.tokenRead(module, tryTime, proxyToken, renew)
            } else {
                $.su.func.setIframeSrc(module)
            }
        }
    };
    $.su.func.postToken = function() {
        var param = {};
        param.deviceToken = $.su.url.deviceToken;
        param.eType = "ev_token";
        var str = JSON.stringify(param);
        window.frames["cloud-login"] && window.frames["cloud-login"].postMessage(str, $.su.url.cloudOrigin)
    };
    $.su.func.postUserInfo = function() {
        var param = {};
        param = $.su.userInfo;
        param.eType = "ev_user_info";
        var str = JSON.stringify(param);
        window.frames["cloud-login"] && window.frames["cloud-login"].postMessage(str, $.su.url.cloudOrigin)
    };
    $.su.func.getDeviceInfo = function(hasStok) {
        $.su.deviceInfo = $.su.deviceInfo || {};
        if ($.su.deviceInfo.model) {
            var params = {};
            params = $.su.deviceInfo;
            params.eType = "ev_deviceInfo";
            var str = JSON.stringify(params);
            window.frames["cloud-login"] && window.frames["cloud-login"].postMessage(str, $.su.url.cloudOrigin);
            if (hasStok != false) {
                $.su.app.runningModule.fire("deviceInfoProxy")
            }
            return
        }
        var proxyDeviceInfo;
        if (hasStok === false) {
            proxyDeviceInfo = new $.su.Proxy({
                url: $.su.url("/login?form=get_deviceInfo"),
                encrypt: false
            })
        } else {
            proxyDeviceInfo = new $.su.Proxy({
                url: $.su.url("/admin/cloud_account?form=get_deviceInfo"),
                eventId: "deviceInfoProxy"
            })
        }
        proxyDeviceInfo.read({}, function(data) {
            $.su.deviceInfo = data
        }, function() {
            $.su.deviceInfo = {}
        }, function() {
            $.su.deviceInfo = {}
        });
        $(proxyDeviceInfo).on("ev_read ev_failed ev_error", function() {
            if (window.frames["cloud-login"]) {
                var params = {};
                params = $.su.deviceInfo;
                params.eType = "ev_deviceInfo";
                params.windowHeight = $(window).height() - 90;
                params.windowWidth = $(window).width();
                params.iframeTop = $("#cloud-login").offset().top;
                var str = JSON.stringify(params);
                window.frames["cloud-login"].postMessage(str, $.su.url.cloudOrigin)
            }
        })
    };
    $.su.func.iframeResize = function(iframeObj, height) {
        iframeObj.css({
            height: height + 20
        });
        $.su.loading.hide("iframeResize");
        $.su.layout.doLayout()
    };
    $.su.globalVar.waitingId = false;
    $.su.globalVar.waitingTime = 10 * 1000;
    $.su.func.setWaitingEvent = function(eType, obj, waitingTime) {
        $.su.globalVar.waitingId = false;
        var time = waitingTime || $.su.globalVar.waitingTime;
        var me = obj || window;
        me = me.jquery ? me : $(me);
        $.su.globalVar.waitingId = setTimeout(function() {
            me.trigger(eType)
        }, time);
        return true
    };
    $.su.func.clearWaitingEvent = function() {
        if ($.su.globalVar.waitingId) {
            clearTimeout($.su.globalVar.waitingId);
            $.su.globalVar.waitingId = false
        }
    };
    $.su.post = function(url, data, callback, type) {
        if ($.isFunction(data)) {
            callback = data;
            data = {
                operation: "read"
            }
        }
        if (!data) {
            data = {
                operation: "read"
            }
        }
        if (!data.operation) {
            data.operation = "read"
        }
        data = $.su.encryptor.dataEncrypt($.param(data, true));
        $.post(url, data, function(data) {
            if (data == "" || (data && data.data == undefined)) {
                return
            }
            try {
                data = JSON.parse($.su.encryptor.dataDecrypt(data.data))
            } catch (e) {
                $.encrypt.encryptManager.cleanStorage();
                location.href = "/"
            }
            if (callback) {
                callback(data)
            }
        }, type)
    };
    $.su.vtype = function(options) {
        var defaults = {
            type: "sample",
            regex: /^[a-zA-Z0-9]&/,
            vtypeText: "sample run!",
            validator: null
        };
        var name = "",
            opt = {};
        if ($.type(options) === "string") {
            name = options
        } else {
            if ($.type(options) === "object" && options.vtype) {
                name = options.vtype;
                opt = options
            }
        }
        if (!$.su.vtype.types[name]) {
            return null
        } else {
            defaults = $.su.vtype.types[name]
        }
        $.extend(this, defaults, opt, {
            isVtype: true
        })
    };
    $.su.vtype.types = {
        email: {
            regex: /^[a-zA-Z0-9_+.-]+\@([a-zA-Z0-9-]+\.)+[a-zA-Z0-9]{2,32}$/,
            vtypeText: $.su.CHAR.VTYPETEXT.EMAIL
        },
        float_number: {
            regex: /^-?[0-9]\d*(.[0-9]\d{0,2})?$/,
            vtypeText: $.su.CHAR.VTYPETEXT.NUMBER,
            validator: function(value) {
                value = parseFloat(value);
                if (this.max !== null || this.max !== undefined) {
                    if (value > this.max) {
                        if (this.min !== null || this.min !== undefined) {
                            var str = $.su.CHAR.VTYPETEXT.NUMBER_MIN_MAX.replace("%min", this.min.toString()).replace("%max", this.max.toString());
                            return str
                        } else {
                            var str = $.su.CHAR.VTYPETEXT.NUMBER_MAX.replace("%max", this.max.toString());
                            return str
                        }
                    }
                }
                if (this.min !== null || this.min !== undefined) {
                    if (value < this.min) {
                        if (this.max !== null || this.max !== undefined) {
                            var str = $.su.CHAR.VTYPETEXT.NUMBER_MIN_MAX.replace("%min", this.min.toString()).replace("%max", this.max.toString());
                            return str
                        } else {
                            var str = $.su.CHAR.VTYPETEXT.NUMBER_MIN.replace("%min", this.min.toString());
                            return str
                        }
                    }
                }
                return true
            }
        },
        number: {
            regex: /^-?[0-9]\d*$/,
            vtypeText: $.su.CHAR.VTYPETEXT.NUMBER,
            validator: function(value) {
                value = parseInt(value, 10);
                if (this.max !== null || this.max !== undefined) {
                    if (value > this.max) {
                        if (this.min !== null || this.min !== undefined) {
                            var str = $.su.CHAR.VTYPETEXT.NUMBER_MIN_MAX.replace("%min", this.min.toString()).replace("%max", this.max.toString());
                            return str
                        } else {
                            var str = $.su.CHAR.VTYPETEXT.NUMBER_MAX.replace("%max", this.max.toString());
                            return str
                        }
                    }
                }
                if (this.min !== null || this.min !== undefined) {
                    if (value < this.min) {
                        if (this.max !== null || this.max !== undefined) {
                            var str = $.su.CHAR.VTYPETEXT.NUMBER_MIN_MAX.replace("%min", this.min.toString()).replace("%max", this.max.toString());
                            return str
                        } else {
                            var str = $.su.CHAR.VTYPETEXT.NUMBER_MIN.replace("%min", this.min.toString());
                            return str
                        }
                    }
                }
                return true
            },
            keybordHandler: function(e) {
                e.stopPropagation();
                var keyCode = e.keyCode,
                    shiftKey = e.shiftKey,
                    ctrlKey = e.ctrlKey;
                if (shiftKey) {
                    return false
                }
                if (keyCode == 37 || keyCode == 39) {
                    return true
                }
                if (keyCode == 38 || keyCode == 40) {
                    var input = $(this),
                        _value = input.val();
                    if ($.su.vtype.types.number.regex.test(_value)) {
                        if (keyCode == 38) {
                            var _maxValue = input.hasClass("hour-text") ? 23 : 59;
                            if (_value < _maxValue) {
                                input.val(parseInt(_value, 10) + 1)
                            } else {
                                return false
                            }
                        } else {
                            if (_value == 0) {
                                return false
                            } else {
                                input.val(parseInt(_value, 10) - 1)
                            }
                        }
                    } else {
                        input.val(0)
                    }
                }
                if (!ctrlKey) {
                    if ((keyCode < 48 || keyCode > 57) && keyCode > 32) {
                        return false
                    }
                }
            }
        },
        date: {
            regex: /^(0[1-9]|1[0-2])\/(0[1-9]|1[0-9]|2[0-9]|3[0-1])\/([0-9]{4})$/,
            vtypeText: $.su.CHAR.VTYPETEXT.DATE,
            validator: function(val) {
                var arr = val.split("/");
                if (parseInt(arr[2], 10) < 1970) {
                    return $.su.CHAR.VTYPETEXT.DATE_INVALID
                }
                if (parseInt(arr[2], 10) > 2030) {
                    return $.su.CHAR.VTYPETEXT.DATE_INVALID
                }
                var formatDate = arr[2] + "/" + arr[0] + "/" + arr[1];
                return (new Date(formatDate).getDate() == formatDate.substring(formatDate.length - 2))
            }
        },
        ipv6: {
            isPrefixFlag: false,
            regex: /^\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:)))(%.+)?\s*$/,
            vtypeText: $.su.CHAR.VTYPETEXT.IPV6,
            validator: function(val) {
                var reg1 = new RegExp("^[2-3][0-9A-Fa-f]{1,3}:");
                if (!reg1.test(val)) {
                    return $.su.CHAR.VTYPETEXT.IPV6_NOT_GLOBAL
                }
                var reg2 = new RegExp("::$");
                var reg4 = new RegExp("^2002:");
                if (this.isPrefixFlag) {
                    if (!reg2.test(val)) {
                        return $.su.CHAR.VTYPETEXT.IPV6_NOT_PREFIX
                    }
                    if (reg4.test(val)) {
                        return $.su.CHAR.VTYPETEXT.IPV6_PREFIX
                    }
                } else {
                    if (reg2.test(val)) {
                        return $.su.CHAR.VTYPETEXT.IPV6_NOT_GLOBAL
                    }
                }
                var reg3 = /:/g;
                var arr = val.match(reg3);
                if (this.isPrefixFlag) {
                    if (arr.length > 5) {
                        return $.su.CHAR.VTYPETEXT.IPV6_NOT_PREFIX
                    }
                }
                return true
            }
        },
        ip: {
            allowAllZeroFlag: false,
            disallowAllZeroText: $.su.CHAR.VTYPETEXT.IP_NO_ALL_ZERO,
            allowLoopFlag: false,
            disallowLoopText: $.su.CHAR.VTYPETEXT.IP_NO_LOOP,
            allowDTypeFlag: false,
            disallowDTypeText: $.su.CHAR.VTYPETEXT.IP_NO_D_TYPE,
            allowETypeFlag: false,
            disallowETypeText: $.su.CHAR.VTYPETEXT.IP_NO_E_TYPE,
            allowAllOneFlag: false,
            disallowAllOneText: $.su.CHAR.VTYPETEXT.IP_NO_ALL_ONE,
            disallowFirstZeroFlag: true,
            disallowFirstZeroText: $.su.CHAR.VTYPETEXT.IP_NO_FIRST_ZERO,
            disallowFirstAllOneText: $.su.CHAR.VTYPETEXT.IP_NO_FIRST_ALL_ONE,
            regex: /^(\d{1,2}|1\d\d|2[0-4]\d|25[0-5]|0\d\d)(\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5]|0\d\d)){3}$/,
            validator: function(value) {
                var ipStr = value;
                var szarray = [0, 0, 0, 0];
                var remain;
                var i;
                for (i = 0; i < 3; i++) {
                    var n = ipStr.indexOf(".");
                    szarray[i] = ipStr.substring(0, n);
                    remain = ipStr.substring(n + 1);
                    ipStr = remain
                }
                szarray[3] = remain;
                for (i = 0; i < 4; i++) {
                    if (szarray[i] < 0 || szarray[i] > 255) {
                        return false
                    }
                }
                if (!this.allowLoopFlag) {
                    if (szarray[0] == 127) {
                        return this.disallowLoopText
                    }
                }
                if (!this.allowDTypeFlag) {
                    if (szarray[0] >= 224 && szarray[0] <= 239) {
                        return this.disallowDTypeText
                    }
                }
                if (!this.allowETypeFlag) {
                    if (szarray[0] >= 240 && szarray[0] <= 254) {
                        return this.disallowETypeText
                    }
                }
                if (!this.allowAllOneFlag) {
                    if (szarray[0] == 255 && szarray[1] == 255 && szarray[2] == 255 && szarray[3] == 255) {
                        return this.disallowAllOneText
                    }
                    if (szarray[0] == 255) {
                        return this.disallowFirstAllOneText
                    }
                } else {
                    if (szarray[0] == 255 && szarray[1] == 255 && szarray[2] == 255 && szarray[3] == 255) {} else {
                        if (szarray[0] == 255) {
                            return this.disallowFirstAllOneText
                        }
                    }
                }
                if (!this.allowAllZeroFlag) {
                    if (szarray[0] == 0 && szarray[1] == 0 && szarray[2] == 0 && szarray[3] == 0) {
                        return this.disallowAllZeroText
                    }
                }
                if (this.disallowFirstZeroFlag) {
                    if (szarray[0] == 0 && (szarray[1] != 0 || szarray[2] != 0 || szarray[3] != 0)) {
                        return this.disallowFirstZeroText
                    }
                }
                return true
            },
            vtypeText: $.su.CHAR.VTYPETEXT.IP
        },
        ip_no_zero: {},
        mac: {
            regex: /^[a-fA-F\d]{2}\-[a-fA-F\d]{2}\-[a-fA-F\d]{2}\-[a-fA-F\d]{2}\-[a-fA-F\d]{2}\-[a-fA-F\d]{2}$/,
            disallowAllMultiText: $.su.CHAR.VTYPETEXT.MULTI_MAC,
            validator: function(value) {
                var patternMulti = /^\s*[0-9A-Fa-f]{1}[13579bdfBDF]{1}(\-[A-Fa-f0-9]{2}){5}\s*$/;
                var flag = patternMulti.test(value);
                if (flag) {
                    return this.disallowAllMultiText
                }
                var patternZero = /^(0{1,2}-){5}0{1,2}$/;
                if (patternZero.test(value)) {
                    return false
                }
                return true
            },
            vtypeText: $.su.CHAR.VTYPETEXT.MAC
        },
        netmask: {
            allowAllOneFlag: false,
            disallowAllOneText: $.su.CHAR.VTYPETEXT.MASK_NO_ALL_ONE,
            regex: /^(254|252|248|240|224|192|128)\.0\.0\.0$|^(255\.(254|252|248|240|224|192|128|0)\.0\.0)$|^(255\.255\.(254|252|248|240|224|192|128|0)\.0)$|^(255\.255\.255\.(254|252|248|240|224|192|128|0))$|^255.255.255.255$/,
            vtypeText: $.su.CHAR.VTYPETEXT.MASK,
            validator: function(value) {
                if (value == "255.255.255.255") {
                    if (this.allowAllOneFlag) {
                        return true
                    } else {
                        return this.disallowAllOneText
                    }
                }
                return true
            }
        },
        string_ip_domain: {
            regex: /^[A-Za-z0-9\_\-]+\.{1,}/,
            vtypeText: $.su.CHAR.VTYPETEXT.STRING_DOMAIN,
            validator: function(value) {
                var regex = /^\S+$/;
                if (!regex.test(value)) {
                    return $.su.CHAR.VTYPETEXT.STRING_DOMAIN
                }
                return true
            }
        },
        string_ip_domain_no_loop: {
            regex: /^[A-Za-z0-9\_\-]+\.{1,}/,
            validator: function(value) {
                if (value == "127.0.0.1") {
                    return $.su.CHAR.ERROR["00000131"]
                }
                return true
            },
            vtypeText: $.su.CHAR.VTYPETEXT.STRING_DOMAIN
        },
        ip_domain: {
            regex: /^.+$/,
            vtypeText: $.su.CHAR.VTYPETEXT.IP_DOMAIN,
            validator: function(value) {
                var error_str;
                if ($.su.vtype.types.ip.regex.test(value)) {
                    if ((error_str = $.su.vtype.types.ip.validator(value)) === true) {
                        return true
                    }
                }
                if ($.su.vtype.types.domain.regex.test(value)) {
                    return true
                }
                return error_str ? error_str : false
            }
        },
        domain: {
            regex: /^([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6}$/,
            vtypeText: $.su.CHAR.VTYPETEXT.DOMAIN
        },
        domain_header: {
            regex: /^[a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9]*)$/,
            vtypeText: $.su.CHAR.VTYPETEXT.DOMAIN
        },
        ascii_visible: {
            regex: /^[\x21-\x7e]+$/,
            vtypeText: $.su.CHAR.VTYPETEXT.ASCII_VISIBLE
        },
        string_visible: {
            regex: /^\S+$/,
            vtypeText: $.su.CHAR.VTYPETEXT.STRING_VISIBLE
        },
        string_visible_no_comma: {
            regex: /^\S+$/,
            vtypeText: $.su.CHAR.VTYPETEXT.STRING_VISIBLE_NO_COMMA,
            validator: function(value) {
                if (value.indexOf(",") >= 0) {
                    return false
                }
                return true
            }
        },
        password: {
            regex: /^[A-Za-z0-9\`\~\!\@\#\$\&\*\(\)\-\=\_\+\[\]\{\}\;\:\'\"\\\|\/\?\.\,\<\>\%\^\/\ ]+$/,
            vtypeText: $.su.CHAR.VTYPETEXT.PWD
        },
        portal_password: {
            regex: /^[A-Za-z0-9_]+$/,
            vtypeText: $.su.CHAR.ERROR["00000259"],
            validator: function(value) {
                if (value.length < 8 || value.length > 16) {
                    return false
                }
                return true
            }
        },
        portal_domain_name: {
            regex: /((http|ftp|https):\/\/)*(([a-zA-Z0-9\._-]+\.[a-zA-Z]{2,6})|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,4})*(\/[a-zA-Z0-9\&%_\.\/-~-]*)?/,
            vtypeText: $.su.CHAR.VTYPETEXT.INVALIDTEXT
        },
        protal_title: {
            regex: /^\S+$/,
            vtypeText: $.su.CHAR.ERROR["00000256"],
            validator: function(value) {
                if (value.length > 31) {
                    return false
                }
                return true
            }
        },
        protal_content: {
            vtypeText: $.su.CHAR.ERROR["00000257"],
            validator: function(value) {
                if (value.length > 1023) {
                    return $.su.CHAR.ERROR["00000257"]
                }
                return true
            }
        },
        string_visible_allow_blank: {
            regex: /^(\S|\x20)+$/,
            vtypeText: $.su.CHAR.VTYPETEXT.STRING_VISIBLE_ALLOW_BLANK
        },
        string_visible_describe: {
            regex: /^[A-Za-z0-9\-\_]+$/,
            vtypeText: $.su.CHAR.VTYPETEXT.INVALIDTEXT
        },
        name: {
            regex: /^[A-Za-z0-9\_]+$/,
            vtypeText: $.su.CHAR.VTYPETEXT.NAME
        },
        name_special: {
            regex: /^[A-Za-z0-9\_\-]+$/,
            vtypeText: $.su.CHAR.VTYPETEXT.NAME,
            validator: function(value) {
                if (value.length < 4) {
                    return false
                }
                return true
            }
        },
        name_with_special_start: {
            regex: /^[a-zA-Z_]/,
            vtypeText: $.su.CHAR.VTYPETEXT.NAME_START
        },
        name_in_vpn: {
            regex: /^[a-zA-Z0-9\_][A-Za-z0-9\_\-]{0,14}$/,
            vtypeText: $.su.CHAR.VTYPETEXT.VPN_NAME_PWD
        },
        pwd_in_vpn: {
            regex: /^[A-Za-z0-9\_\-]{1,15}$/,
            vtypeText: $.su.CHAR.VTYPETEXT.VPN_NAME_PWD
        },
        cloud_username: {
            regex: /^[\s\S]*?$/,
            vtypeText: $.su.CHAR.VTYPETEXT.NAME
        },
        cloud_email: {
            regex: /^[a-zA-Z0-9\.\!\#\$\%\&\'\*\+\/\=\?\^\_\`\{\|\}\~\-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*$/,
            vtypeText: $.su.CHAR.VTYPETEXT.EMAIL
        },
        cloud_pwd: {
            regex: /^[\x21-\x7E]{6,32}$/,
            vtypeText: $.su.CHAR.VTYPETEXT.PWD
        },
        note: {
            regex: /^[A-Za-z0-9\`\~\!\@\#\$\%\^\&\*\(\)\-\=\_\+\[\]\{\}\;\:\'\"\\\|\/\?\.\,\<\>\ ]*$/,
            vtypeText: $.su.CHAR.VTYPETEXT.NOTE
        },
        sim_pin: {
            regex: /^[0-9]{4}$/,
            vtypeText: $.su.CHAR.VTYPETEXT.SIM_PIN
        },
        sim_dialnum: {
            regex: /^[0-9*#]{0,118}$/,
            vtypeText: $.su.CHAR.VTYPETEXT.SIM_DIALNUM
        },
        phone_number: {
            regex: /^\+?[0-9][0-9\-\x20]*[0-9]$/,
            vtypeText: $.su.CHAR.VTYPETEXT.INVALIDTEXT
        }
    };
    $.su.vtype.prototype.validate = function(value) {
        var resultVal = true;
        var resultReg = true;
        if (this.regex) {
            resultReg = this.regex.test(value);
            if (resultReg !== true) {
                return this.vtypeText
            }
        }
        if (this.validator) {
            resultVal = this.validator(value);
            if (resultVal !== true) {
                return resultVal
            }
        }
        return true
    };
    $.su.clearAttrAll = function(obj) {
        var obj = $(obj);
        obj.removeAttr("id");
        obj.removeAttr("name");
        obj.removeAttr("class")
    };
    $.su.clone = function(obj) {
        var type = Object.prototype.toString.call(obj);
        switch (type) {
            case "[object Array]":
                var result = [];
                for (var index = 0; index < obj.length; index++) {
                    result[index] = $.su.clone(obj[index])
                }
                return result;
                break;
            case "[object Object]":
                var result = {};
                for (var index in obj) {
                    result[index] = $.su.clone(obj[index])
                }
                return result;
                break;
            case "[object Function]":
                return obj;
                break;
            case "[object String]":
                var result = obj;
                return result;
                break;
            case "[object Number]":
                var result = obj;
                return result;
                break;
            case "[object Boolean]":
                if (!obj) {
                    return false
                } else {
                    return true
                }
                break;
            default:
                return undefined;
                break
        }
    };
    $.su.format = {
        stringFormat: function(str) {
            return str.toString()
        },
        intFormat: function(intD) {
            if (!isNaN(parseInt(intD))) {
                return parseInt(intD, 10)
            } else {
                return intD
            }
        },
        floatFormat: function(floatV) {
            if (!isNaN(parseFloat(floatV))) {
                return parseFloat(floatV)
            } else {
                return floatV
            }
        },
        booleanFormat: function(bool) {
            if (!bool) {
                return false
            } else {
                return true
            }
        },
        ip: function(ipStr) {
            ipStr = $.trim(ipStr);
            var resultArr = [];
            var arr = ipStr.split(".");
            var len = arr.length;
            for (var i = 0; i < len; i++) {
                if (arr[i].replace(/\s/g, "")) {
                    resultArr.push(arr[i].replace(/\s/g, ""))
                } else {
                    if (arr[i] == "") {
                        resultArr.push("");
                        return resultArr.join(".")
                    } else {
                        return ipStr
                    }
                }
            }
            return resultArr.join(".")
        },
        port: function(portNumber) {
            return portNumber.replace(/\s/g, "");
            var formatVal = portNumber;
            if (isNaN(parseInt(portNumber, 10))) {
                return formatVal
            } else {
                return parseInt(portNumber, 10)
            }
        },
        number: function(number) {
            number = number.replace(/\s/g, "");
            number = number.replace(/^0*\B/, "");
            return number;
            var formatVal = number;
            if (isNaN(parseInt(number, 10))) {
                return formatVal
            } else {
                return parseInt(number, 10)
            }
        },
        ipv6: function(ipv6Str) {
            var simplify_addr;
            var reg1 = new RegExp("::$");
            var reg2 = new RegExp("::");
            if ($.su.vtype.types.ipv6.regex.test(ipv6Str)) {
                simplify_addr = ipv6Str.replace(/(?!(:0:))(:(0){1,3})/g, ":");
                if (reg1.test(ipv6Str)) {
                    $.su.vtype.types.ipv6.isPrefixFlag = true;
                    simplify_addr = simplify_addr.replace(/(:0)*::$/, "::")
                } else {
                    $.su.vtype.types.ipv6.isPrefixFlag = false;
                    if (!reg2.test(simplify_addr)) {
                        simplify_addr = simplify_addr.replace(/(:0)+/, ":")
                    }
                }
                if ($.su.vtype.types.ipv6.validator(ipv6Str) !== true) {
                    return ipv6Str
                }
                return simplify_addr
            }
            return ipv6Str
        }
    };
    $.su.randomId = function(type) {
        return type + "-" + parseInt(Math.random() * 1000 * 1000 * 1000 * 10, 10).toString()
    };
    $.su.Manager = function(options) {
        var config = {
            type: "Store",
            id: $.su.randomId("manager")
        };
        this.local = {};
        this.global = {};
        $.extend(this, config, options);
        $.su.Manager.managers = $.su.Manager.managers || [];
        $.su.Manager.managers.push(this)
    };
    $.su.Manager.removeLocal = function() {
        var managers = $.su.Manager.managers;
        if (managers) {
            for (var index = 0, len = managers.length; index < len; index++) {
                if (managers[index].removeLocal) {
                    managers[index].removeLocal()
                }
            }
        }
    };
    $.su.Manager.removeGlobal = function() {
        var managers = $.su.Manager.managers;
        if (managers) {
            for (var index = 0, len = managers.length; index < len; index++) {
                if (managers[index].removeGlobal) {
                    managers[index].removeGlobal()
                }
            }
        }
    };
    $.su.Manager.prototype.get = function(id) {
        var store = this.local[id] || this.global[id];
        if (!store) {
            return null
        }
        return store
    };
    $.su.Manager.prototype.add = function(obj) {
        var id = obj.id;
        if (!id) {
            return false
        }
        var me = this;
        if (obj.global) {
            me.global[id] = obj
        } else {
            me.local[id] = obj
        }
        if (me.addCallback) {
            me.addCallback(obj)
        }
    };
    $.su.Manager.prototype.remove = function(id) {
        var obj = this.local[id] || this.global[id];
        if (!obj) {}
        if (obj.nodeType) {
            $(obj).remove()
        } else {
            delete obj
        }
        delete this.local[id];
        delete this.global[id];
        obj = null;
        return this
    };
    $.su.Manager.prototype.removeLocal = function() {
        for (var index in this.local) {
            var obj = this.local[index];
            if (obj.nodeType) {
                $(obj).remove()
            } else {
                delete obj
            }
        }
        this.local = null;
        delete this.local;
        this.local = {};
        return this
    };
    $.su.Manager.prototype.removeGlobal = function() {
        for (var index in this.global) {
            var obj = this.global[index];
            if (obj.nodeType) {
                $(obj).remove()
            } else {
                delete obj
            }
        }
        this.global = null;
        delete this.global;
        this.global = {};
        return this
    };
    $.su.storeManager = new $.su.Manager({
        type: "Stroe",
        id: "storeManager"
    });
    $.su.componentManager = new $.su.Manager({
        type: "Component",
        id: "componentManager"
    });
    $.su.tipManager = new $.su.Manager({
        type: "Tip",
        id: "tipManager"
    });
    $.su.msgManager = new $.su.Manager({
        type: "Msg",
        id: "msgManager"
    });
    $.su.tipManager.add = function(obj) {
        $.su.Manager.prototype.add.call(this, obj);
        var container = $("div.tips-container#tips-container").length === 0 ? $('<div class="tips-container" id="tips-container"></div>').appendTo("body") : $("div.tips-container#tips-container");
        container.append(obj)
    };
    $.su.Menu = function(options) {
        var defaults = {
            container: "",
            data: "",
            urlPath: "",
            cls: "",
            idTag: "",
            list: {},
            handlers: null
        };
        var settings = $.extend({}, defaults, options);
        var menu = this;
        this.settings = settings;
        var data = {
            operation: "read"
        };
        data = $.su.encryptor.dataEncrypt($.param(data, true));
        $.ajax({
            url: settings.data,
            type: "POST",
            dataType: "json",
            data: data,
            success: function(data, status, xhr) {
                if (data == "" || (data && data.data == undefined)) {
                    return
                }
                try {
                    data = JSON.parse($.su.encryptor.dataDecrypt(data.data))
                } catch (e) {
                    $.encrypt.encryptManager.cleanStorage();
                    location.href = "/"
                }
                if (data.success) {
                    menu.init(data.data.menu, settings)
                } else {
                    if (data.errorcode === "timeout") {
                        location.href = "/"
                    }
                }
            },
            error: function() {}
        });
        if (this.settings.handlers) {
            if (settings.handlers.init) {
                $(this).on("ev_init", this.settings.handlers.init)
            }
            if (settings.handlers.goTo) {
                $(this).on("ev_goto", this.settings.handlers.goTo)
            }
        }
    };
    $.su.Menu.prototype.init = function(data, settings) {
        var container = $(settings.container).addClass("menu-container").html("&nbsp;"),
            menu = this;
        if (container.length < 0) {
            return
        }
        settings.list = $.su.Menu.filterByLanguage(settings.list, $.su.locale.locale);
        var dataMenu = [];
        for (var i = 0; i < data.length; i++) {
            var currentList = {};
            var childrenList = [];
            if (!settings.list[data[i]["name"]]) {
                continue
            }
            currentList.name = data[i]["name"];
            currentList.text = settings.list[data[i]["name"]]["text"];
            currentList.url = settings.list[data[i]["name"]]["url"];
            if (data[i].children && data[i].children.length != 0) {
                for (var m = 0; m < data[i].children.length; m++) {
                    var childObj = {};
                    if (!settings.list[data[i]["name"]]["children"][data[i].children[m]["name"]]) {
                        continue
                    }
                    childObj.name = data[i].children[m]["name"];
                    childObj.text = settings.list[data[i]["name"]]["children"][childObj.name]["text"];
                    childObj.url = settings.list[data[i]["name"]]["children"][childObj.name]["url"];
                    childrenList.push(childObj)
                }
            }
            childrenList.length == 0 ? 1 : currentList.children = childrenList;
            dataMenu.push(currentList)
        }
        var inHTML = '<ul class="menu-tree ' + settings.cls + '">';
        for (var index = 0; index < dataMenu.length; index++) {
            var fstMenu = dataMenu[index];
            fstMenu.auth = fstMenu.auth || 1;
            if (fstMenu.auth === 0) {
                continue
            }
            if (fstMenu.children) {
                var secMenus = fstMenu.children;
                inHTML += '<li class="fst" id="menu-' + settings.idTag + "-" + fstMenu.name + '-li">';
                inHTML += '<a class="fst" data-child="yes" data-name="' + fstMenu.name + '" name="' + fstMenu.name + '" href="' + settings.urlPath + secMenus[0].url + '">';
                inHTML += '<span class="icon"></span>';
                inHTML += '<span class="text">' + fstMenu.text + "</span>";
                inHTML += "</a>";
                inHTML += '<div class="menu-sec-wrap">';
                inHTML += '<ul class="sec hidden">';
                for (var jndex = 0, len = secMenus.length; jndex < len; jndex++) {
                    var secMenu = secMenus[jndex],
                        pos = (jndex == 0) ? "sec-fst" : ((jndex == len - 1) ? "sec-lst" : "");
                    secMenu.auth = secMenu.auth || 1;
                    if (secMenu.auth === 0) {
                        continue
                    }
                    inHTML += '<li class="sec ' + pos + '">';
                    inHTML += '<a class="sec" data-name="' + secMenu.name + '" name="' + secMenu.name + '" href="' + settings.urlPath + secMenu.url + '">';
                    inHTML += '<span class="icon"></span>';
                    inHTML += '<span class="text">' + secMenu.text + "</span>";
                    inHTML += "</a>";
                    inHTML += "</li>"
                }
                inHTML += "</ul>";
                inHTML += "</div>";
                inHTML += "</li>"
            } else {
                inHTML += '<li class="fst" id="menu-' + settings.idTag + "-" + fstMenu.name + '-li">';
                inHTML += '<a class="fst none-sec" data-child="no" data-name="' + fstMenu.name + '" name="' + fstMenu.name + '" href="' + settings.urlPath + fstMenu.url + '">';
                inHTML += '<span class="icon"></span>';
                inHTML += '<span class="text">' + fstMenu.text + "</span>";
                inHTML += "</a>";
                inHTML += "</li>"
            }
        }
        inHTML += "</ul>";
        container.append($(inHTML));
        container.delegate("ul.menu-tree li.fst a.fst", "click", function(e) {
            e.preventDefault();
            var me = $(this);
            name = me.attr("data-name");
            if (me.hasClass("deployed")) {
                menu.collapse(name)
            } else {
                if (me.attr("data-child") == "no") {
                    menu.goTo(name)
                } else {
                    var items = container.find("ul.menu-tree li.fst a.fst");
                    items.each(function(i, obj) {
                        var item = $(obj);
                        if (!item.hasClass("selected") || name != item.attr("data-name")) {
                            menu.collapse(item.attr("data-name"))
                        }
                    });
                    menu.open(name)
                }
                if ($.type($.su.layout.doLayout) == "function") {
                    $.su.layout.doLayout()
                }
            }
        }).delegate("ul.menu-tree li.sec a.sec", "click", function(e) {
            e.preventDefault();
            var name = $(this).attr("data-name");
            menu.goTo(name)
        });
        $(this).trigger("ev_init")
    };
    $.su.Menu.prototype.open = function(name) {
        var menuItem = null,
            container = $(this.settings.container),
            menuItem = container.find("ul.menu-tree li a[name=" + name + "]");
        if (!menuItem.length || !menuItem.hasClass("fst")) {
            return
        } else {
            menuItem.next("div.menu-sec-wrap").find("ul.sec").slideDown(150, function() {
                menuItem.addClass("deployed").closest("li.fst").addClass("deployed");
                if ($.type($.su.layout.doLayout) == "function") {
                    $.su.layout.doLayout()
                }
            })
        }
    };
    $.su.Menu.prototype.goTo = function(name) {
        var menuItem = null,
            container = $(this.settings.container),
            href = "";
        menuItem = container.find("ul.menu-tree li a[name=" + name + "]");
        if (!menuItem.length) {
            return
        }
        if (menuItem.hasClass("fst")) {
            container.find("ul.menu-tree li, ul.menu-tree li a").removeClass("selected deployed");
            menuItem.addClass("selected");
            menuItem.closest("li.fst").addClass("selected");
            var secMenuList = menuItem.closest("li.fst").find("ul.sec");
            if (secMenuList.length == 0) {
                container.find("ul.menu-tree li ul.sec").slideUp(150);
                href = menuItem.attr("href")
            } else {
                if (secMenuList.is(":hidden")) {
                    container.find("ul.menu-tree li ul.sec").slideUp(150);
                    menuItem.addClass("deployed");
                    secMenuList.slideDown(120, function() {})
                }
                secMenuList.find("li.sec, a.sec").removeClass("selected");
                secMenuList.find("li.sec:first, li.sec a.sec:first").addClass("selected");
                href = secMenuList.find("li.sec a.sec:first").attr("href")
            }
        } else {
            container.find("ul.menu-tree li, ul.menu-tree li a").removeClass("selected deployed");
            var secMenuList = menuItem.closest("ul.sec").addClass("load-tag"),
                href = menuItem.attr("href");
            var secMenuLists = container.find("ul.menu-tree li ul.sec");
            secMenuLists.each(function(i, obj) {
                var secMenu = $(obj);
                if (!secMenu.hasClass("load-tag")) {
                    secMenu.slideUp(150)
                } else {
                    secMenu.closest("li.fst").addClass("selected deployed").find("a.fst").addClass("selected deployed")
                }
            });
            secMenuList.removeClass("load-tag");
            menuItem.addClass("selected").closest("li.sec").addClass("selected");
            menuItem.parents("ul.sec").show()
        }
        $(this).trigger("ev_goto", [name, href])
    };
    $.su.Menu.prototype.collapse = function(name) {
        var menuItem = null,
            container = $(this.settings.container);
        menuItem = container.find("ul.menu-tree li a[name=" + name + "]");
        if (!menuItem.length || !menuItem.hasClass("fst")) {
            return
        } else {
            menuItem.next("div.menu-sec-wrap").find("ul.sec").slideUp(150);
            menuItem.removeClass("deployed").closest("li.fst").removeClass("deployed")
        }
    };
    $.su.Menu.filterByLanguage = function(menuList, language) {
        language = language || "en_US";
        var filter = function(menu, displayLanguage, language) {
            if (displayLanguage === void 0) {
                return true
            }
            if ($.type(displayLanguage) !== "array") {
                displayLanguage = [displayLanguage]
            }
            return $.inArray(language, displayLanguage) !== -1
        };
        var recursion = function(menuList, language) {
            var root = {};
            for (var menu in menuList) {
                if (filter(menu, menuList[menu].displayLanguage, language)) {
                    root[menu] = menuList[menu];
                    if (menuList[menu].children) {
                        root[menu].children = recursion(menuList[menu].children, language)
                    }
                }
            }
            return root
        };
        return recursion(menuList, language)
    };
    $.su.app = null;
    $.su.mask = {
        displayed: false,
        count: 0,
        height: 0,
        width: 0,
        show: function(name) {
            var _this = this;
            var isEmpty = $.isEmptyObject(_this.dom.process);
            if (isEmpty) {
                _this.dom.process[name] = true;
                _this.dom.fadeIn(200, function() {
                    $(this).css({
                        display: "block",
                        "min-width": "980px"
                    })
                })
            }
        },
        hide: function(name) {
            var _this = this;
            if (_this.dom.process[name] && delete _this.dom.process[name]) {
                var isEmpty = $.isEmptyObject(_this.dom.process);
                if (isEmpty) {
                    _this.dom.fadeOut(200, function() {
                        $(this).css("display", "none");
                        _this.displayed = false
                    })
                }
            }
        },
        init: function() {
            var dom = $("div.mask#mask");
            if (dom.length == 0) {
                dom = $('<div id="mask" class="mask"></div>');
                dom.appendTo($("body"))
            }
            var _this = this;
            _this.dom = dom;
            _this.dom.process = {};
            dom.css("display", "none");
            if (dom.is(":hidden")) {
                _this.displayed = false;
                _this.count = 0
            } else {
                _this.displayed = true;
                _this.count = 1
            }
            var changeSize = function() {
                _this.dom.css({
                    width: "100%",
                    height: "100%"
                });
                var wrapper = $("div#top-wrapper");
                var dh = wrapper.height();
                var dw = wrapper.width();
                var wh = $(window).height();
                var ww = $(window).width();
                if (dw > ww) {
                    _this.dom.css({
                        width: dw
                    })
                }
                if (dh > wh) {
                    _this.dom.css({
                        height: dh
                    })
                }
            };
            $(window).on("load resize", changeSize)
        }
    };
    $.su.loading = {
        displayed: false,
        init: function() {
            var dom = $("div.loading-container#loading-container");
            if (dom.length === 0) {
                var inHTML = '<div class="loading-container" id="loading-container">';
                inHTML += '<div class="loading-container-wrap">';
                inHTML += '<div class="loading-container-inner">';
                inHTML += '<div class="loading-waiting-icon">';
                inHTML += "</div>";
                inHTML += "</div>";
                inHTML += "</div>";
                inHTML += "</div>";
                dom = $(inHTML).appendTo($("body"))
            }
            var _this = this;
            _this.dom = dom;
            _this.dom.process = {};
            dom.css("display", "none");
            if (dom.is(":hidden")) {
                _this.displayed = false
            } else {
                _this.displayed = true
            }
        },
        show: function(name) {
            var _this = this;
            var isEmpty = $.isEmptyObject(_this.dom.process);
            if (isEmpty) {
                _this.dom.process[name] = true;
                $.su.mask.show("loading");
                _this.dom.fadeIn(200, function() {
                    $(this).css("display", "block")
                })
            }
        },
        hide: function(name) {
            var _this = this;
            if (_this.dom.process[name] && delete _this.dom.process[name]) {
                var isEmpty = $.isEmptyObject(_this.dom.process);
                if (isEmpty) {
                    $.su.mask.hide("loading");
                    _this.dom.fadeOut(200, function() {
                        $(this).css("display", "none")
                    })
                }
            }
        }
    };
    $.su.mask.init();
    $.su.loading.init();
    $.su.addEventListener = function(obj, name, func, capture) {
        if (!obj) {
            return
        }
        if (obj.addEventListener) {
            obj.addEventListener(name, function(ev) {
                func.call(obj, ev || window.event)
            }, capture)
        } else {
            obj.attachEvent("on" + name, function(ev) {
                func.call(obj, ev || window.event)
            })
        }
        return func
    };
    $.su.mouse = {
        mousescroll: function(handler) {
            var obj = this.get(0);
            if (!obj || !handler) {
                return
            }
            var wheelType = "mousewheel";
            try {
                document.createEvent("MouseScrollEvents");
                wheelType = "DOMMouseScroll"
            } catch (e) {}
            $.su.addEventListener(obj, wheelType, function(e) {
                if ("detail" in e) {
                    e.wheelDelta = e.detail * (-40)
                }
                handler.call(obj, e)
            })
        },
        draggable: function(options) {
            var me = this;
            var defaults = {
                zIndex: 99,
                opacity: 0.7,
                handle: null,
                containment: "parent",
                axis: false,
                distance: 1,
                drag: null,
                start: null,
                stop: null
            };
            var dd = {
                _init: function() {
                    this._start()
                },
                _setContainment: function() {
                    switch (this.containment) {
                        case "window":
                            this.containment = [$(window).scrollLeft() - this.position.relative.left - this.offset.parent.left, $(window).scrollTop() - this.position.relative.top - this.offset.top, $(window).scrollLeft() + $(window).width() - this.margins.left, $(window).scrollTop() + ($(window).height() || document.body.parentNode.scrollHeight) - this.margins.top];
                            break;
                        case "document":
                            this.containment = [0, 0, $(document).width() - this.margins.left, ($(document).height() || document.body.parentNode.scrollHeight) - this.margins.top];
                            break;
                        case "parent":
                            break
                    }
                },
                _cacheMargins: function() {},
                _destroy: function() {},
                _capture: function() {},
                _start: function() {
                    this._cacheMargins()
                },
                _drag: function() {},
                _stop: function() {},
                _cancel: function() {}
            };
            me.each(function(i, obj) {
                $.extend(dd, defaults, options);
                dd.element = obj;
                obj.dragdrop = dd;
                obj.dragdrop._init()
            });
            return me
        }
    };
    $.su.keybord = {};
    $.extend($.fn, $.su.mouse, $.su.keybord);
    $.su.Help = function(options) {
        var defaults = {
            container: "",
            content: "",
            create: function() {
                var inHTML = "";
                inHTML += '<div class="help-container-wrap">';
                inHTML += '<div class="help-btn-container">';
                inHTML += '<a class="btn-help" href="javascript:void(0);">';
                inHTML += "</a>";
                inHTML += "</div>";
                inHTML += '<div class="help-content-container"><span class="help-content-delta"></span>';
                inHTML += '<span class="help-feed-back">' + $.su.CHAR.FEEDBACK.TITLE + "</span>";
                inHTML += '<div class="position-top-left"></div><div class="position-top-center"></div><div class="position-top-right"></div>';
                inHTML += '<div class="position-center-left"><div class="position-center-right">';
                inHTML += '<div class="help-content-wrap">';
                inHTML += '<div class="help-content-container-wrap">';
                inHTML += '<div class="help-content"></div>';
                inHTML += "</div>";
                inHTML += "</div>";
                inHTML += "</div></div>";
                inHTML += '<div class="position-bottom-left"></div><div class="position-bottom-center"></div><div class="position-bottom-right"></div>';
                inHTML += "</div>";
                inHTML += "</div>";
                var container = $(this.container);
                container.addClass("help-container").append($(inHTML));
                return inHTML
            },
            layout: function() {
                var wh = $(window).height();
                var help = this,
                    wrap = help.wrap;
                wrap.css({
                    "max-height": wh - 260
                })
            }
        };
        var settings = $.extend({}, defaults, options);
        this.settings = settings;
        this.init()
    };
    $.su.Help.prototype.init = function() {
        var help = this;
        if (!help.settings) {
            return null
        }
        help.settings.create();
        var container = $(help.settings.container),
            contentContainer = container.find("div.help-content-container"),
            wrap = container.find("div.help-content-container-wrap"),
            content = container.find("div.help-content"),
            button = container.find("a.btn-help");
        help.container = container;
        help.wrap = wrap;
        help.content = content;
        help.contentContainer = contentContainer;
        help.button = button;
        button.on("click", function(e) {
            e.preventDefault();
            e.stopPropagation();
            var btn = $(this);
            if (help.show) {
                help.close()
            } else {
                if (!help.loaded) {
                    help.load()
                }
                help.open()
            }
        });
        container.find(".help-feed-back").click(function(e) {
            $(this).parent().hide();
            $.su.loading.show();
            var urlfeed = "./pages/userrpm/userFeedBack.1593336984117.html";
            $("#feed-back-form").load(urlfeed, {}, function(response, status, xhr) {
                $.su.loading.hide();
                $.su.layout.doLayout();
                $("#feed-back-container").msg("show")
            })
        });
        help.content.delegate("div.name-container h5.title.main-title", "click", function() {
            var title = $(this);
            var content = title.next("span.connector").next("div.content-wrap");
            if (title.hasClass("opened")) {
                content.slideUp(200, function() {
                    title.removeClass("opened")
                })
            } else {
                title.addClass("opened");
                content.slideDown(200)
            }
        });
        $("div.help-content-container-wrap").niceScroll("div.help-content", {
            cursorcolor: "#a4e5ea",
            cursoropacitymax: 1,
            touchbehavior: false,
            cursorwidth: "7px",
            cursorborder: "1px",
            cursorborderradius: "17px",
            enablescrollonselection: false
        })
    };
    $.su.Help.prototype.load = function(name) {
        var help = this;
        if (help.loaded == true) {
            return
        }
        var name = name || this.settings.content;
        if (!$.isArray(name)) {
            name = [name]
        }
        var render = function(obj) {
            var contentRender = function(obj, subFlag) {
                var inHTML = "";
                var sub = subFlag ? "sub-container" : "main-container";
                for (var index = 0, len = obj.length; index < len; index++) {
                    var o = obj[index];
                    switch (o.type) {
                        case "paragraph":
                            if (o.id) {
                                inHTML += '<div id="' + o.id + '" class="paragraph-container ' + sub + '">'
                            } else {
                                inHTML += '<div class="paragraph-container ' + sub + '">'
                            }
                            if (o.title) {
                                inHTML += '<h5 class="title">' + o.title + "</h5>"
                            }
                            inHTML += '<div class="paragraph-content-container">';
                            if ($.type(o.content) == "array") {
                                inHTML += '<p class="paragraph">' + o.content.join("<br/>") + "</p>"
                            } else {
                                inHTML += '<p class="paragraph">' + o.content + "</p>"
                            }
                            break;
                        case "title":
                            if (o.id) {
                                inHTML += '<div id="' + o.id + '" class="title-container ' + sub + '">'
                            } else {
                                inHTML += '<div class="title-container ' + sub + '">'
                            }
                            inHTML += '<h5 class="title">' + o.title + "</h5>";
                            inHTML += '<div class="content-wrap">';
                            if (o.content) {
                                if ($.type(o.content) == "array") {
                                    inHTML += "<p>" + o.content.join("<br/>") + "</p>"
                                } else {
                                    inHTML += "<p>" + o.content + "</p>"
                                }
                            }
                            break;
                        case "name":
                            if (o.id) {
                                inHTML += '<div id="' + o.id + '" class="name-container ' + sub + '">'
                            } else {
                                inHTML += '<div class="name-container ' + sub + '">'
                            }
                            inHTML += '<h5 class="title ' + (subFlag ? "" : "main-title") + '">';
                            inHTML += "<span>" + o.title + "</span>";
                            inHTML += '<span class="arrow"></span>';
                            inHTML += "</h5>";
                            inHTML += '<span class="connector">' + (o.connector || " - ") + "</span>";
                            inHTML += '<div class="content-wrap">';
                            if (o.content) {
                                if ($.type(o.content) == "array") {
                                    inHTML += "<p>" + o.content.join("<br/>") + "</p>"
                                } else {
                                    inHTML += "<p>" + o.content + "</p>"
                                }
                            }
                            break;
                        case "note":
                            if (o.id) {
                                inHTML += '<div id="' + o.id + '" class="note-container ' + sub + '">'
                            } else {
                                inHTML += '<div class="note-container ' + sub + '">'
                            }
                            inHTML += '<h5 class="title">' + o.title + (o.connector || ":") + "</h5>";
                            inHTML += '<div class="content-wrap-note">';
                            inHTML += '<ol class="note">';
                            if ($.type(o.content) != "array") {
                                o.content = [o.content]
                            }
                            for (var jndex = 0, lenj = o.content.length; jndex < lenj; jndex++) {
                                inHTML += "<li>" + o.content[jndex] + "</li>"
                            }
                            inHTML += "</ol>";
                            break;
                        case "step":
                            if (o.id) {
                                inHTML += '<div id="' + o.id + '" class="step-container ' + sub + '">'
                            } else {
                                inHTML += '<div class="step-container ' + sub + '">'
                            }
                            if (o.title) {
                                inHTML += '<h5 class="title">' + o.title + (o.connector || "") + "</h5>"
                            }
                            inHTML += '<div class="content-wrap-step">';
                            inHTML += '<ol class="step">';
                            if ($.type(o.content) != "array") {
                                o.content = [o.content]
                            }
                            for (var jndex = 0, lenj = o.content.length; jndex < lenj; jndex++) {
                                var c = o.content[jndex];
                                if ($.type(c) == "string") {
                                    inHTML += "<li>" + c + "</li>"
                                } else {
                                    inHTML += "<li>";
                                    inHTML += "<p>" + c.content + "</p>";
                                    if (c.children) {
                                        inHTML += contentRender(c.children, true)
                                    }
                                    inHTML += "</li>"
                                }
                            }
                            inHTML += "</ol>";
                            break;
                        default:
                    }
                    if (o.children) {
                        inHTML += contentRender(o.children, true)
                    }
                    inHTML += "</div>";
                    inHTML += "</div>"
                }
                return inHTML
            };
            var inHTML = "";
            if (obj.TITLE) {
                if (obj.id) {
                    inHTML += '<h4 class="title" id="' + obj.id + '">' + obj.TITLE + "</h4>"
                } else {
                    inHTML += '<h4 class="title">' + obj.TITLE + "</h4>"
                }
            }
            if ($.type(obj.CONTENT) == "array") {
                inHTML += contentRender(obj.CONTENT, false)
            }
            return inHTML
        };
        for (var index = 0, len = name.length; index < len; index++) {
            var contentObj = $.su.CHAR.HELP[name[index]];
            var htmlStr = render(contentObj);
            this.content.append($(htmlStr))
        }
        if (this.settings.afterLoad) {
            this.settings.afterLoad()
        }
        help.loaded = true
    };
    $.su.Help.prototype.open = function() {
        var help = this;
        help.settings.layout.call(this);
        help.contentContainer.slideDown(150, function() {
            $(this).css("display", "block");
            help.show = true
        });
        help.contentContainer.on("click", function(e) {
            e.stopPropagation()
        });
        var btn = help.button;
        btn.addClass("clicked");
        $("html").one("click", function() {
            help.close()
        })
    };
    $.su.Help.prototype.close = function() {
        var help = this;
        help.contentContainer.fadeOutSU(150, function() {
            $(this).css("display", "none");
            help.show = false
        });
        var btn = help.button;
        btn.removeClass("clicked")
    };
    $.su.layout = {
        doLayout: function() {}
    };
    $.su.unicode = {
        encode: function(str) {
            var a = [];
            for (var i = 0; i < str.length; i++) {
                var code = str.charCodeAt(i);
                code = ((code.toString(16).length) % 2) == 0 ? code.toString(16) : "0" + code.toString(16);
                a[i] = code
            }
            return "&#" + a.join(";&#") + ";"
        },
        decode: function(str) {
            return str.replace(/&#(x)?([^&]{1,6});?/g, function(a, b, c) {
                return parseInt("0x" + String, 16).fromCharCode(parseInt(c, b ? 16 : 10))
            })
        },
        encodeNoPrefix: function(str) {
            var unicode = this.encode(str);
            return unicode.replace(/[&#;]/g, "").toString()
        },
        getUnicodeLength: function(str) {
            var unicode = this.encode(str);
            unicode = unicode.replace(/[&#;]/g, "");
            return Math.ceil(unicode.length / 2)
        },
        getUtf8Length: function(str) {
            var unicode = this.encode(str);
            var len = 0;
            unicode.replace(/&#(x)?([^&]{1,6});?/g, function(code) {
                var utf8Code = code.replace(/\&\#/g, "0x").replace(/\;/g, "").toString();
                if (0 <= utf8Code && utf8Code <= 127) {
                    len = len + 1
                } else {
                    if (128 <= utf8Code && utf8Code <= 2047) {
                        len = len + 2
                    } else {
                        if (2048 <= utf8Code && utf8Code <= 65535) {
                            len = len + 3
                        } else {
                            if (65536 <= utf8Code && utf8Code <= 2097151) {
                                len = len + 4
                            } else {
                                if (2097152 <= utf8Code && utf8Code <= 67108863) {
                                    len = len + 5
                                } else {
                                    if (67108864 <= utf8Code && utf8Code <= 2147483647) {
                                        len = len + 6
                                    }
                                }
                            }
                        }
                    }
                }
            });
            return len
        },
        checkUtf8Length: function(str, minLength, maxLength) {
            var minLength = minLength || 0,
                maxLength = maxLength || "";
            var len = $.su.unicode.getUtf8Length(str);
            if (len < minLength) {
                return false
            }
            if (maxLength !== "") {
                if (maxLength < len) {
                    return false
                }
            }
            return true
        },
        checkUnicodeLength: function(str, minLength, maxLength) {
            var minLength = minLength * 2 || 0,
                maxLength = maxLength * 2 || "";
            var pattern = "^.{%minLength%,%maxLength%}$";
            pattern = pattern.replace("%minLength%", minLength).replace("%maxLength%", maxLength);
            pattern = new RegExp(pattern);
            return pattern.test(this.encodeNoPrefix(str))
        }
    };
    $.su.loadComboData = function(url, para, arr, type) {
        var proxy = new $.su.Proxy({
            url: url,
            type: type,
            async: false,
            autoLoad: false
        });
        var parseData = function(source, arr) {
            var retArr = [];
            if (!$.isArray(arr)) {
                return retArr
            }
            $(source).each(function(index, element) {
                var tempObj = {};
                var len = arr.length;
                for (var i = 0; i < len; i++) {
                    if (arr[i]) {
                        if (arr[i].func) {
                            tempObj[arr[i].dstKey] = arr[i].func(element[arr[i].srcKey], arr[i].para)
                        } else {
                            tempObj[arr[i].dstKey] = element[arr[i].srcKey]
                        }
                    }
                }
                retArr.push(tempObj)
            });
            return retArr
        };
        var res = {};
        proxy.read(para, function(result, others, status, xhr) {
            res = parseData(result, arr)
        }, function() {}, function() {});
        return res
    };
    if (typeof JSON !== "object") {
        JSON = {}
    }
    $.su.cloudErrorCode = $.su.cloudErrorCode || ["E10000", "E20000", "E20002", "E20003", "E20104", "E20105", "E20107", "E20200", "E20502", "E3002", "E20503", "E20506", "E20507", "E20508", "E20509", "E20571", "E20580", "E20600", "E20601", "E20602", "E20603", "E20604", "E20606", "E20615", "E20616", "E20617", "E20618", "E20620", "E20621", "E20623", "E20651", "E20661", "E20662", "E20671", "E20672", "E20673", "E20674", "E20675", "E22000", "E22001", "E22003", "E22004", "E22006", "E22007", "E25001", "E22008", "E22010", "E50101", "E50102", "E50103", "E50111", "E50112", "E50121", "E50122", "E50131", "E50132", "E50140", "E51215", "E1000", "E5000", "E5001", "E5002"];
    (function() {
        function f(n) {
            return n < 10 ? "0" + n : n
        }
        if (typeof Date.prototype.toJSON !== "function") {
            Date.prototype.toJSON = function(key) {
                return isFinite(this.valueOf()) ? this.getUTCFullYear() + "-" + f(this.getUTCMonth() + 1) + "-" + f(this.getUTCDate()) + "T" + f(this.getUTCHours()) + ":" + f(this.getUTCMinutes()) + ":" + f(this.getUTCSeconds()) + "Z" : null
            };
            String.prototype.toJSON = Number.prototype.toJSON = Boolean.prototype.toJSON = function(key) {
                return this.valueOf()
            }
        }
        var cx = /[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
            escapable = /[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
            gap, indent, meta = {
                "\b": "\\b",
                "\t": "\\t",
                "\n": "\\n",
                "\f": "\\f",
                "\r": "\\r",
                '"': '\\"',
                "\\": "\\\\"
            },
            rep;

        function quote(string) {
            escapable.lastIndex = 0;
            return escapable.test(string) ? '"' + string.replace(escapable, function(a) {
                var c = meta[a];
                return typeof c === "string" ? c : "\\u" + ("0000" + a.charCodeAt(0).toString(16)).slice(-4)
            }) + '"' : '"' + string + '"'
        }

        function str(key, holder) {
            var i, k, v, length, mind = gap,
                partial, value = holder[key];
            if (value && typeof value === "object" && typeof value.toJSON === "function") {
                value = value.toJSON(key)
            }
            if (typeof rep === "function") {
                value = rep.call(holder, key, value)
            }
            switch (typeof value) {
                case "string":
                    return quote(value);
                case "number":
                    return isFinite(value) ? String(value) : "null";
                case "boolean":
                case "null":
                    return String(value);
                case "object":
                    if (!value) {
                        return "null"
                    }
                    gap += indent;
                    partial = [];
                    if (Object.prototype.toString.apply(value) === "[object Array]") {
                        length = value.length;
                        for (i = 0; i < length; i += 1) {
                            partial[i] = str(i, value) || "null"
                        }
                        v = partial.length === 0 ? "[]" : gap ? "[\n" + gap + partial.join(",\n" + gap) + "\n" + mind + "]" : "[" + partial.join(",") + "]";
                        gap = mind;
                        return v
                    }
                    if (rep && typeof rep === "object") {
                        length = rep.length;
                        for (i = 0; i < length; i += 1) {
                            k = rep[i];
                            if (typeof k === "string") {
                                v = str(k, value);
                                if (v) {
                                    partial.push(quote(k) + (gap ? ": " : ":") + v)
                                }
                            }
                        }
                    } else {
                        for (k in value) {
                            if (Object.prototype.hasOwnProperty.call(value, k)) {
                                v = str(k, value);
                                if (v) {
                                    partial.push(quote(k) + (gap ? ": " : ":") + v)
                                }
                            }
                        }
                    }
                    v = partial.length === 0 ? "{}" : gap ? "{\n" + gap + partial.join(",\n" + gap) + "\n" + mind + "}" : "{" + partial.join(",") + "}";
                    gap = mind;
                    return v
            }
        }
        if (typeof JSON.stringify !== "function") {
            JSON.stringify = function(value, replacer, space) {
                var i;
                gap = "";
                indent = "";
                if (typeof space === "number") {
                    for (i = 0; i < space; i += 1) {
                        indent += " "
                    }
                } else {
                    if (typeof space === "string") {
                        indent = space
                    }
                }
                rep = replacer;
                if (replacer && typeof replacer !== "function" && (typeof replacer !== "object" || typeof replacer.length !== "number")) {
                    throw new Error("JSON.stringify")
                }
                return str("", {
                    "": value
                })
            }
        }
        if (typeof JSON.parse !== "function") {
            JSON.parse = function(text, reviver) {
                var j;

                function walk(holder, key) {
                    var k, v, value = holder[key];
                    if (value && typeof value === "object") {
                        for (k in value) {
                            if (Object.prototype.hasOwnProperty.call(value, k)) {
                                v = walk(value, k);
                                if (v !== undefined) {
                                    value[k] = v
                                } else {
                                    delete value[k]
                                }
                            }
                        }
                    }
                    return reviver.call(holder, key, value)
                }
                text = String(text);
                cx.lastIndex = 0;
                if (cx.test(text)) {
                    text = text.replace(cx, function(a) {
                        return "\\u" + ("0000" + a.charCodeAt(0).toString(16)).slice(-4)
                    })
                }
                if (/^[\],:{}\s]*$/.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, "@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, "]").replace(/(?:^|:|,)(?:\s*\[)+/g, ""))) {
                    j = eval("(" + text + ")");
                    return typeof reviver === "function" ? walk({
                        "": j
                    }, "") : j
                }
                throw new SyntaxError("JSON.parse")
            }
        }
        $.su.json = {};
        $.su.json.toJSONString = function(str, filter) {
            return JSON.stringify(str, filter)
        };
        $.su.json.parseJSON = function(str, filter) {
            return JSON.parse(str, filter)
        }
    }())
})(jQuery);