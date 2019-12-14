<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/AdminLayout.Master" AutoEventWireup="true" CodeBehind="ListUser.aspx.cs" Inherits="BTL1.Admin.Page.ListUser" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="DanhSachUser" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" OnRowEditing="DanhSachUser_RowEditing" OnSelectedIndexChanged="DanhSachUser_SelectedIndexChanged" OnRowDeleting="DanhSachUser_RowDeleting" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Email" HeaderText="Tên đăng nhập" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Fullname" HeaderText="Tên đầy đủ" SortExpression="Fullname" />
            <asp:BoundField DataField="Date_Of_Birth" HeaderText="Ngày sinh" SortExpression="Address" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Phone" />
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
