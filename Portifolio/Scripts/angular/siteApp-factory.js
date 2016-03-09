siteApp.factory('mailRequest', [function () {
    var mailRequest = function () {
        this.contactName = "";
        this.contactEmailAdress = "";
        this.contactMessage = "";
        this.lang = "";
    }

    return mailRequest;
}]);