using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao1DotNet
{
    public partial class CadastroFigurinhas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();
            }
        }

        protected void BtnSalvar_Click(object sender, EventArgs e)
        {
            if (!TxtDescricao.Text.Equals("") && !TxtAno.Text.Equals(""))
            {
                try
                {
                    Figurinha f = new Figurinha()
                    {
                        Descricao = TxtDescricao.Text,
                        Ano = Int32.Parse(TxtAno.Text)
                    };

                    bdAvaliacao1Entities context = new bdAvaliacao1Entities();

                    context.Figurinha.Add(f);
                    context.SaveChanges();

                    LoadGrid();
                    SendMessage("Figurinha salva com sucesso!");

                    TxtDescricao.Text = "";
                    TxtAno.Text = "0";
                }
                catch (FormatException exc)
                {
                    SendMessage("Ano inválido.");
                }
            }
            else
            {
                SendMessage("Por favor preencha todos os campos.");
            }
        }

        private void LoadGrid()
        {
            GVFigurinha.DataSource = new bdAvaliacao1Entities().Figurinha.ToList<Figurinha>();
            GVFigurinha.DataBind();
        }

        private void SendMessage(string msg)
        {
            LblMsg.Text = msg;
        }

        protected void BtnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}