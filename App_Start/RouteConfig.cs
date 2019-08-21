using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Peintur
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.IgnoreRoute("favicon.ico");
            routes.LowercaseUrls = true;

            routes.MapRoute(
                name: "Parameter",
                url: "parametres/{type}/{action}/{id}",
                defaults: new { controller = "Parametres", type = "Aucuns", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Tableaux", action = "Index", id = UrlParameter.Optional, more = UrlParameter.Optional }
            );
        }
    }
}
