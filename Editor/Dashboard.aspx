<%@ Page Title="" Language="C#" MasterPageFile="~/Editor/Editor.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Editor_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Editor Dashboard</h2>   
                        <h5>Welcome Jhon Deo , Love to see you back. </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr>
                <p class="main-text" style="color:#f00">New Notifications</p>
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-envelope-o"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">120</p>
                    <p class="text-muted">Messages</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-greenfa set-icon ">
                    <i class="fa fa-exclamation-circle "></i>
                </span>
                <div class="text-box">
                    <p class="main-text">30</p>
                    <p class="text-muted">Errors</p>
                </div>
             </div>
		     </div>
                    </div>
              
                   
                 <!-- /. ROW  -->
                <hr> 
                <p class="main-text" style="color:#f00">News Updates- 2 Feb 2017</p>   
                    <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-envelope-o"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">12</p>
                    <p class="text-muted">Posted</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon ">
                    <i class="fa fa-thumbs-o-up"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">30</p>
                    <p class="text-muted">Approved</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-times"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">02</p>
                    <p class="text-muted">Rejected</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-thumbs-down"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">30</p>
                    <p class="text-muted">Unapproved</p>
                </div>
             </div>
		     </div>
			</div>   
                <hr />
                  <p class="main-text" style="color:#f00">Staff Details</p>
                    <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-user""></i>
                </span>
                <div class="text-box">
                    <p class="main-text">2</p>
                    <p class="text-muted">Reporters</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-user"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">4</p>
                    <p class="text-muted">Editors</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-birthday-cake"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">2</p>
                    <p class="text-muted">Birthdays</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-glass"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">2</p>
                    <p class="text-muted">Anniversary</p>
                </div>
             </div>
		     </div>
			</div>  
                <hr />
                  <p class="main-text" style="color:#f00">Pendings</p>
                    <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-exclamation-triangle"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">3</p>
                    <p class="text-muted">News Error</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-comments"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">4</p>
                    <p class="text-muted">MessagesReply</p>
                </div>
             </div>
		     </div>
                    
			</div>  
                <hr />
                  <p class="main-text" style="color:#f00">Most Visited News Today</p>
                    <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-newspaper-o"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">2</p>
                    <p class="text-muted">India News</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-globe"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">3</p>
                    <p class="text-muted">World News</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-hacker-news"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">3</p>
                    <p class="text-muted">Sports News</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-music"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">5</p>
                    <p class="text-muted">Entertainments</p>
                </div>
             </div>
		     </div>
			</div>  
                <hr />   
                  
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
</asp:Content>

