<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admindash.aspx.cs" Inherits="Admin_Admindash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Admin Dashboard</h2>   
                        <h5>Welcome Jhon Deo , Love to see you back. </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr/>
                  <p class="main-text"  style="color:#f00"   >
                        New Notifications</p>  
                <div class="row">
                     
                <div class="col-md-3 col-sm-6 col-xs-6">    
                       
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-envelope-o"></i>
                </span>
                
                <div class="text-box">
                   
                    
                    <p class="main-text">120 </p>
                    <p class="text-muted">Messages</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">30 </p>
                    <p class="text-muted">News</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-bug"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">02</p>
                    <p class="text-muted">Complaints</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-get-pocket"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">30</p>
                    <p class="text-muted">Ad Request</p>
                </div>
             </div>
		     </div>
			</div>
                 <!-- /. ROW  -->
                <hr>     
                  <p class="main-text" style="color:#f00">
                        Staff Details</p>  
                    <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-user"></i>
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
                    <i class="fa fa-bell-o"></i>
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
                  <p class="main-text" style="color:#f00">
                        Pendings</p>  
                    <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-thumbs-o-up"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">3 </p>
                    <p class="text-muted">ApprovalNews</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-comment-o"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">4</p>
                    <p class="text-muted">MessagesReply</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-bell-o"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">2</p>
                    <p class="text-muted">ComplaintsReply</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-rocket"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">3 </p>
                    <p class="text-muted">Ad Approvals</p>
                </div>
             </div>
		     </div>
			</div>    
                <hr />  
                  <p class="main-text" style="color:#f00">
                        Most Visited News Today</p>  
                  <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-envelope-o"></i>
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
                    <i class="fa fa-bars"></i>
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
                    <i class="fa fa-bell-o"></i>
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
                    <i class="fa fa-film"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">5</p>
                    <p class="text-muted">Entertainments</p>
                </div>
             </div>
		     </div>
			</div>  
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
   
</asp:Content>

