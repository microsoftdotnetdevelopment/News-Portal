using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for NewsDAL
/// </summary>
public class NewsDAL
{
    public static List<NewsObject> GetAllNewsBL()
    {
        List<NewsObject> news = new List<NewsObject>();
        
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "select * from News";
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    NewsObject n = new NewsObject();
                    n.Newsid = int.Parse(dr[0].ToString());
                    n.Newstypeid = int.Parse(dr[1].ToString());
                    n.Newscategoryid = int.Parse(dr[2].ToString());
                    n.Heading = dr[3].ToString();
                    n.Subheading = dr[4].ToString();
                    n.Descriptio = dr[5].ToString();
                    n.Reporterid = Guid.Parse(dr[6].ToString());
                    n.Place = dr[7].ToString();
                    n.NewsDate = DateTime.Parse(dr[8].ToString());
                    n.DateOfAdd = DateTime.Parse(dr[9].ToString());
                    n.Images = dr[10].ToString();
                    n.Editorid = Guid.Parse(dr[11].ToString());
                    n.Rangee = int.Parse(dr[12].ToString());
                    n.Approved = bool.Parse(dr[13].ToString());
                    n.Reed = bool.Parse(dr[14].ToString());
                    n.visit = int.Parse(dr[15].ToString());
                    n.Active = bool.Parse(dr[16].ToString());
                    news.Add(n);
                }
            }
            return news;
        }
    }
    public static List<Personn> GetAllPerson()
    {
        List<Personn> pers = new List<Personn>();
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "select * from Person";
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Personn n = new Personn();
                    n.Personid = Guid.Parse(dr[0].ToString());
                    n.PlaceID = int.Parse(dr[1].ToString());
                    n.PersonName = dr[2].ToString();
                    n.Mobile = dr[3].ToString();
                    n.Email = dr[4].ToString();
                    n.CAddress = dr[5].ToString();
                    n.PAddress = dr[6].ToString();
                    n.DOJ = DateTime.Parse(dr[7].ToString());
                    n.DOB = DateTime.Parse(dr[8].ToString());
                    n.Gender = Char.Parse(dr[9].ToString());
                    n.Anniversary = DateTime.Parse(dr[10].ToString());
                    n.Active = bool.Parse(dr[11].ToString());
                    n.persontype = Char.Parse(dr[12].ToString());
                    n.editorimage = dr[13].ToString();
                    n.editordescription = dr[14].ToString();
                    pers.Add(n);
                }
            }
            return pers;
        }
    }
    public static List<NewsObject> randomImage()
    {
        List<NewsObject> list = new List<NewsObject>();
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "select Images from News";
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    NewsObject n = new NewsObject();
                    n.Images = dr[0].ToString();
                    list.Add(n);
                }
            }
            return list;
        }
    }

    public static List<Newstyp> getnewstype()
    {
        List<Newstyp> per = new List<Newstyp>();
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "select * from newstype";
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Newstyp n = new Newstyp();
                    n.ID = int.Parse(dr[0].ToString());
                    n.title = dr[1].ToString();
                    n.DateOfAdd = DateTime.Parse(dr[2].ToString());
                    n.Active = bool.Parse(dr[3].ToString());
                    per.Add(n);
                }
            }
            return per;
        }
    }
    public static List<Editern> Getallediters()
    {
        List<Editern> pere = new List<Editern>();
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "select * from Editor";
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Editern n = new Editern();
                    n.ID = Guid.Parse(dr[0].ToString());
                  
                    n.DateOfAdd = DateTime.Parse(dr[1].ToString());
                    n.Active = bool.Parse(dr[2].ToString());
                    pere.Add(n);
                }
            }
            return pere;
        }
    }
    public static List<Reporte> Getallreprters()
    {
        List<Reporte> pee = new List<Reporte>();
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "select * from Reporter";
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Reporte n = new Reporte();
                    n.ID = Guid.Parse(dr[0].ToString());
                    n.EditerID = Guid.Parse(dr[1].ToString());
                    n.DateOfAdd = DateTime.Parse(dr[2].ToString());
                    n.Active = bool.Parse(dr[3].ToString());
                    pee.Add(n);
                }
            }
            return pee;
        }
    }
    public static int UploadImageDAL(string path, int id)
    {
        int result = -1;
        using (SqlConnection con = new SqlConnection())
        {

            con.ConnectionString = "Data Source=SUNNY;Initial Catalog=newsreporter;Integrated Security=true";
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update News set Images = @img where newsid=@nid ";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@img", path);
                cmd.Parameters.AddWithValue("@nid", id);
                con.Open();
                result = cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        return result;


    }
    public static int UploadDescriptionDAL(string path, int id)
    {
        int result = -1;
        using (SqlConnection con = new SqlConnection())
        {

            con.ConnectionString = "Data Source=SUNNY;Initial Catalog=newsreporter;Integrated Security=true";
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update News set descriptio = @des where Newsid=@nid ";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@des", path);
                cmd.Parameters.AddWithValue("@nid", id);
                con.Open();
                result = cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        return result;


    }


}

