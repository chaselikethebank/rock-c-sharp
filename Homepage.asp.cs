using System;
using Rock.Web.UI;

namespace RockWeb.Themes.Bulma.Layouts
{
    public partial class Homepage : RockPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool isLoggedIn = CurrentPerson != null;
            litIsLoggedIn.Text = isLoggedIn.ToString().ToLower();
        }
    }
}
