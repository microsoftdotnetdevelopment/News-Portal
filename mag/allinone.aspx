<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allinone.aspx.cs" Inherits="allinone" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>
    <link href="assets/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="assets/css/animate.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css"/>
    <link href="assets/css/theme.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
</head>
<body>
    <form id="form2" runat="server">
       <div class="container">

  <section id="mainContent">
    <div class="content_top">
      <div class="row">
                    
     <h2> <span class="bold_line"></span> <span class="solid_line"></span> </h2>

        <div class="col-lg-6 col-md-6 col-sm6">

          <div class="latest_slider">
            <div class="slick_slider">
                 <div class="single_iteam">
                <asp:Repeater ID="rptpolitics" runat="server">
                         <ItemTemplate>
                             <div class="single_iteam">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' Height="510px" Width="580px"/>
                  <h2><a class="slider_tittle" href="pages/single.html"><%# Eval("Heading") %></a></h2>
                                  </div>
             </ItemTemplate>
                </asp:Repeater>
             </div>
           
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm6">
          <div class="content_top_right">
            <ul class="featured_nav wow fadeInDown">
                <asp:Repeater ID="rptrightpolitics" runat="server">
                       <ItemTemplate>
                    <li>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />
                <div class="title_caption">
                    <a href="pages/single.html">
                    <%# Eval("Heading") %>
                    </a></div>
              </li>
                              </ItemTemplate>
                </asp:Repeater>
              
             
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="content_middle">
      <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="content_middle_leftbar">
          <div class="single_category wow fadeInDown">
            <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a href="#" class="title_text">Health News</a> </h2>
            <ul class="catg1_nav">
                <asp:Repeater ID="rpthealth" runat="server">
                       <ItemTemplate>
                     <li>
                <div class="catgimg_container">
                     <a href="pages/single.html" class="catg1_img">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                     </a></div>
                <h3 class="post_titile"><a href="pages/single.html"></a> <%# Eval("Heading") %></h3>
              </li>
                              </ItemTemplate>
                </asp:Repeater>
             
            
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6">
        <div class="content_middle_middle">
          <div class="slick_slider2">
              <asp:Repeater ID="rptautohealth" runat="server">
                  <ItemTemplate>
                   <div class="single_featured_slide"> <a href="pages/single.html">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />
                                  <h2><a href="pages/single.html"><%# Eval("Heading") %></a>


                                  </h2>
              <p><%# Eval("Subheading") %></p>
            </div>
                      </ItemTemplate>
              </asp:Repeater>
           
           
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="content_middle_rightbar">
          <div class="single_category wow fadeInDown">
            <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a href="#" class="title_text">Automobile News</a> </h2>
            <ul class="catg1_nav">
                <asp:Repeater ID="rptautomobilenews" runat="server">
                       <ItemTemplate>
                   <li>
                <div class="catgimg_container">
                     <a href="pages/single.html" class="catg1_img">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                     </a></div>
                <h3 class="post_titile"><a href="pages/single.html"></a> <%# Eval("Heading") %></h3>
              </li>
                              </ItemTemplate>
                </asp:Repeater>
              
            
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="content_bottom">
      <div class="col-lg-8 col-md-8">
        <div class="content_bottom_left">
          <div class="single_category wow fadeInDown">
            <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a class="title_text" href="#">Business</a> </h2>
            
                        <div class="business_category_left wow fadeInDown">
              <ul class="fashion_catgnav">
                    <asp:Repeater ID="rptbusinindia" runat="server">
                  <ItemTemplate>
                 <li>
                  <div class="catgimg2_container"> <a href="pages/single.html">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                                   </a> </div>
                  <h2 class="catg_titile"><a href="pages/single.html"><%# Eval("Heading") %></a></h2>
                  <div class="comments_box"> <span class="meta_date"><%# Eval("NewsDate") %></span> <span class="meta_comment"><a href="#">No Comments</a></span> <span class="meta_more"><a  href="#">Read More...</a></span> </div>
                  <p><%# Eval("Subheading") %></p>
                </li>
            
                  </ItemTemplate>
              </asp:Repeater>
                    </ul>
            </div>
             
            <div class="business_category_right wow fadeInDown">
              <ul class="small_catg">
                  <asp:Repeater ID="rptrightbusinesindia" runat="server">
                      <ItemTemplate>
                           <li>
                  <div class="media wow fadeInDown"> <a class="media-left" href="pages/single.html">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                                     </a>
                    <div class="media-body">
                      <h4 class="media-heading"><a href="pages/single.html"><%# Eval("Heading") %> </a></h4>
                      <div class="comments_box"> <span class="meta_date"><%# Eval("NewsDate") %></span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                    </div>
                  </div>
                </li>
                      </ItemTemplate>
                  </asp:Repeater>
               
              </ul>
            </div>
          </div>
          <div class="games_fashion_area">
            <div class="games_category">
              <div class="single_category">
                <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a class="title_text" href="#">Sports</a> </h2>
                <ul class="fashion_catgnav wow fadeInDown">
                    <asp:Repeater ID="rptsportsleft" runat="server">
                        <ItemTemplate>                        
                    <li>
                    <div class="catgimg2_container"> <a href="pages/single.html">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                                     </a> </div>
                    <h2 class="catg_titile"><a href="#"><%# Eval("Heading") %></a></h2>
                    <div class="comments_box"> <span class="meta_date"><%# Eval("NewsDate") %></span> <span class="meta_comment"><a href="#">No Comments</a></span> <span class="meta_more"><a  href="#">Read More...</a></span>
                    <p><%# Eval("Subheading") %></p>
                        </div>
                  </li>
                            </ItemTemplate>
                        </asp:Repeater>
                </ul>
                <ul class="small_catg wow fadeInDown">
                    <asp:Repeater ID="rptrightsports" runat="server">
                        <ItemTemplate>
                               <li>
                    <div class="media"> <a class="media-left" href="#">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                        </a>

                                      
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#"><%# Eval("Heading") %> </a></h4>
                        <div class="comments_box"> <span class="meta_date"><%# Eval("NewsDate") %></span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                      </div>
                    </div>
                  </li>
                        </ItemTemplate>
                    </asp:Repeater>
               
                 
                </ul>
              </div>
            </div>
            <div class="fashion_category">
              <div class="single_category">
                <div class="single_category wow fadeInDown">
                  <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a class="title_text" href="#">Entertainment</a> </h2>
                  <ul class="fashion_catgnav wow fadeInDown">
                      <asp:Repeater ID="rptentertainment" runat="server">
                          <ItemTemplate>
                            <li>
                      <div class="catgimg2_container"> <a href="#">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                                       </a> </div>
                      <h2 class="catg_titile"><a href="#"><%# Eval("Heading") %></a></h2>
                      <div class="comments_box"> <span class="meta_date"><%# Eval("NewsDate") %></span> <span class="meta_comment"><a href="#">No Comments</a></span> <span class="meta_more"><a  href="#">Read More...</a></span> 
                      <p><%# Eval("Subheading") %></p>
                          </div>
                    </li>
                              </ItemTemplate>
                      </asp:Repeater>
                  
                  </ul>
                  <ul class="small_catg wow fadeInDown">
                      <asp:Repeater ID="rptrightenterta" runat="server">
                          <ItemTemplate>
                            <li>
                      <div class="media wow fadeInDown"> <a class="media-left" href="#">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                                         </a>
                        <div class="media-body">
                          <h4 class="media-heading"><a href="#"><%# Eval("Heading") %> </a></h4>
                          <div class="comments_box"> <span class="meta_date"><%# Eval("NewsDate") %></span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                        </div>
                      </div>
                    </li>
