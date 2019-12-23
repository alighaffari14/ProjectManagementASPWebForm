using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SE_Project_Web_Final.Startup))]
namespace SE_Project_Web_Final
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
