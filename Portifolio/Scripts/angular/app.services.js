'use strict';
app.service('mailService', ['$http', function ($http) {

    this.sendMail = function (mailData, successCallback, errorCallback) {
        var req = {
            method: 'POST',
            url: '/api/mail',
            data: mailData
        };

        $http(req).then(successCallback, errorCallback);
    };
} ]);