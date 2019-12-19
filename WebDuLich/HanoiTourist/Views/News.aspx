<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="HanoiTourist.Views.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
        <div style="background-color: #FFF;padding-top: 10px;padding-bottom: 20px; width: 100%;">
        <div class="col-md-10" style="padding-left: 250px;padding-bottom: 10px;">
            <u><h3 >TIN TỨC</h3></u>
        </div>
        <div>
            <div class="row" style="margin-right:0px; background-color: #FFF;">
            <asp:DataList runat="server" ID="ListTourHienThi" RepeatColumns="5">
                <ItemTemplate>
                    <div class="form-Tour" style="background-color: #FFF; padding-left:0px; padding-left: 8px;width:20%;box-sizing:border-box;border-radius: 2px; width:100%;">
		                <div class="hover14 column" style="padding: 1px;height:450px;border:1px solid #808080;">
			                <div class="agile_top_brand_left_grid">
				                <div class="agile_top_brand_left_grid1">
                                    <asp:HyperLink ID="imag" runat="server" ImageUrl='<%#Eval("Images") %>' ImageWidth="299px" ImageHeight="260px"   ></asp:HyperLink>
					                <figure id="formTour" style="margin:10px; width: 278px;">
						                <div class="snipcart-item block" >
							                <div class="snipcart-thumb" >
                                               <center>
                                                   <h5 style="margin-left: -10px; margin-right: 20px" >
                                                       <asp:HyperLink runat="server" Text='<%#Eval("TITLE") %>'  NavigateUrl='<%#"Detail_News.aspx?Detail_Id=" + Eval("ID") %>' ForeColor="#000000"  ></asp:HyperLink>
                                                   </h5>
                                               </center> 
                                                <div class="row">
                                                <div class="col-md-6">
                                                <p>
                                                    <img src="../images/date.png"/>
                                                    <asp:Label runat="server" Text='<%#Eval("Created_Date","{0:d}") %>'> </asp:Label>
                                                </p>
                                                </div>
                                                <div class="col-md-6">
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
