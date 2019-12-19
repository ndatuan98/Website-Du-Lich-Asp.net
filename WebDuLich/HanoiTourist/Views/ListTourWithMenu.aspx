﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="ListTourWithMenu.aspx.cs" Inherits="HanoiTourist.Views.ListTourWithMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
          <div>
        <div style="background-color: #FFF;padding-top: 10px;padding-bottom: 20px; width: 100%;">
        <div class="col-md-10" style="padding-left: 250px;padding-bottom: 10px;">
            <u><h3 ><asp:Label runat="server" ID="titleName"></asp:Label></h3></u>
        </div>
        <div>
            <div class="row" style="margin-right:0px; background-color: #FFF;">
            <asp:DataList runat="server" ID="ListTourHienThi" RepeatColumns="5">
                <ItemTemplate>
                    <div class="form-Tour" style="background-color: #FFF; padding-left:0px; padding-left: 8px;width:20%;box-sizing:border-box;border-radius: 2px; width:100%;">
		                <div class="hover14 column" style="padding: 1px;height:450px;border:1px solid #808080;">
			                <div class="agile_top_brand_left_grid">
				                <div class="agile_top_brand_left_grid1">
                                    <asp:HyperLink ID="imag" runat="server" ImageUrl='<%#Eval("Image") %>' ImageWidth="292px" ImageHeight="260px"  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ></asp:HyperLink>
					                <figure id="formTour" style="margin:10px;  width: 305px;">
						                <div class="snipcart-item block" >
							                <div class="snipcart-thumb" >
                                               <center>
                                                   <h4 style="margin-left: -10px; margin-right: 20px;">
                                                       <asp:HyperLink runat="server" Text='<%#Eval("NAME_TOUR") %>'  NavigateUrl='<%#"Detail_Tour.aspx?Detail_Id=" + Eval("Detail_Id") %>' ForeColor="#000000" ></asp:HyperLink>
                                                   </h4>
                                               </center> 
								                <p>
                                                    <img  src="../images/traveler.png" width="14px" height="14px"/>
                                                    <asp:Label runat="server" Text='<%#Eval("VEHICLE") %>'> </asp:Label>
								                </p>
                                                <p>
                                                    <img src="../images/date.png"/>
                                                    <asp:Label runat="server" Text='<%#Eval("DEPARTURE_DATE","{0:d}") %>'> </asp:Label>
                                                </p>
							                </div>
							                <div class="snipcart-details top_brand_home_details" style="height:70px;">
								                <form action="#" method="post" style="padding-left: 175px; position:relative; bottom: 100px; padding-top: 30px;">
									                <fieldset style="padding-left: 175px; position:relative; bottom: 75px; padding-top: 30px;>
                                                       <label style="margin-bottom:0px;">Giá từ</label><br />
                                                       <asp:Label runat="server" ForeColor="#FF0013" Text='<%#Eval("ADULT_FARE","{0:#,###đ}") %>'> </asp:Label><br />
										                <asp:Button ID="btnGiuCho" runat="server" Text="Giữ chỗ" class="btn btn-warning"  ForeColor="#FFFFFF" />
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
            <%--<div style="text-align: center; padding: 15px;color: #FFF;">
                 <asp:HyperLink runat="server" Text="Xem thêm" CssClass="btn btn-primary"  NavigateUrl="ListTour.aspx?Country_ID=2"></asp:HyperLink>
            </div>--%>
           
        </div>
        
    </div>
    </div>
</asp:Content>
