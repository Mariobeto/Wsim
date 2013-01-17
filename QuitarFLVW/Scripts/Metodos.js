function ShowMessageBox(Title, Message) {
    $("#DivMessage").html(Message);
    $("#DivMessage").dialog({ modal: true, title: Title });
}

function CloseMessageBox() {
    $("#DivMessage").dialog('close');
}


function fnTrain() {
    var username = getCookie("Acceso");
    wsim.serviciosw.DoMission(username, fuTrainOnSuccessCallBack, ajaxErrorCallBack);
}


function fnWork() {
    var username = getCookie("Acceso");
    wsim.serviciosw.Work(username,fuOnSuccessCallBack, ajaxErrorCallBack);
}

function fnlogin()
{
    var username = getCookie("Acceso");
    if (username != null && username != "") {
       
    }
    else {

    }

}

function getCookie(c_name) {
    var i, x, y, ARRcookies = document.cookie.split(";");
    for (i = 0; i < ARRcookies.length; i++) {
        x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
        y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
        x = x.replace(/^\s+|\s+$/g, "");
        if (x == c_name) {
            return unescape(y);
        }
    }
}

function ajaxErrorCallBack(args) {
    ShowMessageBox("Wsim Error","Hubo un error favor de reportarlo a soporte tecnico si este persiste");

}

function fuTrainOnSuccessCallBack(args) {
    if (args) {
        ShowMessageBox("Wsim", "Entreno correctamente vuelva mañana para volver a entrenar");
    }
    else {
        ShowMessageBox("Wsim", "Ya entreno por el dia de hoy comandante, se puede entrenar 1 vez cada 24 horas");
    }
}

function fuOnSuccessCallBack(args) {
        ShowMessageBox("Wsim", args);
    }

    $(document).ready(function () {

        $("ul.subnav").parent().append("<span></span>"); //Only shows drop down trigger when js is enabled (Adds empty span tag after ul.subnav*)

        $("ul.topnav li span").click(function () { //When trigger is clicked...

            //Following events are applied to the subnav itself (moving subnav up and down)
            $(this).parent().find("ul.subnav").slideDown('fast').show(); //Drop down the subnav on click

            $(this).parent().hover(function () {
            }, function () {
                $(this).parent().find("ul.subnav").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
            });

            //Following events are applied to the trigger (Hover events for the trigger)
        }).hover(function () {
            $(this).addClass("subhover"); //On hover over, add class "subhover"
        }, function () {	//On Hover Out
            $(this).removeClass("subhover"); //On hover out, remove class "subhover"
        });

    });