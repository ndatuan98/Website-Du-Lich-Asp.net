<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HanoiTourist.Admin.View.ListUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách tài khoản</title>
    <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Custom fonts for this template-->
  <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="../../css/sb-admin-2.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class=" h3 text-gray-900 mb-4">Danh sách tài khoản</h1>
    <asp:GridView runat="server" ID="DanhSachUser" CellPadding="4" Width="100%" AllowPaging="True" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" OnRowDeleting="DanhSachUser_Delete" OnRowEditing="DanhSachUser_Editing" DataKeyNames="ID" OnPageIndexChanging="DanhSachUser_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" Visible="False" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Phone" />
            <asp:BoundField DataField="Fullname" HeaderText="Tên đầy đủ" SortExpression="Fullname" />
            <asp:BoundField DataField="Date_Of_Birth" HeaderText="Ngày sinh" SortExpression="Address" />
            <asp:BoundField DataField="Phone" HeaderText="Số điện thoại" SortExpression="Phone" />
            <asp:BoundField DataField="Address" HeaderText="Địa chỉ" SortExpression="Address" />
            <asp:CommandField EditText="Sửa" ShowEditButton="True" CancelText="Huỷ" UpdateText="Cập nhật" />
            <asp:CommandField DeleteText="Xoá" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
 </asp:Content>