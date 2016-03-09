siteApp.service('mailService', ['$http', '$cookies', function ($http, $cookies) {

    this.sendMail = function (mailData, successCallback, errorCallback) {

        var sessionID = $cookies.get('SessionID')
        
        var req = {
            method: 'POST',
            url: '/api/mail',
            data: mailData,
            headers: {
                'SessionID': sessionID
            }
        };

        $http(req).then(successCallback, errorCallback);
    };
}]);