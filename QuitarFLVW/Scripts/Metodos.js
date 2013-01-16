
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
    ShowMessageBox("Wsim Error","There was an error please report to admin if this persist");

}

function fuTrainOnSuccessCallBack(args) {
    if (args) {
        ShowMessageBox("Wsim", "You Succesfully work commander you are more strong now!");
    }
    else {
        ShowMessageBox("Wsim", "You already work for this day commander,you have to whait until the day change to work again");
    }
}

function fuOnSuccessCallBack(args) {
        ShowMessageBox("Wsim", args);
 }