</ItemTemplate>
                      </asp:Repeater>
                  
                   
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="technology_catrarea">
            <div class="single_category">
              <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a class="title_text" href="#">Technology</a> </h2>
              <div class="business_category_left">
                <ul class="fashion_catgnav wow fadeInDown">
                    <asp:Repeater ID="rptlefttechno" runat="server">
                        <ItemTemplate>

                          <li>
                    <div class="catgimg2_container"> <a href="#">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                                     </a> </div>
                    <h2 class="catg_titile"><a href="#"><%# Eval("Heading") %></a></h2>
                    <div class="comments_box"> <span class="meta_date"><%# Eval("NewsDate") %></span> <span class="meta_comment"><a href="#">No Comments</a></span> <span class="meta_more"><a  href="#">Read More...</a></span> </div>
                    <p><%# Eval("Subheading") %></p>
                  </li>
                            </ItemTemplate>
                    </asp:Repeater>
                
                </ul>
              </div>
              <div class="business_category_right">
                <ul class="small_catg wow fadeInDown">
                    <asp:Repeater ID="rptrighttechno" runat="server">
                        <ItemTemplate>
                             <li>
                    <div class="media wow fadeInDown"> <a class="media-left" href="#">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                                       </a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#"><%# Eval("Heading") %> </a></h4>
                        <div class="comments_box"> <span class="meta_date"><%# Eval("NewsDate") %></span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                      </div>
                    </div>
                  </li>
                        </ItemTemplate>
                    </asp:Repeater>
                 
                
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4">
        <div class="content_bottom_right">
          <div class="single_bottom_rightbar">
            <h2>Culture</h2>
            <ul class="small_catg popular_catg wow fadeInDown">
                <asp:Repeater ID="rptculture" runat="server">
                    <ItemTemplate>
                         <li>
                <div class="media wow fadeInDown"> <a href="#" class="media-left">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                                   </a>
                  <div class="media-body">
                    <h4 class="media-heading"><a href="#"><%# Eval("Heading") %> </a></h4>
                    <p><%# Eval("Subheading") %> </p>
                  </div>
                </div>
              </li>
                    </ItemTemplate>
                </asp:Repeater>
             
             
            </ul>
          </div>
          <div class="single_bottom_rightbar">
            <ul role="tablist" class="nav nav-tabs custom-tabs">
              <li class="active" role="presentation"><a data-toggle="tab" role="tab" aria-controls="home" href="#mostPopular">Most Popular</a></li>
              <li role="presentation"><a data-toggle="tab" role="tab" aria-controls="messages" href="#recentComent">Recent Comment</a></li>
            </ul>
            <div class="tab-content">
              <div id="mostPopular" class="tab-pane fade in active" role="tabpanel">
                <ul class="small_catg popular_catg wow fadeInDown">
                    <asp:Repeater ID="rptpopular" runat="server">
                        <ItemTemplate>
                               <li>
                    <div class="media wow fadeInDown"> <a class="media-left" href="#">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                                                       </a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#"><%# Eval("Heading") %> </a></h4>
                        <p><%# Eval("Subheading") %> </p>
                      </div>
                    </div>
                  </li>
                        </ItemTemplate>
                    </asp:Repeater>
               
               
                </ul>
              </div>
              <div id="recentComent" class="tab-pane fade" role="tabpanel">
                <ul class="small_catg popular_catg">
                  <li>
                    <div class="media wow fadeInDown"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        
          <div class="single_bottom_rightbar wow fadeInDown">
            <h2>Popular Lnks</h2>
            <ul>
              <li><a href="#">Facebook</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Linked In</a></li>
              <li><a href="#">Instagram</a></li>
              <li><a href="#">Login</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
    </div>
