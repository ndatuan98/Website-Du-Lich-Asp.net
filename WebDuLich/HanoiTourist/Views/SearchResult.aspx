<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="HanoiTourist.Views.SearchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div style="background-color: #FFF;padding-top: 10px;">
        <div class="col-md-10" style="padding-left: 250px;padding-bottom: 10px;">
            <u><h3 >KẾT QUẢ TÌM KIẾM</h3></u>
        </div>
        <div>
            <div class="row" style="margin-right:0px; background-color: #FFF; padding-bottom: 30px;">
            <asp:DataList runat="server" ID="ListKetQua" RepeatColumns="5">
                <ItemTemplate>
                    <div class="form-Tour" style="background-color: #FFF; padding-left:0px; padding-left: 8px;width:20%;box-sizing:border-box;border-radius: 2px; width:100%;">
		                <div class="hover14 column" style="padding: 1px;height:390px;border:1px solid #808080;">
			                <div class="agile_top_brand_left_grid">
				                <div class="agile_top_brand_left_grid1">
                                    <asp:HyperLink ID="imagesp" runat="server" ImageUrl='<%#Eval("Image") %>' ImageWidth="292px" ImageHeight="260px"  >HyperLink</asp:HyperLink>
					                <figure id="formTour" style="margin:10px;">
						                <div class="snipcart-item block" >
							                <div class="snipcart-thumb" >
                                               <center>
                                                   <h4><asp:Label runat="server" Text='<%#Eval("NAME_TOUR") %>'></asp:Label></h4>
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
                                                       <asp:Label runat="server" Text='<%#Eval("ADULT_FARE","{0:#,###đ}") %>'> </asp:Label><br />
										                <asp:HyperLink runat="server" ForeColor="#FFFFFF" Text="Giữ chỗ" NavigateUrl='<%# "Cart.aspx?Detail_Id=" + Eval("Detail_ID") %>' class="btn btn-warning"></asp:HyperLink>
									                </fieldset>
								                </form>
							                </div>
                                            <asp:Label runat="server" ID="Test"></asp:Label>
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
</asp:Content>
