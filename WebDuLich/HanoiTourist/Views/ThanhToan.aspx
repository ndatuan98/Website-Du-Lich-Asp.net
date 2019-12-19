<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="HanoiTourist.Views.ThanhToan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div class="col-md-12" style="background-color: #FFFFFF; height:300px;padding-top: 20px; text-align: center;">
        <div class="col-md-6" style="border:1px solid #4c4c4c; padding: 10px;left:25%;">
            <h3 style="color:green;padding-bottom: 10PX;">THANH TOÁN THÀNH CÔNG</h3>
            <asp:Button runat="server" Text="Quay về trang chủ" Height="40px" Width="200px" CssClass="btn-primary" style="border-radius: 2px;" OnClick="Unnamed1_Click"/>
        </div>
        
    </div>
</asp:Content>
