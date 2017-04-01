using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for NewsObject
/// </summary>
public class NewsObject
{
    public int Newsid { get; set; }
    public int Newstypeid { get; set; }
    public int Newscategoryid { get; set; }
    public string Heading { get; set; }
    public string Subheading { get; set; }
    public string Descriptio { get; set; }
    public Guid Reporterid { get; set; }
    public string Place { get; set; }
    public DateTime NewsDate { get; set; }
    public DateTime DateOfAdd { get; set; }
    public string Images { get; set; }
    public Guid Editorid { get; set; }
    public int Rangee { get; set; }
    public bool Approved { get; set; }
    public bool Reed { get; set; }
    public int visit { get; set; }
    public bool Active { get; set; }
    public List<NewsObject> NewsCollection { get; set; }

}
public class Personn
{
    public Guid Personid { get; set; }
    public int PlaceID { get; set; }
    public string PersonName { get; set; }
    public string Mobile { get; set; }
    public string Email { get; set; }
    public string CAddress { get; set; }
    public string PAddress { get; set; }
    public DateTime DOJ { get; set; }
    public DateTime DOB { get; set; }
    public char Gender { get; set; }
    public DateTime Anniversary { get; set; }
    public bool Active { get; set; }
    public char persontype { get; set; }
    public string editorimage { get; set; }
    public string editordescription { get; set; }
    public List<Personn> NewsCollection { get; set; }

}
public class Editern
{
    public Guid ID { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }
    public List<Editern> Editercollection { get; set; }
}
public class Reporte
{
    public Guid ID { get; set; }
    public Guid EditerID { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }
    public List<Reporte> Reportee { get; set; }
}
public class Newscategor
{
    public string title { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }
    public List<NewsObject> NewsCategories { get; set; }

}
public class Newstyp
{
    public int ID { get; set; }
    public string title { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }
    public List<Newstyp> Newstypee { get; set; }
}
public class Place
{
    public string name { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }
    public List<NewsObject> placee { get; set; }
}
