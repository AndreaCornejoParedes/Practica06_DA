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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source = LAPTOP-IVG530BE\\SQLEXPRESS;" + "Initial Catalog = VENTAS; Integrated Security = True";
            string selectSQL = "SELECT * FROM Clientes";
            SqlConnection conexion = new SqlConnection(connectionString);
            SqlCommand comando = new SqlCommand(selectSQL, conexion);
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            // llenando el dataset
            DataSet VENTAS = new DataSet();
            adapter.Fill(VENTAS, "Clientes");
            // enlazar el gridview
            GridView1.DataSource = VENTAS;
            GridView1.DataBind();
        }
    }
}