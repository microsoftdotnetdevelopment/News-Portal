<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="slider_area">
      <div class="slider">
        <ul class="bxslider">
            <asp:Repeater ID="rptslider" runat="server">
                <ItemTemplate>
                <li> 
   <asp:Image ID="imgnews" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' Height="320" Width="920" ToolTip='<%# Eval("Heading") %>' />
                    </li>
                    </ItemTemplate>
            </asp:Repeater>
          
          
        </ul>
      </div>
    </div>
    <div class="content_area">
      <div class="main_content floatleft">
        <div class="left_coloum floatleft">
          <div class="single_left_coloum_wrapper">
            <h2 class="title">From Around the world</h2>
            <a class="more" href="#">more</a>
              <asp:Repeater ID="rptWorldNews" runat="server">
                  <ItemTemplate>
                      <div class="single_left_coloum floatleft">
                          <asp:Image ID="imgnews" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' Height="99" Width="143" />
              <h3><%# Eval("Heading") %></h3>
              <p><%#Eval("Subheading") %></p>
              <a class="readmore" href="#">read more</a> </div> 
                  </ItemTemplate>
              </asp:Repeater>
              </div>
           
      
          <div class="single_left_coloum_wrapper">
            <h2 class="title">From Around the India</h2>
            <a class="more" href="#">more</a>
              <asp:Repeater ID="rptIndiaNews" runat="server">
                   <ItemTemplate>
                     <div class="single_left_coloum floatleft">
                         <asp:Image ID="ingnews1" runat="server"  ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' Height="99" Width="143" ToolTip='<%# Eval("Heading") %>' />
              <h3><%# Eval("Heading") %></h3>
              <p><%# Eval("SubHeading") %></p>
              <a class="readmore" href="#">read more</a> </div>
                    </ItemTemplate>
              </asp:Repeater>
         </div>
           
        
          <div class="single_left_coloum_wrapper gallery">
            <h2 class="title">Gallery</h2>
            <a class="more" href="#">more</a>
              <asp:repeater runat="server" ID="rptimage">
                      <ItemTemplate>
                   <asp:Image ID="imggallery" runat="server"  ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' Height="90" Width="130" />
                              </ItemTemplate>
              </asp:repeater>
             </div>

          <div class="single_left_coloum_wrapper single_cat_left">
            <h2 class="title">Technology/Gadget News</h2>
            <a class="more" href="#">more</a>
              <asp:Repeater ID="rptTech" runat="server">
                     <ItemTemplate>
                    <div class="single_cat_left_content floatleft" style="width:170px;height:140px;">
              <h3><%# Eval("head")%> </h3>
              <p><%# Eval("Sub") %></p>                         
              <p class="single_cat_left_content_meta">by <%# Eval("edi") %>  <span></span> |  29 comments</p>
            </div>
                            </ItemTemplate>
              </asp:Repeater>
          
         
          </div>
        </div>
        <div class="right_coloum floatright">
          <div class="single_right_coloum">
            <h2 class="title">Business India/World</h2>
            <ul>
                <asp:Repeater ID="rptbusiindwor" runat="server">
                        <ItemTemplate>
                       <li>
                <div class="single_cat_right_content">
                  <h3><%# Eval("Heading")%></h3>
                  <p><%# Eval("SubHeading") %></p>
                  <p class="single_cat_right_content_meta"><a href="#"><span>read more</span></a> 3 hours ago</p>
                </div>
              </li>
                                </ItemTemplate>
                </asp:Repeater>          
                        </ul>
            <a class="popular_more" href="#">more</a> </div>

          <div class="single_right_coloum">
            <h2 class="title">Entertainment India/World</h2>
              <asp:Repeater ID="rptenterindwor" runat="server">
                   <ItemTemplate>
                       <div class="single_cat_right_content editorial"> 
                           <asp:Image ID="imgente" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' Height="99" Width="143"/>
              <h3><%# Eval("Heading") %></h3>
            </div>
                        </ItemTemplate>
              </asp:Repeater>
       
           
          </div>
        </div>
      </div>
      <div class="sidebar floatright">
        <div class="single_sidebar"> <img src="images/add1.png" alt="" /> </div>
        <div class="single_sidebar">
          <div class="news-letter">
            <h2>Ask for Newsletter</h2>
            <p>Sign up to receive our free newsletters!</p>
            <form action="#" method="post">
              <input type="text" value="Name" id="name" />
              <input type="text" value="Email Address" id="email" />
              <input type="submit" value="SUBMIT" id="form-submit" />
            </form>
            <p class="news-letter-privacy">We do not spam. We value your privacy!</p>
          </div>
        </div>
        <div class="single_sidebar">
          <div class="popular">
            <h2 class="title">Trending</h2>
            <ul>
                <asp:Repeater ID="rpttrend" runat="server">
                     <ItemTemplate>
                      <li>
                <div class="single_popular">
                  <p><%# Eval("NewsDate")%></p>
                  <h3><%# Eval("Heading")%><a href="#" class="readmore">Read More</a></h3>
                </div>
              </li>
                          </ItemTemplate>
                </asp:Repeater>
            
             
            </ul>
            <a class="popular_more">more</a> </div>
        </div>
        <div class="single_sidebar"> <img src="images/add1.png" alt="" /> </div>
        <div class="single_sidebar">
          <h2 class="title">ADD</h2>
          <img src="images/add2.png" alt="" /> </div>
      </div>
    </div>
    </asp:Content>




