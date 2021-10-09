using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace basededatos
{
    public partial class MantenimientoBD : System.Web.UI.Page
    {
        string connectionString = "Data Source = LAPTOP-IVG530BE\\SQLEXPRESS;" + 
            "Initial Catalog = VENTAS; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            //Aborta si la página no es válida
            if (!this.IsValid) return;
            string insertSQL = "INSERT INTO Clientes VALUES (" + 
                txtCodigo.Text + ", '" + txtNombres.Text + "', '" + 
                txtDireccion.Text + "', '" + txtTelefono.Text + "', '" + 
                txtMail.Text + "', " + txtEdad.Text + ")";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblResult.Text = "Cliente registrado con éxito";
                con.Close();
                txtCodigo.Text = "";
                txtNombres.Text = "";
                txtDireccion.Text = "";
                txtTelefono.Text = "";
                txtMail.Text = "";
                txtEdad.Text = "";
            }
            catch (Exception err)
            {
                lblResult.Text = "Error al registrar al cliente. ";
                lblResult.Text += err.Message; 
            }
        }
    }
}