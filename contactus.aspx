<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" href="contact/images/favicon.ico"/>
<link rel="shortcut icon" href="contact/images/favicon.ico"/>
<link rel="stylesheet" href="contact/css/style.css"/>
<link rel="stylesheet" href="contact/css/slider.css"/>

 <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <!--BOOTSTRAP MAIN STYLES -->
    <link href="contact/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--FONTAWESOME MAIN STYLE -->
    <link href="contact/assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--PRETTYPHOTO MAIN STYLE -->
    <link href="contact/assets/css/prettyPhoto.css" rel="stylesheet" />
    <!--CUSTOM STYLE -->
    <link href="contact/assets/css/style.css" rel="stylesheet" />
  
     <script src="contact/js/jquery.js"></script>
<script src="contact/js/jquery-migrate-1.1.1.js"></script>
<script src="contact/js/superfish.js"></script>
<script src="contact/js/sForm.js"></script>
<script src="contact/js/jquery.jqtransform.js"></script>
<script src="contact/js/jquery.equalheights.js"></script>
<script src="contact/js/jquery.easing.1.3.js"></script>
<script src="contact/js/tms-0.4.1.js"></script>
<script src="contact/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="contact/js/jquery.ui.totop.js"></script>


    <!-- BOOTSTRAP SCRIPTS LIBRARY -->
    <script src="contact/assets/js/bootstrap.min.js"></script>
    <!-- PRETTYPHOTO  SCRIPTS  LIBRARY-->
    <script src="contact/assets/js/jquery.prettyPhoto.js"></script>
     <!-- SCROLL REVEL  SCRIPTS  LIBRARY-->
    <script src="contact/assets/js/scrollReveal.js"></script>
    <!-- CUSTOM SCRIPT-->
    <script src="contact/assets/scripts/custom.js"></script>

    <script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'random',
        pagination: false, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: true,
        waitBannerAnimation: false,
        progressBar: false
    });
    $("#tabs").tabs();
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
});
</script>
</head>
<body class="page1">
   <header>
  <div class="container_12">
    <div class="grid_12">
      <h1><a href="index.html">
          <img src="images/logo.png" /></a></h1>
      <div class="clear"></div>
    </div>
    <div class="menu_block">
     
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
</header>
    <div class="main">

  <div class="container_12">
    <div class="grid_12">
      <div class="slider-relative">
        <div class="slider-block">
          <div class="slider"> <a href="#" class="prev"></a><a href="#" class="next"></a>
            <ul class="items">
              <li><img src="contact/images/slide.jpg" alt="">
                <div class="banner">
                  <div>THERE ARE PLENTY OF NEWS</div>
                  <br>
                  <span> that are worth seeing</span> </div>
              </li>
              <li><img src="contact/images/slide1.jpg" alt=""></li>
              <li><img src="contact/images/slide2.jpg" alt=""></li>
              <li><img src="contact/images/slide3.jpg" alt=""></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="container_12">
      <div class="grid_12">
        <h3>Our Offices</h3>
      </div>
      <div class="boxes">
        <div class="grid_4">
          <figure>
            <div><img src="contact/images/page1_img1.jpg" alt=""></div>
            <figcaption>
              <h3>New Delhi</h3>
                <pre>
  The Asian Age
S-7,Green Park Main Market
New Delhi-110016
India
Phone:91-11-26530001-3
Fax:91-11-26530027
                </pre>
          </figure>
        </div>
        <div class="grid_4">
          <figure>
            <div><img src="contact/images/page1_img2.jpg" alt=""></div>
            <figcaption>
              <h3>Mumbai</h3>
                <pre>
Sigma House,
Plot No.43,Ground Floor
R.A. Kidwai Marg,
Near Wadala Station,
Mumbai - 400031
Phone: +91 22 24195301
                </pre>
          </figure>
        </div>
        <div class="grid_4">
          <figure>
            <div><img src="contact/images/page1_img3.jpg" alt=""></div>
            <figcaption>
              <h3>London</h3>
                <pre>
Newsfax International Ltd.,
Unit 16, Bow Industrial Park,
Carpenters Road,
London E152DZ
Phone 0044181-9514401
                </pre>
          </figure>
        </div>
        <div class="clear"></div>
      </div>
 <section id="about-section">
        <div class="wrap-pad">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 ">
                    <div class="text-center">
                        <h1><i class="fa fa-wrench small-icons bk-color-brown"></i>Top Editors</h1>
                        <p class="lead">
                       
                        </p>
                    </div>

                </div>
                <!-- ./ Heading div-->
                <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 margin-top-100  ">
                    <asp:Repeater ID="rptediterdetails" runat="server">
                        <ItemTemplate>
                                <div class="col-md-3 col-sm-6" data-scrollreveal="enter left and move 100px, wait 0.6s">
                        <div class="text-center">
                            <p>
                                                  <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Editerimg/"+ System.IO.Path.GetFileName(Eval("editorimage").ToString())%>' CssClass="img-responsive img-thumbnail img-circle" />
 
<%--                                <img class="img-responsive img-thumbnail img-circle"  src="contact/assets/img/team/team1.png" alt="">--%>
                            </p>
                            <h3>'<%# Eval("PersonName") %>' </h3>
                            <p>
