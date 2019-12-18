<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="HanoiTourist.Views.Library" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div style="background-color: #FFFFFF; width: 100%; padding-top: 20px;padding-bottom: 20px; border:2px solid #808080; ">
        <h4 style="padding-left: 240px; padding-bottom: 10px;">HÌNH ẢNH</h4>
        <asp:DataList runat="server" ID="ListHinhAnh" RepeatColumns="5" Width="100%"> 
            <ItemTemplate>
                <asp:Image runat="server" ImageUrl='<%#Eval("image") %>' Width="300px"/>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="background-color: #FFFFFF; width: 100%; padding-top: 20px;padding-bottom: 20px;border:2px solid #808080; ">
        <h4 style="padding-left: 240px; padding-bottom: 10px;">VIDEO</h4>
        <asp:DataList runat="server" ID="ListVideo" RepeatColumns="5" Width="100%"> 
            <ItemTemplate>
                <asp:Image runat="server" ImageUrl='<%#Eval("image") %>' Width="300px"/>
            </ItemTemplate>
        </asp:DataList>
    </div>
    
</asp:Content>
