siteApp.controller('indexCtrl', ['$scope', '$window', '$translate', 'mailService', 'mailRequest', function ($scope, $window, $translate, mailService, mailRequest) {

    $scope.mailRequestData = new mailRequest();
    $scope.lang = $window.navigator.language || $window.navigator.userLanguage;
    $scope.currentLang = $scope.lang;
    $scope.emailSuccess = false;
    $scope.emailError = false;

    $scope.changeLanguage = function () {
        if ($scope.currentLang == 'pt-BR') {
            $translate.use('en-US');
            $scope.currentLang = 'en-US';
        } else {
            $translate.use('pt-BR');
            $scope.currentLang = 'pt-BR';
        }
    };

    $scope.sendMail = function () {
        $scope.mailRequestData.lang = $scope.currentLang;

        var result = mailService.sendMail($scope.mailRequestData, function () {
            $scope.emailSuccess = true;
            $scope.emailError = false;
        }, function () {
            $scope.emailSuccess = false;
            $scope.emailError = true;
        });

        $scope.contactForm.$setUntouched();
        $scope.contactForm.$setPristine();
        $scope.mailRequestData = new mailRequest();
    };

    function setLanguage() {

        if ($scope.lang != 'pt-BR') {
            $translate.use('en-US');
        } else {
            $translate.use($scope.lang);
        }
    }

    setLanguage();
}]);