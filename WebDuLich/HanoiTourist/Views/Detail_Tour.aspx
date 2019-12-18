<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="Detail_Tour.aspx.cs" Inherits="HanoiTourist.Views.Detail_Tour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- <link rel="stylesheet" href="../content/css/style_tabs.css">--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div>
         <div class="w3-container">
            <h2>Tabs</h2>
            <p>Tabs are perfect for single page web applications, or for web pages capable of displaying different subjects. Click on the links below.</p>
        </div>

        <div class="w3-bar w3-black" style="button:
            {
                width: 180px;
            }
        ">
            <button class="btn btn-primary" onclick="openCity('ThangCanh')">Thắng cảnh</button><br />
            <button class="btn btn-primary" onclick="openCity('DuKhach')">Du khách</button><br />
            <button class="btn btn-primary" onclick="openCity('AmThuc')">Ẩm thực</button><br />
            <button class="btn btn-primary" onclick="openCity('Video')">Video</button>
        </div>

        <div id="ThangCanh" class="w3-container city">
            <h2>Thắng cảnh</h2>
            <p>London is the capital city of England.</p>
        </div>
        <asp:Label ID="test" runat="server"></asp:Label>

        <div id="DuKhach" class="w3-container city" style="display:none">
            <h2>Du khách</h2>
            <p>Paris is the capital of France.</p> 
        </div>

        <div id="AmThuc" class="w3-container city" style="display:none">
            <h2>Ẩm thực</h2>
            <p>Tokyo is the capital of Japan.</p>
        </div>
        <div id="Video" class="w3-container city" style="display:none">
            <h2>Video</h2>
            <p>Tokyo is the capital of Japan.</p>
        </div>
    <script>
        function openCity(cityName) {
            var i;
            var x = document.getElementsByClassName("city");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            document.getElementById(cityName).style.display = "block";
        }
    </script>

    </div>
    
</asp:Content>
