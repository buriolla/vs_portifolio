﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" ng-app="siteApp">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title ng-bind-html="'TITLE' | translate "></title>
    <meta name="description" content="Visualizar o perfil profissional de Bruno Buriolla em seu site pessoal. Neste site é possível ler o perfil de Bruno Buriolla, descobrir os conhecimentos de Bruno Buriolla, saber sobre a formação de Bruno Buriolla e conhecer a experiência profissional de Bruno Buriolla. Também é possível entrar em contato com Bruno Buriolla através deste site.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Bruno Buriolla">
    <meta content="Bruno Buriolla | .NET Software Engineer" name="og:title">
    <meta content="Bruno Buriolla | Desenvolvedor .NET" name="og:title">
    <style>
        [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak
        {
            display: none !important;
        }
    </style>
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" type="image/ico" href="/favicon.ico">
    <%: Styles.RenderFormat(@"<link rel=""stylesheet"" href=""{0}"">", "~/bundles/css")%>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]><%: Scripts.RenderFormat(@"<script src=""{0}"" async></script>", "~/bundles/js/ie8Support")%>
    <![endif]-->
</head>
<body ng-controller="indexCtrl" ng-cloak>
    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav" id="main-menu">
                    <li><a href="#page-welcome">Home</a> </li>
                    <li><a href="#page-profile" ng-bind-html="'PROFILE' | translate "></a></li>
                    <li><a href="#page-skills" ng-bind-html="'SKILLS' | translate " id="pageSkillsLink"></a></li>
                    <li><a href="#page-education" ng-bind-html="'EDUCATION' | translate "></a></li>
                    <li><a href="#page-experience" ng-bind-html="'EXPERIENCE' | translate "></a></li>
                    <li><a href="#page-contact" ng-bind-html="'CONTACT' | translate "></a></li>
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
                    <p ng-bind-html="'OCCUPATION' | translate "></p>
                </header>
                <div class="social-icons">
                    <a href="https://twitter.com/Buriolla" target=_blank class="btn btn-round btn-clear btn-twitter" title="Twitter"><i class="fa fa-twitter"></i></a>
                    <a href="https://www.facebook.com/bruno.buriolla" target=_blank class="btn btn-round btn-clear btn-facebook" title="Facebook"><i class="fa fa-facebook"></i></a>
                    <a href="https://www.linkedin.com/in/brunoburiolla" target=_blank class="btn btn-round btn-clear btn-linkedin" title="Linkedin"><i class="fa fa-linkedin-square"></i></a>
                    <a href="https://github.com/buriolla" target=_blank class="btn btn-round btn-clear btn-github"><i class="fa fa-github-square" title="Github"></i></a>
                </div>
                <a href="#page-contact" class="btn btn-default hire-me" ng-bind-html="'CONTACT' | translate "></a>
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
                    <span class="chart" data-percent="100">
                      <span class="percent fa fa-check fa-3"></span>
                    <h3>Microsoft .NET</h3>
                    </span>
                </div>
                <div class="col-md-2">
                    <span class="chart" data-percent="100">
                      <span class="percent fa fa-check fa-3"></span>
                    <h3>C#</h3>
                    </span>
                </div>
                 <div class="col-md-2">
                    <span class="chart" data-percent="100">
                      <span class="percent fa fa-check fa-3"></span>
                    <h3>AngularJS</h3>
                    </span>
                </div>
                <div class="col-md-2 ">
                    <span class="chart" data-percent="100">
                      <span class="percent fa fa-check fa-3"></span>
                    <h3>SQL</h3>
                    </span>
                </div>
                <div class="col-md-2">
                    <span class="chart" data-percent="100">
                      <span class="percent fa fa-check fa-3"></span>
                    <h3>jQuery</h3>
                    </span>
                </div>
                <div class="col-md-2">
                    <span class="chart" data-percent="100">
                      <span class="percent fa fa-check fa-3"></span>
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
                    <form class="form-horizontal" name="contactForm" id="contactForm" novalidate ng-submit="sendMail()">
                        <div class="control-group">
                            <label class="control-label" for="name" ng-bind-html="'NAME_LABEL' | translate"></label>
                            <div class="controls">
                                <input type="text" name="name" id="name" ng-model="mailRequestData.contactName" class="form-control input-lg"  required>
                                  <div ng-show="contactForm.$submitted || contactForm.name.$touched">
                                    <p class="bg-danger" ng-show="contactForm.name.$error.required" ng-bind-html="'REQUIRED_FIELD' | translate"></p>
                                  </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="email" ng-bind-html="'EMAIL_LABEL' | translate"></label>
                            <div class="controls">
                                <input type="email" name="email" id="email" ng-model="mailRequestData.contactEmailAdress" class="form-control input-lg"  required>
                                  <div ng-show="contactForm.$submitted || contactForm.email.$touched">
                                    <p class="bg-danger" ng-show="contactForm.email.$error.required" ng-bind-html="'REQUIRED_FIELD' | translate"></p>
                                    <p class="bg-danger" ng-show="contactForm.email.$error.email" ng-bind-html="'INVALID_EMAIL' | translate"></p>
                                  </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="message" ng-bind-html="'MESSAGE_LABEL' | translate"></label>
                            <div class="controls">
                                <textarea name="message" id="message" ng-model="mailRequestData.contactMessage" rows="8" class="form-control input-lg" required></textarea>
                                  <div ng-show="contactForm.$submitted || contactForm.message.$touched">
                                    <p class="bg-danger" ng-show="contactForm.message.$error.required" ng-bind-html="'REQUIRED_FIELD' | translate"></p>
                                  </div>
                            </div>
                        </div>
                        <div class="form-actions">
                        <div id="success"></div>
                            <button type="submit" class="btn btn-default btn-lg btn-block" ng-bind-html="'SUBIMIT_MESSAGE' | translate" ng-disabled="contactForm.$invalid"></button>
                            <p class="bg-success" ng-show="emailSuccess" ng-bind-html="'EMAIL_SUCCESS' | translate"></p>
                            <p class="bg-danger" ng-show="emailError" ng-bind-html="'EMAIL_ERROR' | translate"></p>
                        </div>
                    </form>
                    <!-- End contact-form -->
                </div>
            </div>
            <!-- End row -->

        </div>
    </section>
    <!-- contact ends -->
    
    <%: Scripts.RenderFormat(@"<script src=""{0}"" async></script>", "~/bundles/js/general")%>
    <%--<%: Scripts.RenderFormat(@"<script src=""{0}"" async></script>", "~/bundles/js/vegas")%>--%>
    <%: Scripts.RenderFormat(@"<script src=""{0}"" async></script>", "~/bundles/js/angularJS")%>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o)
                , m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-74980391-1', 'auto');
        ga('send', 'pageview');
    </script>
</body>
</html>
