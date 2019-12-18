<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HanoiTourist.Views.Home" %>
<asp:Content  ContentPlaceHolderID="head" runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Trang chủ</title>

  <!-- Custom fonts for this template-->
  <link href="../content/css/style.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../admin/css/sb-admin-2.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Conten2" runat="server" ContentPlaceHolderID="ContentPlaceHolderID1">
     <div class="col-md-12" style="padding-left: 0px;">
        <script src="../content/Scripts/jssor.slider-28.0.0.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            window.jssor_1_slider_init = function() {

                var jssor_1_options = {
                  $AutoPlay: 1,
                  $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                  },
                  $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                  }

                };

                var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                /*#region responsive code begin*/

                var MAX_WIDTH = 1549;

                function ScaleSlider() {
                    var containerElement = jssor_1_slider.$Elmt.parentNode;
                    var containerWidth = containerElement.clientWidth;

                    if (containerWidth) {

                        var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                        jssor_1_slider.$ScaleWidth(expectedWidth);
                    }
                    else {
                        window.setTimeout(ScaleSlider, 30);
                    }
                }

                ScaleSlider();

                $Jssor$.$AddEvent(window, "load", ScaleSlider);
                $Jssor$.$AddEvent(window, "resize", ScaleSlider);
                $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
                /*#endregion responsive code end*/
            };
        </script>
        <style>
            /* jssor slider loading skin double-tail-spin css */

            .jssorl-004-double-tail-spin img {
                animation-name: jssorl-004-double-tail-spin;
                animation-duration: 1.2s;
                animation-iteration-count: infinite;
                animation-timing-function: linear;
            }

            @keyframes jssorl-004-double-tail-spin {
                from {
                    transform: rotate(0deg);
                }

                to {
                    transform: rotate(360deg);
                }
            }


            .jssorb051 .i {position:absolute;cursor:pointer;}
            .jssorb051 .i .b {fill:#fff;fill-opacity:0.5;stroke:#000;stroke-width:400;stroke-miterlimit:10;stroke-opacity:0.5;}
            .jssorb051 .i:hover .b {fill-opacity:.7;}
            .jssorb051 .iav .b {fill-opacity: 1;}
            .jssorb051 .i.idn {opacity:.3;}

            /*jssor slider arrow skin 051 css*/
            .jssora051 {display:block;position:absolute;cursor:pointer;}
            .jssora051 .a {fill:none;stroke:#fff;stroke-width:360;stroke-miterlimit:10;}
            .jssora051:hover {opacity:.8;}
            .jssora051.jssora051dn {opacity:.5;}
            .jssora051.jssora051ds {opacity:.3;pointer-events:none;}
        </style>
        <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
            <!-- Loading Screen -->
            <div data-u="loading" class="jssorl-004-double-tail-spin" style="position:absolute;top:0px;left:0px;text-align:center;background-color:rgba(0,0,0,0.7);">
                <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/double-tail-spin.svg" />
            </div>
            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
                <%--<asp:DataList ID="ListBanner" runat="server">
                    <ItemTemplate>
                        <asp:Image runat="server" ImageUrl='<%#Eval("Image") %>' data-u="image" Width="100%"/>
                    </ItemTemplate>
                </asp:DataList>--%>
                <div>
                    <img data-u="image" src="../images/banner1.jpg" />
                </div>
                <div>
                    <img data-u="image" src="../images/banner2.jpg" />
                </div>
                <div>
                    <img data-u="image" src="../images/banner3.jpg" />
                </div>
                <a data-u="any" href="https://www.jssor.com" style="display:none">web design</a>
            </div>
            <!-- Bullet Navigator -->
            <div data-u="navigator" class="jssorb051" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
                <div data-u="prototype" class="i" style="width:16px;height:16px;">
                    <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                        <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                    </svg>
                </div>
            </div>
            <!-- Arrow Navigator -->
            <div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
                </svg>
            </div>
            <div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
                </svg>
            </div>
       
        <script type="text/javascript">jssor_1_slider_init();
        </script>
     </div>

    <!--TÌM KIẾM -->
    <div style="width: 101%; background-color: #FFFFFF;padding: 10px;">
        <div class="col-md-10" style="background-color: #FFFFFF; padding-left: 240px;">
            <h4><u>TÌM KIẾM TOUR</u></h4>
            <form runat="server" style="width: 100%;padding-top: 10px;">
                <asp:DropDownList runat="server" Width="17%" Height="35px" ID="DrDiemXuatPhat">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList runat="server" Width="17%" Height="35px" ID="DrDich">

                </asp:DropDownList>
                <asp:DropDownList runat="server" Width="17%" Height="35px" ID="DrLichTrinh">

                </asp:DropDownList>
                <asp:TextBox TextMode="Date" runat="server" Width="17%" Height="35px" ID="NgayThang"></asp:TextBox>
                <asp:DropDownList runat="server" Width="17%" Height="35px" ID="DrKhoangGia">

                </asp:DropDownList>
                <asp:Button ForeColor="#FFFFFF" Text="Tìm kiếm" runat="server" CssClass="btn btn-warning" Height="35px" OnClick="Unnamed2_Click"/>
            </form>
            
        </div>
    </div>
    <!--DỊCH VỤ CỦA CHÚNG TÔI -->
    <div style="background-color:#F1F1F1;width: 101%;">
        <h3 style="text-align: center;">DỊCH VỤ CỦA CHÚNG TÔI</h3>
        <div class="col-md-10">

        </div>
    </div>
    <!--HOT TOUR  -->
    <div style="background-color: #FFF;padding-top: 10px;width: 101%;">
        <div class="col-md-10" style="padding-left: 250px;padding-bottom: 10px;">
            <u><h3 >HOT TOUR</h3></u>
        </div>
        <div>
            <div class="row" style="margin-right:0px; background-color: #FFF;">
            <asp:DataList runat="server" ID="ListHotTour" RepeatColumns="5">
                <ItemTemplate>
                    <div class="form-Tour" style="background-color: #FFF; padding-left:0px; padding-left: 8px;width:20%;box-sizing:border-box;border-radius: 2px; width:100%;">
		                <div class="hover14 column" style="padding: 1px;height:390px;border:1px solid #808080;">
			                <div class="agile_top_brand_left_grid">
				                <div class="agile_top_brand_left_grid1">
                                    <asp:HyperLink ID="imag" runat="server" ImageUrl='<%#Eval("Image") %>' ImageWidth="292px" ImageHeight="260px"  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ></asp:HyperLink>
					                <figure id="formTour" style="margin:10px;">
						                <div class="snipcart-item block" >
							                <div class="snipcart-thumb" >
                                               <center>
                                                   <h4>
                                                       <asp:HyperLink runat="server" Text='<%#Eval("NAME_TOUR") %>'  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ForeColor="#000000" ></asp:HyperLink>
                                                   </h4>
                                               </center> 
								                <p>
                                                    <img  src="../images/traveler.png" width="14px" height="14px"/>
                                                    <asp:Label runat="server" Text='<%#Eval("VEHICLE") %>'> </asp:Label>
								                </p>
                                                <p>
                                                    <img src="../images/date.png"/>
                                                    <asp:Label runat="server" Text='<%#Eval("DEPARTURE_DATE") %>'> </asp:Label>
                                                </p>
							                </div>
							                <div class="snipcart-details top_brand_home_details" style="height:70px;">
								                <form action="#" method="post" style="padding-left: 175px; position:relative; bottom: 50px;">
									                <fieldset>
                                                       <label style="margin-bottom:0px;">Giá từ</label><br />
                                                       <asp:Label runat="server" Text='<%#Eval("ADULT_FARE") %>'> </asp:Label><br />
										                <input type="submit" name="submit" value="Giữ chỗ" style="color: #FFF;" class="btn btn-warning"/>
									                </fieldset>
								                </form>
							                </div>
						                </div>
					                </figure>
				                </div>
			                </div>
		                </div>
	                </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
            <div style="text-align: center; padding: 15px;color: #FFF;">
                 <asp:HyperLink runat="server" Text="Xem thêm" CssClass="btn btn-primary" NavigateUrl="ListTour.aspx?Country_ID=0"></asp:HyperLink>
            </div>
           
        </div>
        
    </div>
    <!--DANH MỤC TOUR -->
    <!--TOUR TRONG NƯỚC -->
    <div>
        <div style="background-color: #FFF;padding-top: 10px;width: 101%;">
        <div class="col-md-10" style="padding-left: 250px;padding-bottom: 10px;">
            <u><h3 >TOUR TRONG NƯỚC</h3></u>
        </div>
        <div>
            <div class="row" style="margin-right:0px; background-color: #FFF;">
            <asp:DataList runat="server" ID="ListTourTN" RepeatColumns="5">
                <ItemTemplate>
                    <div class="form-Tour" style="background-color: #FFF; padding-left:0px; padding-left: 8px;width:20%;box-sizing:border-box;border-radius: 2px; width:100%;">
		                <div class="hover14 column" style="padding: 1px;height:390px;border:1px solid #808080;">
			                <div class="agile_top_brand_left_grid">
				                <div class="agile_top_brand_left_grid1">
                                    <asp:HyperLink ID="imag" runat="server" ImageUrl='<%#Eval("Image") %>' ImageWidth="292px" ImageHeight="260px"  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ></asp:HyperLink>
					                <figure id="formTour" style="margin:10px;">
						                <div class="snipcart-item block" >
							                <div class="snipcart-thumb" >
                                               <center>
                                                   <h4>
                                                       <asp:HyperLink runat="server" Text='<%#Eval("NAME_TOUR") %>'  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ForeColor="#000000" ></asp:HyperLink>
                                                   </h4>
                                               </center> 
								                <p>
                                                    <img  src="../images/traveler.png" width="14px" height="14px"/>
                                                    <asp:Label runat="server" Text='<%#Eval("VEHICLE") %>'> </asp:Label>
								                </p>
                                                <p>
                                                    <img src="../images/date.png"/>
                                                    <asp:Label runat="server" Text='<%#Eval("DEPARTURE_DATE") %>'> </asp:Label>
                                                </p>
							                </div>
							                <div class="snipcart-details top_brand_home_details" style="height:70px;">
								                <form action="#" method="post" style="padding-left: 175px; position:relative; bottom: 50px;">
									                <fieldset>
                                                       <label style="margin-bottom:0px;">Giá từ</label><br />
                                                       <asp:Label runat="server" Text='<%#Eval("ADULT_FARE") %>'> </asp:Label><br />
										                <input type="submit" name="submit" value="Giữ chỗ" style="color: #FFF;" class="btn btn-warning"/>
									                </fieldset>
								                </form>
							                </div>
						                </div>
					                </figure>
				                </div>
			                </div>
		                </div>
	                </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
            <div style="text-align: center; padding: 15px;color: #FFF;">
                 <asp:HyperLink runat="server" Text="Xem thêm" CssClass="btn btn-primary" NavigateUrl="ListTour.aspx?Country_ID=1"></asp:HyperLink>
            </div>
           
        </div>
        
    </div>
    </div>
    <!-- TOUR NƯỚC NGOÀI -->
    <div>
        <div style="background-color: #FFF;padding-top: 10px;width: 101%;">
        <div class="col-md-10" style="padding-left: 250px;padding-bottom: 10px;">
            <u><h3 >TOUR NƯỚC NGOÀI</h3></u>
        </div>
        <div>
            <div class="row" style="margin-right:0px; background-color: #FFF;">
            <asp:DataList runat="server" ID="ListTourNN" RepeatColumns="5">
                <ItemTemplate>
                    <div class="form-Tour" style="background-color: #FFF; padding-left:0px; padding-left: 8px;width:20%;box-sizing:border-box;border-radius: 2px; width:100%;">
		                <div class="hover14 column" style="padding: 1px;height:390px;border:1px solid #808080;">
			                <div class="agile_top_brand_left_grid">
				                <div class="agile_top_brand_left_grid1">
                                    <asp:HyperLink ID="imag" runat="server" ImageUrl='<%#Eval("Image") %>' ImageWidth="292px" ImageHeight="260px"  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ></asp:HyperLink>
					                <figure id="formTour" style="margin:10px;">
						                <div class="snipcart-item block" >
							                <div class="snipcart-thumb" >
                                               <center>
                                                   <h4>
                                                       <asp:HyperLink runat="server" Text='<%#Eval("NAME_TOUR") %>'  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ForeColor="#000000" ></asp:HyperLink>
                                                   </h4>
                                               </center> 
								                <p>
                                                    <img  src="../images/traveler.png" width="14px" height="14px"/>
                                                    <asp:Label runat="server" Text='<%#Eval("VEHICLE") %>'> </asp:Label>
								                </p>
                                                <p>
                                                    <img src="../images/date.png"/>
                                                    <asp:Label runat="server" Text='<%#Eval("DEPARTURE_DATE") %>'> </asp:Label>
                                                </p>
							                </div>
							                <div class="snipcart-details top_brand_home_details" style="height:70px;">
								                <form action="#" method="post" style="padding-left: 175px; position:relative; bottom: 50px;">
									                <fieldset>
                                                       <label style="margin-bottom:0px;">Giá từ</label><br />
                                                       <asp:Label runat="server" Text='<%#Eval("ADULT_FARE") %>'> </asp:Label><br />
										                <input type="submit" name="submit" value="Giữ chỗ" style="color: #FFF;" class="btn btn-warning"/>
									                </fieldset>
								                </form>
							                </div>
						                </div>
					                </figure>
				                </div>
			                </div>
		                </div>
	                </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
            <div style="text-align: center; padding: 15px;color: #FFF;">
                 <asp:HyperLink runat="server" Text="Xem thêm" CssClass="btn btn-primary"  NavigateUrl="ListTour.aspx?Country_ID=2"></asp:HyperLink>
            </div>
           
        </div>
        
    </div>
    </div>
    <!-- SLIDE CỜ CÁC NƯỚC-->
    <div>

    </div>
</asp:Content>