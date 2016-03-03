using System.Web;
using System.Web.Optimization;

namespace Portifolio
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/js/modernizr").Include(
                    "~/Scripts/modernizr-2.6.2.min.js"
                ));

            bundles.Add(new ScriptBundle("~/bundles/js/ie8Support").Include(
                    "~/Scripts/html5shiv.js",
                    "~/Scripts/respond.min.js"
                ));

            bundles.Add(new ScriptBundle("~/bundles/js/vegas").Include(
                    "~/Scripts/vegas.js"
                ));

            bundles.Add(new ScriptBundle("~/bundles/js/general").Include(
                    "~/Scripts/jquery-2.1.3.min.js",
                    "~/Scripts/bootstrap.min.js",
                    "~/Scripts/jquery.scrollTo.js",
                    "~/Scripts/jquery.nav.js",
                    "~/Scripts/jquery.sticky.js",
                    "~/Scripts/jquery.easypiechart.min.js",
                    "~/Scripts/jquery.isotope.min.js",
                    "~/Scripts/jquery.magnific-popup.min.js",
                    "~/Scripts/waypoints.min.js",
                    "~/Scripts/jqBootstrapValidation.js",
                    "~/Scripts/Scripts/contact_me.js",
                    "~/Scripts/main.js"
                ));

            
            bundles.Add(new ScriptBundle("~/bundles/js/angularApp").Include(
                    "~/Scripts/angular/app.js",
                    "~/Scripts/angular/indexCtrl.js"
                ));

            bundles.Add(new StyleBundle("~/bundles/css").Include(
                        "~/Content/css/bootstrap.min.css",
                        "~/Content/css/font-awesome.min.css",
                        "~/Content/css/magnific-popup.css",
                        "~/Content/css/vegas.min.css",
                        "~/Content/css/main.css",
                        "~/Content/css/colors/orange.css"));
        }
    }
}