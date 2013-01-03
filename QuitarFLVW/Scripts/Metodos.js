function ShowMessageBox(Title, Message) {
    $("#DivMessage").html(Message);
    $("#DivMessage").dialog({ modal: true, title: Title });
}

function CloseMessageBox() {
    $("#DivMessage").dialog('close');
}


function fnTrain() {
    wsim.serviciosw.DoMission(fuTrainOnSuccessCallBack, ajaxErrorCallBack);
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