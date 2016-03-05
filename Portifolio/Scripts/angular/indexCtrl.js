'use strict';
app.controller('indexCtrl', ['$scope', '$window', '$translate', 'mailService', 'mailRequest', function ($scope, $window, $translate, mailService, mailRequest) {

    $scope.mailRequestData = new mailRequest();
    $scope.lang = $window.navigator.language || $window.navigator.userLanguage;

    $scope.changeLanguage = function () {
        if ($scope.lang == 'pt-BR') {
            $translate.use('en-US');
        } else {
            $translate.use('pt-BR');
        }
    };

    $scope.sendMail = function () {
        mailService.sendMail($scope.mailRequestData);
        $scope.contactForm.$setUntouched();
        $scope.contactForm.$setPristine();
    };

    function setLanguage() {

        if ($scope.lang != 'pt-BR') {
            $translate.use('en-US');
        } else {
            $translate.use($scope.lang);
        }
    }

    setLanguage();
} ]);