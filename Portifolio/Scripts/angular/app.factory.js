'use strict';
app.factory('mailRequest', function () {
    var mailRequest = function () {
        this.contactName = "";
        this.contactEmailAdress = "";
        this.contactMessage = "";
    }

    return mailRequest;
});