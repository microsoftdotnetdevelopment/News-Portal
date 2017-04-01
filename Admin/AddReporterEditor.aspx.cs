using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_AddReporterEditor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            perso();
            place();
            edit();
        }
    }

    

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
        string newid = Guid.NewGuid().ToString();
        string query = "insert person values(@Personid,@PlaceID,@PersonName,@Mobile,@Email,@CAddress,@PAddress,@DOJ,@DOB,@Gender,@Anniversary,1,@persontype,@editerdescription,@editerimage)";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        string Epath = Server.MapPath("~/Data/Editerimg/");
        Epath += Guid.NewGuid().ToString() + Path.GetExtension(ediimage.PostedFile.FileName);
        ediimage.SaveAs(Epath);
        string Eppath = Server.MapPath("~/Data/Editerdesc/");
        Eppath += Guid.NewGuid().ToString() + Path.GetExtension(edidescription.PostedFile.FileName);
        edidescription.SaveAs(Eppath);
        cmd.Parameters.AddWithValue("@Personid", newid);
        cmd.Parameters.AddWithValue("@PlaceID",ddlplace.SelectedItem.Value );
        cmd.Parameters.AddWithValue("@PersonName", txtper.Text);
        cmd.Parameters.AddWithValue("@Mobile", txtmob.Text);
        cmd.Parameters.AddWithValue("@Email", txtemail.Text);
        cmd.Parameters.AddWithValue("@CAddress", txtca.Text);
        cmd.Parameters.AddWithValue("@PAddress", txtpa.Text);
        cmd.Parameters.AddWithValue("@DOJ", txtdoj.Text);
        cmd.Parameters.AddWithValue("@DOB", txtdob.Text);
        cmd.Parameters.AddWithValue("@Gender", ddlgen.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@Anniversary", txtann.Text);
        cmd.Parameters.AddWithValue("@persontype", ddlpt.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@editerdescription", Eppath);
        cmd.Parameters.AddWithValue("@editerimage", Epath);
        cmd.ExecuteNonQuery();
        con.Close();
        
    }
    public void place()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";

        string query = "select ID,name from Places";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlplace.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        con.Close();
    }
    public void perso()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";

        string query = "select personid,PersonName from person";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlavper.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        con.Close();
    }
    public void edit()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";

        string query = "select Personid,Personname from Person where Personid in (select id from Editor) ";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddledi.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        con.Close();
    }



    protected void ddlpt_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlpt.SelectedItem.Text == "E")
        {
            ddledi.Enabled = false;
        }
    }
}

   
