<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="Detail_News.aspx.cs" Inherits="HanoiTourist.Views.Detail_News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div class="col-md-12" style="background-color:#FFFFFF;">
        <div class="col-md-8" style="left:18%;">
            <asp:DataList runat="server" ID="ListDetail_News">
                <ItemTemplate>
                    <h5><asp:Label runat="server" Text='<%#Eval("TITLE") %>'></asp:Label></h5>
                </ItemTemplate>

            </asp:DataList>
        </div>
        
    </div>
</asp:Content>
