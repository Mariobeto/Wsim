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