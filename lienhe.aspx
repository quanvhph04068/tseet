﻿<%@ Page Title="Liên Hệ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top">
        <div style="margin-bottom:30px;">
            <iframe style="position:relative;z-index:999;" width="100%" height="300" src="https://maps.google.com/maps?q=FPT Poly, Hà Nội - 100000&t=&z=13&ie=UTF8&iwloc=B&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a class="google-map-code" href="http://www.embedgooglemap.net" id="get-map-data">FPT Poly, Hà Nội - 100000</a><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></iframe>
        </div>
        <div class="row">
            <div class="col-xs-6 col-md-4">
           <div class="footer-block widget_text text-3"><h3>FAME SIX VIET NAM</h3>			<div class="textwidget">Thời trang mùa hè <br>
            <i class="glyphicon glyphicon-home"></i> FPT POLYTECHNIC HÀ NỘI<br>
            <i class="glyphicon glyphicon-phone-alt"></i> 0966884735<br>
            <i class="glyphicon glyphicon-phone"></i>  0966884735 - Đỗ Quang Trung<br>
               <i class="glyphicon glyphicon-phone"></i>  0966884735 - Phạm Minh Tiến<br>
               <i class="glyphicon glyphicon-phone"></i>  999999999 - Vương Hồng Quân<br>
            <i class="glyphicon glyphicon-envelope"></i>  lienhe@nhom6.com<br>
            <p style="margin-top:20px;"><span class="fa fa-facebook-square" style="font-size:40px;color:#818181;"></span> <span class="fa fa-google-plus-circle" style="font-size:40px;color:#818181;"></span> <span class="fa fa-tumblr-square" style="font-size:40px;color:#818181;"></span> <span class="fa fa-twitter-square" style="font-size:40px;color:#818181;"></span></p></div>
            </div>
       </div>
        <div class="col-xs-12 col-md-8">
            <form class="form-horizontal" role="form" method="post" action="index.php">
	            <div class="form-group">
		            <label for="name" class="col-sm-2 control-label">Name</label>
		            <div class="col-sm-10">
			            <input type="text" class="form-control" id="name" name="name" placeholder="First & Last Name" value="">
		            </div>
	            </div>
	            <div class="form-group">
		            <label for="email" class="col-sm-2 control-label">Email</label>
		            <div class="col-sm-10">
			            <input type="email" class="form-control" id="email" name="email" placeholder="example@email.com" value="">
		            </div>
	            </div>
	            <div class="form-group">
		            <label for="message" class="col-sm-2 control-label">Message</label>
		            <div class="col-sm-10">
			            <textarea class="form-control" rows="4" name="message"></textarea>
		            </div>
	            </div>
	            <div class="form-group">
		            <div class="col-sm-10 col-sm-offset-2">
			            <input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
		            </div>
	            </div>
	            <div class="form-group">
		            <div class="col-sm-10 col-sm-offset-2">
			            <! Will be used to display an alert to the user>
		            </div>
	            </div>
            </form>
       </div>      
        </div>
    </div>
</asp:Content>
