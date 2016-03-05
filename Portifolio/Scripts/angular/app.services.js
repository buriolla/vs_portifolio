'use strict';
app.service('mailService', function ($http) {
    this.sendMail = function (mailData) {
        var req = {
            method: 'POST',
            url: '/api/mail',
            data: mailData
        };

        $http(req).then(this.successCallback, this.errorCallback);
    };

    this.successCallback = function (response) {
        console.log("Email sent correctly.");
    };

    this.errorCallback = function (response) {
        console.log("Failed to send the email.");
    };
});