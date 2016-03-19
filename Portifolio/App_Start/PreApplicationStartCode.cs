using Microsoft.Web.Infrastructure.DynamicModuleHelper;

namespace Portifolio.App_Start
{
    public static class PreApplicationStartCode
    {
        private static bool _isStarting;

        public static void PreStart()
        {
            if (!_isStarting)
            {
                _isStarting = true;

                DynamicModuleUtility.RegisterModule(typeof(Prerender.io.PrerenderModule));
            }
        }
    }
}