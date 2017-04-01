using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Adminnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
        string query = "insert newstype values(@title,getdate(),0)";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.Parameters.AddWithValue("@title", TextBox1.Text);
       
        cmd.ExecuteNonQuery();
        con.Close();
        show();

    }

   public void show()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";

        string query = "select title from newstype";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList3.Items.Add(dr[0].ToString());
        }
        con.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
        string query = "insert newscategory values(@title,getdate(),0)";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.Parameters.AddWithValue("@title", TextBox2.Text);

        cmd.ExecuteNonQuery();
        con.Close();
        show1();
    }

    public void show1()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";

        string query = "select title from newscategory";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList4.Items.Add(dr[0].ToString());
        }
        con.Close();

    }
}