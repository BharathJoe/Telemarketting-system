using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Finalproject.Startup))]
namespace Finalproject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
