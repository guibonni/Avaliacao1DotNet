using System;

namespace Avaliacao1DotNet
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnFigurinhas_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroFigurinhas.aspx");
        }
    }
}