var ChangeReturnPoint = [];
var LoginErrorState = 0;
function LoginError(responseText) {
    switch (responseText) {
        case '"登录已超时,请重新登录！"':
            if (LoginErrorState == 0) {
                window.top.location.href = "../../Default.aspx";
                LoginErrorState = 1;
            }
            break;
        case '"登录超时！"':
            window.top.location.href = "../../Default.aspx";
            break;
        case '"该用户已在别处登录,你被迫下线！"':
            window.top.location.href = "../../Default.aspx";
            break;
        case '"数据库中无此登录信息！"':
            window.top.location.href = "../../Default.aspx";
            break;
    }
}

//XGIS转百度 ( bd09转gcj02)
function XgisToBaidu(lat, lng) {
    ChangeReturnPoint = [];
    $.ajax('Handler/Project_Handler.ashx', {
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "XgisToBaidu",
            lat: lat,
            lng: lng
        },
        success: function (data) {
            ChangeReturnPoint = data;
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });
}

//百度转XGIS   (gcj02转bd09)
function BaiduToXgis(lat, lng) {
    $.ajax('Handler/Project_Handler.ashx', {
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "BaiduToXgis",
            lat: lat,
            lng: lng
        },
        success: function (data) {
            ChangeReturnPoint = data;
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });
}


function GetQueryString(sProp) {
    var re = new RegExp("[&,?]" + sProp + "=([^//&]*)", "i");
    var a = re.exec(document.location.search);
    if (a == null)
        return "";
    return a[1];
}



Date.prototype.pattern = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1,
        "d+": this.getDate(),
        "h+": this.getHours() % 12 == 0 ? 12 : this.getHours() % 12,
        "H+": this.getHours(),
        "m+": this.getMinutes(),
        "s+": this.getSeconds(),
        "q+": Math.floor((this.getMonth() + 3) / 3),
        "S": this.getMilliseconds()
    };
    var week = {
        "0": "\u65e5",
        "1": "\u4e00",
        "2": "\u4e8c",
        "3": "\u4e09",
        "4": "\u56db",
        "5": "\u4e94",
        "6": "\u516d"
    };
    if (/(y+)/.test(fmt)) {
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    if (/(E+)/.test(fmt)) {
        fmt = fmt.replace(RegExp.$1, ((RegExp.$1.length > 1) ? (RegExp.$1.length > 2 ?
            "\u661f\u671f" : "\u5468") : "") + week[this.getDay() + ""]);
    }
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        }
    }
    return fmt;
}


function Base64() {
    _keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

    // public method for encoding
    this.encode = function (input) {
        var output = "";
        var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
        var i = 0;
        input = _utf8_encode(input);
        while (i < input.length) {
            chr1 = input.charCodeAt(i++);
            chr2 = input.charCodeAt(i++);
            chr3 = input.charCodeAt(i++);
            enc1 = chr1 >> 2;
            enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
            enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
            enc4 = chr3 & 63;
            if (isNaN(chr2)) {
                enc3 = enc4 = 64;
            } else if (isNaN(chr3)) {
                enc4 = 64;
            }
            output = output +
            _keyStr.charAt(enc1) + _keyStr.charAt(enc2) +
            _keyStr.charAt(enc3) + _keyStr.charAt(enc4);
        }
        return output;
    }

    // public method for decoding
    this.decode = function (input) {
        var output = "";
        var chr1, chr2, chr3;
        var enc1, enc2, enc3, enc4;
        var i = 0;
        input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
        while (i < input.length) {
            enc1 = _keyStr.indexOf(input.charAt(i++));
            enc2 = _keyStr.indexOf(input.charAt(i++));
            enc3 = _keyStr.indexOf(input.charAt(i++));
            enc4 = _keyStr.indexOf(input.charAt(i++));
            chr1 = (enc1 << 2) | (enc2 >> 4);
            chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
            chr3 = ((enc3 & 3) << 6) | enc4;
            output = output + String.fromCharCode(chr1);
            if (enc3 != 64) {
                output = output + String.fromCharCode(chr2);
            }
            if (enc4 != 64) {
                output = output + String.fromCharCode(chr3);
            }
        }
        output = _utf8_decode(output);
        return output;
    }

    // private method for UTF-8 encoding
    _utf8_encode = function (string) {
        string = string.replace(/\r\n/g, "\n");
        var utftext = "";
        for (var n = 0; n < string.length; n++) {
            var c = string.charCodeAt(n);
            if (c < 128) {
                utftext += String.fromCharCode(c);
            } else if ((c > 127) && (c < 2048)) {
                utftext += String.fromCharCode((c >> 6) | 192);
                utftext += String.fromCharCode((c & 63) | 128);
            } else {
                utftext += String.fromCharCode((c >> 12) | 224);
                utftext += String.fromCharCode(((c >> 6) & 63) | 128);
                utftext += String.fromCharCode((c & 63) | 128);
            }

        }
        return utftext;
    }

    // private method for UTF-8 decoding
    _utf8_decode = function (utftext) {
        var string = "";
        var i = 0;
        var c = c1 = c2 = 0;
        while (i < utftext.length) {
            c = utftext.charCodeAt(i);
            if (c < 128) {
                string += String.fromCharCode(c);
                i++;
            } else if ((c > 191) && (c < 224)) {
                c2 = utftext.charCodeAt(i + 1);
                string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
                i += 2;
            } else {
                c2 = utftext.charCodeAt(i + 1);
                c3 = utftext.charCodeAt(i + 2);
                string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
                i += 3;
            }
        }
        return string;
    }
}

