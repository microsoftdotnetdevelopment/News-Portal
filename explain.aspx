<%@ Page Language="C#" AutoEventWireup="true" CodeFile="explain.aspx.cs" Inherits="explain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="shalom/css/style.css" />
</head>
<body>
  
 <div id="page-wrapper">
  <!-- Content-Wrapper -->
  <div id="content-wrapper" class="clearfix">
    <div id="header">
      
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                  <div id="left">
      <h2><%# Eval("Heading") %></h2>
      <h4><%# Eval("Newsdate") %> <a href="#"></a></h4>
      <p><span class="initial"></span><span class="meta">Posted in the Category: <a href="#">Webdesign</a>, <a href="#">Graphicdesign</a>, <a href="#">Webdevelopment</a><br />
        <br />
        <a href="#">423 Comments</a><br />
        Readed: 1215<br />
        Today: 532</span><%# System.IO.File.ReadAllText(Eval("Descriptio").ToString()) %>  </p>
      <p> 
    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' Height="200px" Width="520px"/>

      </p>
      <blockquote> <%# Eval("Subheading") %>  </blockquote>
      <p> </p>
      <p> <a href="blog.html">Write a Comment</a> (423 existing) &rarr; </p>
   
	  
        
       
   
    </div>
            </ItemTemplate>
        </asp:Repeater>
  
   <div id="right">
        <h2>The Editor</h2>
       <asp:Repeater ID="Repeater2" runat="server">
           <ItemTemplate>
               
      <h3><%# Eval("edi") %></h3>
<%--      <p> <%# System.IO.File.ReadAllText(Eval("desc").ToString()) %> <br />--%>
        <a href="#">read more about me</a> &rarr; </p>
           </ItemTemplate>
       </asp:Repeater>
     
   
      
    </div>
  
    
	</div>
  </div>
</div>
</body>
</html>
