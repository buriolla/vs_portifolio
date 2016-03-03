﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" ng-app="app">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title ng-bind-html="'TITLE' | translate "></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    
    <style>
        [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
            display: none !important;
        }
    </style>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" type="image/ico" href="/favicon.ico">

    <%: Styles.Render("~/bundles/css")%>
    <%: Scripts.Render("~/bundles/js/modernizr")%>
    
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oxygen:400,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]><%: Scripts.Render("~/bundles/js/ie8Support")%>
    <![endif]-->

</head>

<body ng-controller="indexCtrl" ng-cloak>
    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav" id="main-menu">
                    <li><a href="#page-welcome">Home</a>
                    </li>
                    <li><a href="#page-profile" ng-bind-html="'PROFILE' | translate "></a>
                    </li>
                    <li><a href="#page-skills" ng-bind-html="'SKILLS' | translate "></a>
                    </li>
                    <li><a href="#page-education" ng-bind-html="'EDUCATION' | translate "></a>
                    </li>
                    <li><a href="#page-experience" ng-bind-html="'EXPERIENCE' | translate "></a>
                    </li>
                    <li><a href="#page-contact" ng-bind-html="'CONTACT' | translate "></a>
                    </li>
                    <li><a href="" ng-click="changeLanguage()" ng-bind-html="'LANG' | translate "></a>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
    <!-- welcome begins -->
    <section id="page-welcome" class="page-welcome">
        <div>
            <ul class="slider-controls">
                <li>
                    <a id="vegas-next" class="next" href="javascript:void(0)"></a>
                </li>
                <li>
                    <a id="vegas-prev" class="prev" href="javascript:void(0)"></a>
                </li>
            </ul>
        </div>
        <div class="container">
            <div class="row">
                <header class="centered">
                    <h1>Bruno Buriolla</h1>
                    <p>{{'OCCUPATION' | translate }}</p>
                </header>
                <div class="social-icons">
                    <a href="https://twitter.com/Buriolla" target=_blank class="btn btn-round btn-clear btn-twitter"><i class="fa fa-twitter"></i></a>
                    <a href="https://www.facebook.com/bruno.buriolla" target=_blank class="btn btn-round btn-clear btn-facebook"><i class="fa fa-facebook"></i></a>
                    <a href="https://www.linkedin.com/in/brunoburiolla" target=_blank class="btn btn-round btn-clear btn-linkedin"><i class="fa fa-linkedin-square"></i></a>
                    <a href="https://github.com/buriolla" target=_blank class="btn btn-round btn-clear btn-github"><i class="fa fa-github-square"></i></a>
                </div>
                <a href="#page-contact" class="btn btn-default hire-me">{{'CONTACT' | translate }}</a>
            </div>
        </div>
    </section>
    <!-- welcome ends -->
    <!-- profile begins -->
    <section id="page-profile" class="page-profile">
        <div class="container">
            <header class="section-header">
                <h2 class="section-title">{{'PROFILE' | translate }}</h2>
                <div class="spacer"></div>
                <p class="section-subtitle"></p>
            </header>
            <div class="row">
                <div class="col-md-3">
                    <div class="profile"><img src="content/img/profile.jpg" alt="profile" />
                    </div>
                </div>
                <div class="col-md-9" ng-bind-html="'RESUME' | translate">
                </div>
            </div>
        </div>
    </section>
    <!-- profile ends -->
    <!-- skills begins -->
    <section id="page-skills" class="page-skills">
        <div class="container">

            <header class="section-header">
                <h2 class="section-title"><span>{{'SKILLS' | translate }}</span></h2>
                <div class="spacer"></div>
                <p class="section-subtitle"></p>
            </header>
            <div class="row">
                <div class="col-md-2">
                    <span class="chart" data-percent="90">
                      <span class="percent"></span>
                    <h3>Microsoft .NET</h3>
                    </span>
                </div>
                <div class="col-md-2">
                    <span class="chart" data-percent="85">
                      <span class="percent"></span>
                    <h3>C#</h3>
                    </span>
                </div>
                 <div class="col-md-2">
                    <span class="chart" data-percent="70">
                      <span class="percent"></span>
                    <h3>AngularJS</h3>
                    </span>
                </div>
                <div class="col-md-2 ">
                    <span class="chart" data-percent="70">
                      <span class="percent"></span>
                    <h3>SQL</h3>
                    </span>
                </div>
                <div class="col-md-2">
                    <span class="chart" data-percent="65">
                      <span class="percent"></span>
                    <h3>jQuery</h3>
                    </span>
                </div>
                <div class="col-md-2">
                    <span class="chart" data-percent="65">
                      <span class="percent"></span>
                    <h3>HTML 5 + CSS</h3>
                    </span>
                </div>
            </div>
        </div>
    </section>
    <!-- skills ends -->
    <!-- education begins -->
    <section id="page-education" class="page-education">
        <div class="container">
            <header class="section-header">
                <h2 class="section-title"><span ng-bind-html="'EDUCATION' | translate "></span></h2>
                <div class="spacer"></div>
                <p class="section-subtitle" ng-bind-html="'EDUCATION_SUBTITLE' | translate"></p>
            </header>
            <div class="row">
                <div class="col-md-6">
                    <article class="education">
                        <header>
                            <h3>UNINOVE</h3>
                            <p ng-bind-html="'UNINOVE_COURSE' | translate"></p>
                        </header>
                        <p ng-bind-html="'UNINOVE_DESCRIPTION' | translate"></p>
                    </article>
                </div>
                <div class="col-md-6">
                    <article class="education">
                        <header>
                            <h3>FATEC</h3>
                            <p ng-bind-html="'FATEC_COURSE' | translate"></p>
                        </header>
                        <p ng-bind-html="'FATEC_DESCRIPTION' | translate"></p>
                    </article>
                </div>
            </div>
        </div>
    </section>
    <!-- education ends -->
    <!-- experience begins -->
    <section id="page-experience" class="page-experience">
        <div class="container">
            <header class="section-header">
                <h2 class="section-title"><span ng-bind-html="'EXPERIENCE' | translate "></span></h2>
                <div class="spacer"></div>
                <p class="section-subtitle" ng-bind-html="'EXPERIENCE_SUBTITLE' | translate"></p>
            </header>
            <div class="row">
                <div class="col-md-3">
                    <article class="experience">
                        <header>
                            <h3>ST IT Consulting</h3>
                            <p ng-bind-html="'ST_IT_OCCUPATION' | translate"></p>
                        </header>
                        <p ng-bind-html="'ST_IT_DESCRIPTION' | translate"></p>
                    </article>
                </div>
                <div class="col-md-3">
                    <article class="experience">
                        <header>
                            <h3>Digisystem</h3>
                            <p ng-bind-html="'DIGISYSTEM_OCCUPATION' | translate"></p>
                        </header>
                        <p ng-bind-html="'DIGISYSTEM_DESCRIPTION' | translate"></p>
                    </article>
                </div>
                <div class="col-md-3">
                    <article class="experience">
                        <header>
                            <h3>Hazit do Brasil Jogos Online</h3>
                            <p ng-bind-html="'HAZIT_OCCUPATION' | translate"></p>
                        </header>
                        <p ng-bind-html="'HAZIT_DESCRIPTION' | translate"></p>
                    </article>
                </div>
                <div class="col-md-3">
                    <article class="experience">
                        <header>
                            <h3>Politec Tecnologia da Informação</h3>
                            <p ng-bind-html="'POLITEC_OCCUPATION' | translate"></p>
                        </header>
                        <p ng-bind-html="'POLITEC_DESCRIPTION' | translate"></p>
                    </article>
                </div>
            </div>
        </div>
    </section>
    <!-- experience ends -->
    <!-- contact begins -->
    <section id="page-contact" class="page-contact">
        <div class="container">
            <header class="section-header">
                <h2 class="section-title"><span>{{'CONTACT' | translate }}</span></h2>
                <div class="spacer"></div>
                <p class="section-subtitle"></p>
            </header>
            <div class="row">
                <div class="col-sm-5 contact-info">
                    <h3 ng-bind-html="'CONTACT_INFO' | translate"></h3>
                    <p ng-bind-html="'ADRESS' | translate"></p>
                    <p><i class="fa fa-phone"></i>  +55 (11) 96753-9111</p>
                    <p><i class="fa fa-envelope-o"></i> b.buriolla@gmail.com</p>
                </div>

                <div class="col-sm-7">
                    <h3 ng-bind-html="'GET_IN_TOUCH' | translate"></h3>
                    <!-- Configure the contact form by adding your email address on mail/contact_me.php line 17 -->
                    <form class="form-horizontal" id="contactForm" novalidate>
                        <div class="control-group">
                            <label class="control-label" for="name" ng-bind-html="'NAME_LABEL' | translate"></label>
                            <div class="controls">
                                <input type="text" name="name" id="name" placeholder="{{'INPUT_NAME' | translate}}" class="form-control input-lg"  required data-validation-required-message="Please enter your name.">
                                  <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="email" ng-bind-html="'EMAIL_LABEL' | translate"></label>
                            <div class="controls">
                                <input type="email" name="email" id="email" placeholder="{{'INPUT_EMAIL' | translate}}" class="form-control input-lg"  required data-validation-required-message="Please enter your email address.">
                                  <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="message" ng-bind-html="'MESSAGE_LABEL' | translate"></label>
                            <div class="controls">
                                <textarea name="message" id="message" rows="8" class="form-control input-lg" required data-validation-required-message="Please enter a message."></textarea>
                                  <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="form-actions">
                        <div id="success"></div>
                            <button type="submit" class="btn btn-default btn-lg btn-block" ng-bind-html="'SUBIMIT_MESSAGE' | translate">Submit Message</button>
                        </div>
                    </form>
                    <!-- End contact-form -->
                </div>
            </div>
            <!-- End row -->

        </div>
    </section>
    <!-- contact ends -->


    <!--<script src="../../Scripts/jquery-2.1.3.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/jquery.scrollTo.js"></script>
    <script src="../../Scripts/jquery.nav.js"></script>
    <script src="../../Scripts/jquery.sticky.js"></script>
    <script src="../../Scripts/jquery.easypiechart.min.js"></script>
    <script src="../../Scripts/vegas.js"></script>
    <script src="../../Scripts/jquery.isotope.min.js"></script>
    <script src="../../Scripts/jquery.magnific-popup.min.js"></script>
    <script src="../../Scripts/waypoints.min.js"></script>
    <script src="../../Scripts/jqBootstrapValidation.js"></script>
    <script src="../../Scripts/contact_me.js"></script>
    <script src="../../Scripts/main.js"></script> -->
    <%: Scripts.Render("~/bundles/js/general")%>
    <%: Scripts.Render("~/bundles/js/vegas")%>

    <script src="../../Scripts/angular/angular.min.js"></script>
    <script src="../../Scripts/angular/angular-sanitize.min.js"></script>
    <script src="../../Scripts/angular/angular-translate.min.js"></script>
    <script src="../../Scripts/angular/app.js"></script>
    <script src="../../Scripts/angular/indexCtrl.js"></script>

</body>

</html>