//判断字符串str1 内是否包含字符串str2
function stringIsIn(str1, str2) {
    var sear = new RegExp(str2);
    if (sear.test(str1)) {
        return true
    }
    else {
        return false
    }
}
function GetPercent(num, total) {
    num = parseFloat(num);
    total = parseFloat(total);
    if (isNaN(num) || isNaN(total)) {
        return "-";
    }
    return total <= 0 ? "0%" : (Math.round(num / total * 10000) / 100.00 + "%");
}

// 对Date的扩展，将 Date 转化为指定格式的String
// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符， 
// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
// 例子： 
// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18 
Date.prototype.Format = function (fmt) { //author: meizz 
    var o = {
        "M+": this.getMonth() + 1, //月份 
        "d+": this.getDate(), //日 
        "H+": this.getHours(), //小时 
        "m+": this.getMinutes(), //分 
        "s+": this.getSeconds(), //秒 
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
        "S": this.getMilliseconds() //毫秒 
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}


//日期转为毫秒 convertDate 格式 2016/07/01 00:00:00 or 2016-07-01 00:00:00
function DateToMillisecond(convertStr) {
    var convertStr = convertStr.replace(new RegExp("-", "gm"), "/");
    return (new Date(convertStr)).getTime();
}

//毫秒数转为日期字符串 
function MillisecondToDate(convertStr) {
    var newTime = new Date(convertStr);
    return newTime.Format("yyyy-MM-dd HH:mm:ss");
}


//获取当前时间 包括年月日 时分秒
function getNowFormatDate() {
    var day = new Date();
    var Year = 0;
    var Month = 0;
    var Day = 0;
    var Hour = 0;
    var Minute = 0;
    var Second = 0;
    var CurrentDate = "";
    //初始化时间
    Year = day.getFullYear();
    Month = day.getMonth() + 1;
    Day = day.getDate();
    Hour = day.getHours();
    Minute = day.getMinutes();
    Second = day.getSeconds();
    CurrentDate = CurrentDate + Year + "-";
    if (Month >= 10) {
        CurrentDate = CurrentDate + Month + "-";
    }
    else {
        CurrentDate = CurrentDate + "0" + Month + "-";
    }
    if (Day >= 10) {
        CurrentDate = CurrentDate + Day;
    }
    else {
        CurrentDate = CurrentDate + "0" + Day;
    }

    if (Hour >= 10) {
        CurrentDate += " " + Hour;
    }
    else {
        CurrentDate += " 0" + Hour;
    }
    if (Minute >= 10) {
        CurrentDate = CurrentDate + ":" + Minute;
    }
    else {
        CurrentDate = CurrentDate + ":0" + Minute;
    }
    if (Second >= 10) {
        CurrentDate = CurrentDate + ":" + Second;
    }
    else {
        CurrentDate = CurrentDate + ":0" + Second;
    }

    return CurrentDate;
}


//获取当天开始时间 包括年月日 时分秒
function getTodayFormatDate() {
    var day = new Date();
    var Year = 0;
    var Month = 0;
    var Day = 0;
    var Hour = 0;
    var Minute = 0;
    var Second = 0;
    var CurrentDate = "";
    //初始化时间
    Year = day.getFullYear();
    Month = day.getMonth() + 1;
    Day = day.getDate();
    Hour = day.getHours();
    Minute = day.getMinutes();
    Second = day.getSeconds();
    CurrentDate = CurrentDate + Year + "-";
    if (Month >= 10) {
        CurrentDate = CurrentDate + Month + "-";
    }
    else {
        CurrentDate = CurrentDate + "0" + Month + "-";
    }
    if (Day >= 10) {
        CurrentDate = CurrentDate + Day;
    }
    else {
        CurrentDate = CurrentDate + "0" + Day;
    }

    CurrentDate += " 00";
    CurrentDate = CurrentDate + ":00";
    CurrentDate = CurrentDate + ":00";

    return CurrentDate;
}


