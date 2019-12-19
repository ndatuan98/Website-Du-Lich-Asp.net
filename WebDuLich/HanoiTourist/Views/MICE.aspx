<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="MICE.aspx.cs" Inherits="HanoiTourist.Views.MICE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div>
        <div style="background-color: #FFF;padding-top: 10px;padding-bottom: 20px; width: 100%;">
        <div class="col-md-10" style="padding-left: 250px;padding-bottom: 10px;">
            <u><h3 >DỊCH VỤ SỰ KIỆN HỘI THẢO MICE</h3></u>
            <h6>Công ty tổ chức sự kiện Hanoitourist tự hào là một trong những công ty tổ chức sự kiện chuyên nghiệp, uy tín trên địa bàn thành phố Hà Nội. Hotline: 0904555879</h6>
        </div>
        <div>
            <div class="row" style="margin-right:0px; background-color: #FFF;">
            <asp:DataList runat="server" ID="ListTourHienThi" RepeatColumns="5">
                <ItemTemplate>
                    <div class="form-Tour" style="background-color: #FFF; padding-left:0px; padding-left: 8px;width:20%;box-sizing:border-box;border-radius: 2px; width:100%;">
		                <div class="hover14 column" style="padding: 1px;height:450px;border:1px solid #808080;">
			                <div class="agile_top_brand_left_grid">
				                <div class="agile_top_brand_left_grid1">
                                    <asp:HyperLink ID="imag" runat="server" ImageUrl='<%#Eval("Image") %>' ImageWidth="299px" ImageHeight="260px"  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ></asp:HyperLink>
					                <figure id="formTour" style="margin:10px; width: 278px;">
						                <div class="snipcart-item block" >
							                <div class="snipcart-thumb" >
                                               <center>
                                                   <h5 style="margin-left: -10px; margin-right: 20px" >
                                                       <asp:HyperLink runat="server" Text='<%#Eval("NAME_TOUR") %>'  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ForeColor="#000000"  ></asp:HyperLink>
                                                   </h5>
                                               </center> 
                                                <div class="row">
                                                <div class="col-md-6">
								                <p>
                                                    <img  src="../images/traveler.png" width="14px" height="14px"/>
                                                    <asp:Label runat="server" Text='<%#Eval("VEHICLE") %>'> </asp:Label>
								                </p>
                                                <p>
                                                    <img src="../images/date.png"/>
                                                    <asp:Label runat="server" Text='<%#Eval("DEPARTURE_DATE","{0:d}") %>'> </asp:Label>
                                                </p>
                                                </div>
                                                <div class="col-md-6">
                                                    
								                        <form action="#" method="post" style="">
									                        <fieldset>
                                                               <label style="margin-bottom:0px;">Giá từ</label><br />
                                                               <asp:Label runat="server" ForeColor="#FF0013" Text='<%#Eval("ADULT_FARE","{0:#,###đ}") %>'> </asp:Label><br />
										                        <asp:HyperLink runat="server" ForeColor="#FFFFFF" Text="Giữ chỗ" NavigateUrl='<%# "Cart.aspx?Detail_Id=" + Eval("Detail_ID") %>' class="btn btn-warning"></asp:HyperLink>
									                        </fieldset>
								                        </form>
                                                </div>
                                                </div>
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
           
        </div>
        
    </div>
    </div>
</asp:Content>
