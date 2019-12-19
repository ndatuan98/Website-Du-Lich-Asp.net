<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HanoiTourist.Admin.View.Cart.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class=" h3 text-gray-900 mb-4">Tour chưa xác nhận</h1>
    <asp:GridView runat="server" ID="ListCart" CellPadding="4" Width="100%" AllowPaging="True" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" Visible="False" />
            <asp:BoundField DataField="NAME_TOUR" HeaderText="Tên Tour" SortExpression="Name" />
            <asp:BoundField DataField="ADULT_SEAT" HeaderText="Ghế NL" SortExpression="Adult Seat" />
            <asp:BoundField DataField="CHILD_SEAT" HeaderText="Ghế TE" SortExpression="Child Seat" />
            <asp:BoundField DataField="FULLNAME" HeaderText="Tên đầy đủ" SortExpression="Fullname" />
            <asp:BoundField DataField="ADDRESS" HeaderText="Địa chỉ" SortExpression="Address" />
            <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PHONE" HeaderText="Sđt" SortExpression="Phone" />
            <asp:BoundField DataField="MESSAGE" HeaderText="Lời nhắn" SortExpression="Message" />
            <asp:BoundField DataField="TYPE_NAME" HeaderText="Kiểu TT" SortExpression="TypeName" />
            <asp:BoundField DataField="METHOD_NAME" HeaderText="PTTT" SortExpression="MethodName" />
            <asp:CommandField EditText="Xác nhận" ShowEditButton="True" CancelText="Huỷ" UpdateText="Cập nhật" />
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
