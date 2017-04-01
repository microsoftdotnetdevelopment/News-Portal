using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Editor_Addnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            NewsType();
            NewsCategory();
            Repo();
            Edi();
        }

                    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Ipath = Server.MapPath("~/Data/Images/");       
        Ipath += Guid.NewGuid().ToString() + Path.GetExtension(Txtfui.PostedFile.FileName);
        Txtfui.SaveAs(Ipath);
        string Dpath = Server.MapPath("~/Data/Description/");
        Dpath += Guid.NewGuid().ToString() + Path.GetExtension(Txtfu.PostedFile.FileName);
        Txtfu.SaveAs(Dpath);
        /*string Epath = Server.MapPath("~/Data/edito/");
        Epath += Guid.NewGuid().ToString() + Path.GetExtension(fpueditor.PostedFile.FileName);
        Txtfu.SaveAs(Epath);*/
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
        string query = "insert news values(@Newstypeid,@Newscategoryid,@Heading,@Subheading,@descriptio,@Reporterid,@Place,@NewsDate,@DateOfAdd,@Images,@Editorid,@rangee,1,1,1,1)";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        /*string a = Txtfu.FileName;
        Txtfu.PostedFile.SaveAs("d://Newsreporter/Upload/" + a);
        string desc = "~/Upload/" + a.ToString();
        string b = Txtfui.FileName;
        Txtfui.PostedFile.SaveAs("d://Newsreporter/Upload/" + b);
        string fileu = "~/Upload/" + b.ToString();*/
        cmd.Parameters.AddWithValue("@Newstypeid", ddlNt.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@Newscategoryid", ddlNc.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@Heading", TxtH.Text);
        cmd.Parameters.AddWithValue("@Subheading", Txtsh.Text);
        cmd.Parameters.AddWithValue("@descriptio", Dpath);
        cmd.Parameters.AddWithValue("@Reporterid", ddlRi.SelectedItem.Value);       
        cmd.Parameters.AddWithValue("@Place", Txtpl.Text);
        cmd.Parameters.AddWithValue("@NewsDate", txtdate.Text);
        cmd.Parameters.AddWithValue("@DateOfAdd", txtdateadd.Text);
        cmd.Parameters.AddWithValue("@Images",Ipath);
        cmd.Parameters.AddWithValue("@Editorid", ddlEd.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@rangee", ddlP.SelectedItem.Value);
       // cmd.Parameters.AddWithValue("@editordescription", Epath);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Path");
        
    }

   public void NewsType()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
        string query = "select ID,title from newstype";
        SqlCommand cmd = new SqlCommand(query,con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            ddlNt.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        con.Close();
            
}
    public void NewsCategory()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";

        string query = "select id,title from newscategory";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlNc.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        con.Close();

    }

    public void Repo()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";

        string query = "select Personid,PersonName from Person where Personid in (select id from Reporter)";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            ddlRi.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        con.Close();

    }
   

    public void Edi()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";

        string query = "select Personid,personName from Person where Personid in (select id from Editor)";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            ddlEd.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        con.Close();
    }

    
   }