<footer id="footer">
  <div class="footer_top">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="single_footer_top wow fadeInLeft">
            <h2>Flicker Images</h2>
            <ul class="flicker_nav">
                <asp:Repeater ID="rptflicker" runat="server">
                    <ItemTemplate>
              <li><a href="#">
                  <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' />

                  </a></li>

                    </ItemTemplate>
                </asp:Repeater>
             
            </ul>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="single_footer_top wow fadeInDown">
            <h2>Labels</h2>
            <ul class="labels_nav">
              <li><a href="#">sports</a></li>
              <li><a href="#">Business</a></li>
              <li><a href="#">entertainment</a></li>
              <li><a href="#">business</a></li>
              <li><a href="#">culture</a></li>
              <li><a href="#">Technology</a></li>
              <li><a href="#">weather</a></li>
              <li><a href="#">politics</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="single_footer_top wow fadeInRight">
            <h2>About Us</h2>
            <p>It is a Portal where user can browse, share and can discuss via commenting over the news, issues and various topics. It also provides newsfeed to registered users to let them be updated.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer_bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <div class="footer_bottom_left">
            <p>Copyright &copy; 2045 <a href="index.html">magExpress</a></p>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <div class="footer_bottom_right">
            <p>Developed BY Wpfreeware</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
       
        </form>
<script src="assets/js/jquery.min.js"></script> 
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/wow.min.js"></script> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/custom.js"></script>

    
</body>
</html>
