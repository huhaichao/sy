//对外呼出获取电话列表
function CallOut_GetPhoneBook() {
    $.ajax('/Handler/Admin/PhoneBook_Handler.ashx', {
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "GetList",
            "KeyWord": $("#txtKeyWord_phonebook").val()
        },
        success: function (data) {
            CallOut_LoadPage(data);
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });
}

// 对外呼出加载页面
function CallOut_LoadPage(data) {
    // 整理分页信息
    $("#tbCreate").empty();
    var list = data;
    // 载入当前页
    for (var i = 0; i < list.length; i++) {
        $("<tr onmouseover=\"this.style.backgroundColor='#f0f9fd'\"  onmouseout =\"this.style.backgroundColor='White'\">")
            .data("Phone", list[i]["Phone"]).css('cursor', 'pointer')
              .click(function () {
                  $("#txtKeyWord_phonebook").val($(this).data("Phone"));
              })
            .append($("<td style=\"width:55px;\">").html((i + 1)))
            .append($("<td style=\"width:160px;\">").html(list[i]["Name"]))
            .append($("<td>").html(list[i]["Phone"]))
            .appendTo($("#tbCreate"));
    }
}

//转外线 获取电话列表
function TurnOut_GetPhoneBook() {
    $.ajax('/Handler/Admin/PhoneBook_Handler.ashx', {
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "GetList",
            "KeyWord": $("#txt_TurnOut").val()
        },
        success: function (data) {
            TurnOut_LoadPage(data);
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });
}

//转外线 加载页面
function TurnOut_LoadPage(data) {
    // 整理分页信息
    $("#tbCreate").empty();
    var list = data;
    // 载入当前页
    for (var i = 0; i < list.length; i++) {
        $("<tr onmouseover=\"this.style.backgroundColor='#f0f9fd'\"  onmouseout =\"this.style.backgroundColor='White'\">")
            .data("Phone", list[i]["Phone"]).css('cursor', 'pointer')
              .click(function () {
                  $("#txt_TurnOut").val($(this).data("Phone"));
              })
            .append($("<td style=\"width:55px;\">").html((i + 1)))
            .append($("<td style=\"width:160px;\">").html(list[i]["Name"]))
            .append($("<td>").html(list[i]["Phone"]))
            .appendTo($("#tb_TurnOut"));
    }
}

//对内呼出中 获取所有的坐席列表
function CallInner_GetSeatsList() {
    $.ajax('/Handler/Admin/Seats_Handler.ashx', {
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "GetList",
            "KeyWord": $("#txtKeyWord_seat").val()
        },
        success: function (data) {
            CallInner_LoadPage(data);
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });
}

// 对内呼出中加载页面
function CallInner_LoadPage(data) {
    // 整理分页信息
    $("#tbSeat").empty();
    var list = data;
    // 载入当前页
    for (var i = 0; i < list.length; i++) {
        $("<tr onmouseover=\"this.style.backgroundColor='#f0f9fd'\"  onmouseout =\"this.style.backgroundColor='White'\">")
          .data("WorkNo", list[i]["WorkNo"]).css('cursor', 'pointer')
            .click(function () {
                $("#txtKeyWord_seat").val($(this).data("WorkNo"));
            })
          .append($("<td style=\"width:70px;\">").html(list[i]["WorkNo"]))
          .append($("<td style=\"width:100px;\">").html(list[i]["UserModel"]["Name"]))
          .append($("<td>").html(list[i]["UserModel"]["PhoneNum"]))
          .appendTo($("#tbSeat"));
    }
}

//转坐席 获取所有坐席列表
function Seat_GetSeatList() {
    $.ajax('/Handler/Admin/Seats_Handler.ashx', {
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "GetList",
            "KeyWord": $("#txt_Seat").val()
        },
        success: function (data) {
            Seat_LoadPage(data);
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });
}

//转坐席 加载页面
function Seat_LoadPage(data) {
    // 整理分页信息
    $("#tbSeat").empty();
    var list = data;
    // 载入当前页
    for (var i = 0; i < list.length; i++) {
        $("<tr onmouseover=\"this.style.backgroundColor='#f0f9fd'\"  onmouseout =\"this.style.backgroundColor='White'\">")
          .data("WorkNo", list[i]["WorkNo"]).css('cursor', 'pointer')
            .click(function () {
                transToAgentParam.DestWorkNo = $(this).data("WorkNo");
                $("#txt_Seat").val($(this).data("WorkNo"));
            })
          .append($("<td style=\"width:45px;\">").html(list[i]["WorkNo"]))
          .append($("<td style=\"width:100px;\">").html(list[i]["UserModel"]["Name"]))
           .append($("<td>").html(list[i]["UserModel"]["PhoneNum"]))
          .appendTo($("#tb_Seat"));
    }
}

//三方通话的时候 获取第三方电话号码
function ConfJoinEx_GetPhoneBook() {
    $.ajax('/Handler/Admin/PhoneBook_Handler.ashx', {
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "GetList",
            "KeyWord": $("#txtKeyWord_sf").val()
        },
        success: function (data) {
            ConfJoinEx_LoadPage(data);
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });
}

// 三方通话 加载列表
function ConfJoinEx_LoadPage(data) {
    // 整理分页信息
    $("#tbsf").empty();
    var list = data;
    // 载入当前页
    for (var i = 0; i < list.length; i++) {
        $("<tr onmouseover=\"this.style.backgroundColor='#f0f9fd'\"  onmouseout =\"this.style.backgroundColor='White'\">")
            .data("Phone", list[i]["Phone"]).css('cursor', 'pointer')
              .click(function () {
                  $("#txtKeyWord_sf").val($(this).data("Phone"));
              })
            .append($("<td style=\"width:55px;\">").html((i + 1)))
            .append($("<td style=\"width:150px;\">").html(list[i]["Name"]))
            .append($("<td>").html(list[i]["Phone"]))
            .appendTo($("#tbsf"));
    }
}

