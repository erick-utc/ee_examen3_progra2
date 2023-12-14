using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen3
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarPartidos();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Classes.Formulario form = new Classes.Formulario();
            
            if(!txtNombre.Text.Equals(string.Empty))
            {
                form.setNombre(txtNombre.Text.Trim());
            }

            if(!txtEdad.Text.Equals(string.Empty))
            {
                int age = int.Parse(txtEdad.Text.Trim());

                if(age >= 18 && age <=50)
                {
                    form.setEdad(age);
                }
            }

            if(!txtCorreo.Text.Equals(string.Empty))
            {
                form.setCorreo(txtCorreo.Text.Trim());
            }

            if(!ddPartidos.SelectedValue.ToString().Equals(string.Empty))
            {
                form.setPartido(int.Parse(ddPartidos.SelectedValue));
            }

            if(form.save())
            {
                Response.Redirect("Resultados.aspx");
            }
        }

        protected void llenarPartidos()
        {
            int success = Classes.P2DB.ConsultarPartidos(ddPartidos);
        }
    }
}