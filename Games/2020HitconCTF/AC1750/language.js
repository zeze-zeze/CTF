(function($) {

    $.su = $.su || {};
    $.su.CHAR = $.su.CHAR || {};
    $.su.CHAR.LANGUAGE = {
        BG_BG: "Български",
        CS_CZ: "Čeština",
        DA_DK: "Dansk",
        DE_DE: "Deutsch",
        EN_US: "English",
        ES_ES: "Español",
        ES_MX: "Español(México)",
        FI_FI: "Suomi",
        FR_FR: "Français",
        HU_HU: "Magyarország",
        IT_IT: "Italiano",
        JP_JP: "日本語",
        KO_KR: "한국어",
        NL_NL: "Nederlands",
        NO_NO: "Norsk",
        PL_PL: "Polski",
        PT_BR: "Português(Brasil)",
        PT_PT: "Português",
        RO_RO: "Română",
        RU_RU: "Русский",
        SK_SK: "Slovenština",
        SV_SE: "Svenska",
        TH_TH: "ภาษาไทย",
        TR_TR: "Türkçe",
        UK_UA: "Українська",
        VI_VN: "Tiếng Việt",
        ZH_CN: "简体中文",
        ZH_TW: "繁體中文"
    };
    $.su.CHAR.SUPPORT = {
        BG_BG: "http://www.tp-link.bg/Support/",
        CS_CZ: "http://www.tp-link.com/cz/Support/",
        DA_DK: "http://www.tp-link.com/dk/Support/",
        DE_DE: "http://www.tp-link.com.de/Support",
        EN_US: "http://www.tp-link.com/en/Support/",
        ES_ES: "http://www.tp-link.com/es/Support/",
        ES_MX: "http://www.tp-link.com.mx/Support/",
        FI_FI: "http://www.tp-link.com/fi/Support/",
        FR_FR: "http://www.tp-link.com/fr/Support/",
        HU_HU: "http://www.tp-link.com/hu/Support/",
        IT_IT: "http://www.tp-link.com/it/Support/",
        JP_JP: "http://www.tp-link.com/jp/Support/",
        KO_KR: "http://www.tp-link.com/kr/Support/",
        NL_NL: "http://www.tp-link.com/nl/Support/",
        NO_NO: "http://www.tp-link.com/no/Support/",
        PL_PL: "http://www.tp-link.com/pl/Support/",
        PT_BR: "http://www.tp-link.com.br/Support/",
        PT_PT: "http://www.tp-link.com/pt/Support/",
        RO_RO: "http://www.tp-link.com/ro/Support/",
        RU_RU: "http://www.tp-link.com/ru/Support/",
        SK_SK: "http://www.tp-link.sk/Support/",
        SV_SE: "http://www.tp-link.com/se/Support/",
        TH_TH: "http://www.tp-link.com/th/Support/",
        TR_TR: "http://www.tp-link.com/tr/Support/",
        UK_UA: "http://www.tp-link.com/uk/Support/",
        VI_VN: "http://www.tp-link.com/vn/Support/",
        ZH_CN: "http://www.tp-link.com/ch/Support/",
        ZH_TW: "http://www.tp-link.com/tw/Support/"
    }

    //must define __version as a global var, otherwise it will be uglified with mangle options
    __version = "1593336984117";
    if (location.href.indexOf(__version) == -1 && location.href.indexOf("login.html") != -1) {
        location.href = 'login.html?t=1593336984117';
    }

})(jQuery);