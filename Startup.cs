using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CompanyWebService.Startup))]
namespace CompanyWebService
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
