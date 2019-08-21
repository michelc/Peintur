using System.Web.Mvc;
using System.Web.Routing;
using Peintur.Models;
using StackExchange.Profiling.EntityFramework6;

namespace Peintur
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            ViewEngines.Engines.Clear();
            ViewEngines.Engines.Add(new RazorViewEngine());

            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            AutoMap.Configure();

            MiniProfilerEF6.Initialize();
        }
    }
}