<%--<%# System.IO.File.ReadAllText(Eval("editordescription").ToString()) %>  --%>
                                </p>                       </div>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                
                 
                </div>
                <!-- ./ Content div-->
            </div>
        </div>
    </section>
     <section id="services-section">
        <div class="wrap-pad">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 " data-scrollreveal="enter top and move 100px, wait 0.5s">
                    <div class="text-center">
                        <h1><i class="fa fa-check small-icons bk-color-green"></i>Services</h1>
                        <p class="lead">
                                                    
                        </p>
                    </div>
                </div>
                <!-- ./ Heading div-->
                <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 ">
                    <div class="col-md-4 col-sm-6" data-scrollreveal="enter left and move 100px, wait 0.6s">
                        <div class="text-center">
                            <i class="fa fa-bolt icon-round bk-color-red"></i>
                            <h4>ETMoney Finance App</h4>
                            <p>
ETMoney, a Times of India group company, is India’s most powerful app for all your personal finance needs.                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6" data-scrollreveal="enter bottom and move 100px, wait 0.6s">
                        <div class="text-center">
                            <i class="fa fa-comments icon-round bk-color-black"></i>
                            <h4>Matrimonial</h4>
                            <p>
Meet couples who found each
other through SimplyMarry.com
and tied the knot of togetherness
for always.                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6" data-scrollreveal="enter right and move 100px, wait 0.6s">
                        <div class="text-center">
                            <i class="fa fa-desktop icon-round bk-color-light-blue"></i>
                            <h4>Jobs</h4>
                            <p>
Increase your Profile visibility among Recruiters and enhance your chances of getting Job through industry oriented Professional Resume by using our job service.                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6" data-scrollreveal="enter left and move 100px, wait 0.6s">
                        <div class="text-center">
                            <i class="fa fa-flask icon-round bk-color-green"></i>
                            <h4>Movie Show timings</h4>
                            <p>
Easily access movie trailers, reviews & showtimes.
Find nearby theatres and movies when they are now showing.                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6" data-scrollreveal="enter bottom and move 100px, wait 0.6s">
                        <div class="text-center">
                            <i class="fa fa-pencil icon-round bk-color-blue"></i>
                            <h4>Online shopping</h4>
                            <p>
The best place to read all the latest news, launches, reviews and rumours about gadgets, apps, telecom and BPO, the latest in IT careers, who is hiring, who's firing and the industry trends. And the hottest from the business of enterprise IT                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6" data-scrollreveal="enter right and move 100px, wait 0.6s">
                        <div class="text-center">
                            <i class="fa fa-thumbs-up icon-round bk-color-brown"></i>
                            <h4>Property</h4>
                            <p>
http://www.magicbricks.com/
Magicbricks provides a platform for property buyers & sellers to locate properties of interest & source info on real estate.                            </p>
                        </div>
                    </div>
                </div>
                <!-- ./ Content div-->
            </div>
        </div>
    </section>
 <section id="contact-section">
        <div class="wrap-pad">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 " data-scrollreveal="enter top and move 100px, wait 0.5s">
                    <div class="text-center">
                        <h1><i class="fa fa-tint small-icons bk-color-black"></i>Contact us Now</h1>
                        <p class="lead">
                            Help us make your comments count. Use our viewer comment page to tell us what you think about our shows, our anchors, and our hot topics for the day.                      
                        </p>
                    </div>
                </div>
                <!-- ./ Heading div-->
                <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1  margin-top-20">
                    <div class="col-md-6  col-sm-12" data-scrollreveal="enter left and move 100px, wait 0.6s">
                        <h3><i class="fa fa-pencil small-icons bk-color-light-blue"></i>Send Us Your Query</h3>
                        <hr />
                        <form>
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" required="required" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" required="required" placeholder="Email address">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <textarea name="message" id="message" required="required" class="form-control" rows="4" placeholder="Message"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-lg">Submit Query</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4 col-md-offset-1  col-sm-12" data-scrollreveal="enter right and move 100px, wait 0.6s">
                        <h3><i class="fa fa-comments small-icons bk-color-red"></i>Reach Us Here</h3>
                        <hr />
                        NSEZ Sector81,Noida<br />
                        Call: +23-00-89-009<br />
                        Email: info@yourdomain.com<br />
                        <h3><i class="fa fa-plus small-icons bk-color-green"></i>Social Presence</h3>
                        <a href="#"><i class="fa fa-facebook fa-3x color-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter fa-3x color-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus fa-3x color-google-plus"></i></a>
                        <a href="#"><i class="fa fa-linkedin fa-3x color-linkedin"></i></a>
                        <a href="#"><i class="fa fa-pinterest fa-3x color-pinterest"></i></a>
                    </div>
                </div>
                <!-- ./ Content div-->
            </div>
        </div>
    </section>   
   
   </div>
  </div>
 <footer id="footer">
        <div class="row">
            <div class="col-md-12  col-sm-12">
                &copy; 2014 www.yourdomain.com  |  All Rights Reserved
               
            </div>
        </div>
    </footer>
        </div>
</body>
</html>
