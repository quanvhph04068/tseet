<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
<!--Home page style-->
<header class="home-bg">
	<div class="overlay-img">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="header-details">
						<h1><b>FAMESIX VIETNAM</b><br> CÁI TÊN NÓI NÊN TẤT CẢ</h1>
						<p>Khẳng định phong cách phái mạnh. Bộ sưu tập mới nhất của FAMESIX.</p>
						<a class="btn btn-danger" href="shop.aspx">XEM NGAY</a>
					</div>
				</div>
			</div>
		</div>
	</div>	
    </header>
    <!-- Sections -->
    <section id="promotion-area" class="sections">
        <div class="container">
            <!-- Example row of columns -->
            <div class="row">
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="promotion">
						
					<h1>SẢN PHẨM<i class="fa fa-circle"></i></h1>
					<p>You’re safe with us. The privacy and security of your financial information is our top priority.</p>
					<a href="shop.aspx"><h4>Xem Ngay<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						
					</div>
				</div>
					
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="promotion">
						
					<h1>ĐANG SALE<i class="fa fa-circle"></i></h1>
					<p>You’re safe with us. The privacy and security of your financial information is our top priority.</p>
					<a href="shop.aspx"><h4>Xem Ngay<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						
					</div>
				</div>
					
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="promotion">
						
					<h1>ĐANG HOT<i class="fa fa-circle"></i></h1>
					<p>You’re safe with us. The privacy and security of your financial information is our top priority.</p>
					<a href="shop.aspx"><h4>Xem Ngay<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						
					</div>
				</div>

            </div>
        </div> <!-- /container -->       
    </section>
    <section id="portfolio-area" class="sections">
            <div class="container">
                <!-- Example row of columns -->
                <div class="row">
					<div class="col-sm-6 col-sm-12 col-xs-12">
						<div class="portfolio">
                            <asp:HyperLink id="computer1" ImageUrl="images/computer.png" Text="" runat="server"/>
						</div>
					</div>
					
					<div class="col-sm-5 col-sm-12 col-xs-12">
						<div class="portfolio">
						
						<div class="item">
						<h1>FAMESIX APP<i class="fa fa-circle"></i></h1>
						<h5>Ứng dụng mua hàng FAMESIX tiện ích</h5>
						<p>Bạn muốn mua hàng FAMESIX nhanh chóng và dễ dàng nhất</p>
						<p>Hãy sử dùng ngay ứng dụng FAMESIX APP trên điện thoại thông minh của bạn.</p>
						<a href="#"><h4>TẢI VỀ<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						</div>
						
						</div>
					</div>

                </div>
            </div> <!-- /container -->       
        </section>
    <section id="our-team" class="sections">
        <div class="container">
            <!-- Example row of columns -->
            <div class="row">
					<div class="team-heading">
						<h1>Team Chúng Tôi<i class="fa fa-circle"></i></h1>
						<p>Dự Án Khởi Nghiệm Hệ THống Bán Hàng Trực Tuyến</p>
					</div>
				
			<div class="team-member">
					
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="team">
                        <asp:HyperLink id="images1" ImageUrl="images/man1.png" Text="" runat="server"/>
						<div class="team-info">
							<h2>Minh Tien PMT</h2>
							<h5>Phát Triển Sản Phẩm</h5>
							<p>Quản trị viên, quản lý sản phẩm, chăm sóc khách hàng.</p>
						</div>
					</div>	
				</div>
					
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="team">
                        <asp:HyperLink id="images2" ImageUrl="images/man2.png" Text="" runat="server"/>
						<div class="team-info">
							<h2>Trung Do</h2>
							<h5>Quản Lý Sản Phẩm</h5>
							<p>Quản trị viên, quản lý sản phẩm, chăm sóc khách hàng.</p>
						</div>
					</div>	
				</div>
					
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="team">
                        <asp:HyperLink id="images3" ImageUrl="images/man3.png" Text="" runat="server"/>
						<div class="team-info">
							<h2>Quan Vuong</h2>
							<h5>Chăm Sóc Khách Hàng</h5>
							<p>Quản trị viên, quản lý sản phẩm, chăm sóc khách hàng.</p>
						</div>
					</div>	
				</div>
					
			</div>	
					
			</div>
                
        </div> <!-- /container -->       
    </section>
</asp:Content>
