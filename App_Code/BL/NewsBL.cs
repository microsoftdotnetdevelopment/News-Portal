using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.IO;

/// <summary>
/// Summary description for NewsBL
/// </summary>
public class NewsBL
{

    public static List<NewsObject> GetNews(int id)
    {
        var list = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == id && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(3).ToList();
        return list;
    }
    public static List<NewsObject> GetAllNewsBl(DateTime id,int p,int q)   
    {
        var list = NewsDAL.GetAllNewsBL().Where(n => n.NewsDate == id && n.Newstypeid==p && n.Newscategoryid==q).ToList<NewsObject>();
        return list;
    }

    public static IEnumerable<Object> GetTNews()
    {
        List<Personn> per = NewsDAL.GetAllPerson();
        List<NewsObject> newss = NewsDAL.GetAllNewsBL().Where(n => n.Newscategoryid == 8 && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(4).ToList<NewsObject>();
        var joinlist = newss.Join(per,
                              News => News.Editorid,
                              Personn => Personn.Personid,
                              (News, Personn) => new
                              {
                                  head = News.Heading,
                                 
                                  Sub = News.Subheading,
                                  edi = Personn.PersonName,
                                
                              });
        return joinlist;
    }
    public static IEnumerable<Object> newsdetails()
    {
        List<Personn> per = NewsDAL.GetAllPerson().Take(1).ToList();
        List<NewsObject> newss = NewsDAL.GetAllNewsBL().Take(1).ToList();
        var joinlist = newss.Join(per,
                              News => News.Editorid,
                              Personn => Personn.Personid,
                              (News, Personn) => new
                              {
                                 

                                  desc=Personn.editordescription,
                                  edi = Personn.PersonName,

                              });
        return joinlist;
    }
    public static List<NewsObject> GetBNews(int id, int i, int w)
    {
        var list3 = NewsDAL.GetAllNewsBL().Where(n => n.Newscategoryid == id && n.Newstypeid == i || n.Newstypeid == w && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(3).ToList<NewsObject>();
        return list3;
    }
    public static List<NewsObject> GetENews(int id, int i, int w)
    {
        var list4 = NewsDAL.GetAllNewsBL().Where(n => n.Newscategoryid == id && (n.Newstypeid == i || n.Newstypeid == w) && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(4).ToList<NewsObject>();
        return list4;
    }
    public static List<NewsObject> Topnews()
    {
        var list5 = NewsDAL.GetAllNewsBL().OrderByDescending(n => n.Rangee).Take(5).ToList<NewsObject>();
        return list5;
    }
    public static List<NewsObject> Ranimage()
    {
        Random rn = new Random();
        var list = NewsDAL.randomImage().OrderBy(r => rn.Next()).Take(6).ToList();
        return list;
    }
    public static List<NewsObject> imgslide()
    {
        var list7 = NewsDAL.GetAllNewsBL().Where(n => n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(5).ToList<NewsObject>();
        return list7;
    }
    public static List<NewsObject> allworldnews(int id)
    {
        var list = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == id && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(3).ToList<NewsObject>();
        return list;
    }
    public static List<NewsObject> flicker()
    {
        var list7 = NewsDAL.GetAllNewsBL().Where(n => n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(8).ToList<NewsObject>();
        return list7;
    }
  




    public static List<NewsObject> getpoliticnews(int x, int y)
    {
        var list = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(4).ToList<NewsObject>();
        return list;
    }
    public static List<NewsObject> gethealthnews(int x, int y)
    {
        var pol = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(2).ToList<NewsObject>();
        return pol;
    }
    public static List<NewsObject> getautonews(int x, int y)
    {
        var list = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(2).ToList<NewsObject>();
        return list;
    }
    public static List<NewsObject> gethealthautoindia(int id, int i, int w)
    {
        var list4 = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == id && n.Newscategoryid == i || n.Newscategoryid == w && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(3).ToList<NewsObject>();
        return list4;
    }
    public static List<NewsObject> business(int x, int y)
    {
        var list = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(1).ToList<NewsObject>();
        return list;
    }
    public static List<NewsObject> businessindia()
    {
        var list = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == 13 && n.Newscategoryid == 7 && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Skip(1).Take(3).ToList<NewsObject>();
        return list;
    }
    public static List<NewsObject> sports(int x, int y)
    {
        var newlist = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(1).ToList<NewsObject>();
        return newlist;
    }
    public static List<NewsObject> sportsright(int x, int y)
    {
        var list8 = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(2).ToList<NewsObject>();
        return list8;
    }
    public static List<NewsObject> enterleft(int x, int y)
    {
        var list8 = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(1).ToList<NewsObject>();
        return list8;
    }
    public static List<NewsObject> enterright(int x, int y)
    {
        var list8 = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(2).ToList<NewsObject>();
        return list8;
    }

    public static List<NewsObject> lefttechno(int x, int y)
    {
        var list8 = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(1).ToList<NewsObject>();
        return list8;
    }
    public static List<NewsObject> righttechno(int x, int y)
    {
        var list8 = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(3).ToList<NewsObject>();
        return list8;
    }
    public static List<NewsObject> culture(int x, int y)
    {
        var list8 = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(3).ToList<NewsObject>();
        return list8;
    }
    public static List<NewsObject> mostpopular(int x, int y)
    {
        var list8 = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x || n.Newstypeid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(3).ToList<NewsObject>();
        return list8;
    }

    public static List<NewsObject> sportsnewsfashion(int x, int y)
    {
        var newlist = NewsDAL.GetAllNewsBL().Where(n => n.Newstypeid == x && n.Newscategoryid == y && n.NewsDate.ToShortDateString() == DateTime.Now.ToShortDateString()).OrderByDescending(n => n.Rangee).Take(4).ToList<NewsObject>();
        return newlist;
    }
    public static List<Personn> Editerdetails()
    {
        var nlist8 = NewsDAL.GetAllPerson().Where(n => n.persontype == 'E').Take(4).ToList<Personn>();

        return nlist8;
    }
    public static List<Personn> edidet()
    {
        var list = NewsDAL.GetAllPerson().Where(n => n.persontype == 'E').ToList();
        return list;
    }
    //public static List<Newstyp> ttttp()
    //{
    //    var list = NewsDAL.getnewstype().Where(n => n.ID ).ToList();
    //    return list;
    //}
    public static IEnumerable<Object> GetEditer()
    {
        List<Editern> editer = NewsDAL.Getallediters();
        List<Personn> person = NewsDAL.GetAllPerson();
             var joinlist = editer.Join(person,
                              e => e.ID,
                              p => p.Personid,
                              (e, p) => new
                              {
                                  id = e.ID,

                                  name = p.PersonName
                                 

                              });
        return joinlist;
    }
    public static IEnumerable<Object> GetReporter()
    {
        List<Reporte> Reporter = NewsDAL.Getallreprters();
        List<Personn> person = NewsDAL.GetAllPerson();
        var joinlist = Reporter.Join(person,
                         r => r.ID,
                         p => p.Personid,
                         (r, p) => new
                         {
                             id = r.ID,

                             name = p.PersonName


                         });
        return joinlist;
    }
    public static List<Personn> GetAllpersondetils(Guid p)
    {
        var list = NewsDAL.GetAllPerson().Where(n => n.Personid == p ).ToList<Personn>();
        return list;
    }
    public static string UpdateImageBL(System.Web.UI.WebControls.FileUpload FileUpload1, string physicalpath, int id)
    {
        string Extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
        string filename = Guid.NewGuid().ToString();
        string path = "~/Data/Image/" + filename + Extension;
        FileUpload1.SaveAs(physicalpath + filename + Extension);
        int result = NewsDAL.UploadImageDAL(path, id);
        return result > 0 ? path : null;
    }



    //for update news description--------
    public static string UpdateDescriptionBL(System.Web.UI.WebControls.FileUpload FileUpload2, string physicalpath, int id)
    {
        string Extension = Path.GetExtension(FileUpload2.PostedFile.FileName);
        string filename = Guid.NewGuid().ToString();
        string path = "~/Data/Description/" + filename + Extension;
        FileUpload2.SaveAs(physicalpath + filename + Extension);
        int result = NewsDAL.UploadDescriptionDAL(path, id);
        return result > 0 ? physicalpath + filename + Extension : null;
    }





}