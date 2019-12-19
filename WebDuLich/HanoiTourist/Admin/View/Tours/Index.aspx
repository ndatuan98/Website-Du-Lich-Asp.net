<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HanoiTourist.Admin.View.ListTour" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="DanhSachTour" CellPadding="4" Width="100%" AllowPaging="True" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="CODE" HeaderText="Mã Tour" SortExpression="CODE" />
            <asp:BoundField DataField="NAME_TOUR" HeaderText="Tên Tour" SortExpression="NAME_TOUR" />
            <asp:BoundField DataField="DEPARTURE" HeaderText="Khởi Hành" SortExpression="DEPARTURE" />
            <asp:BoundField DataField="DESTINATION" HeaderText="Nơi đến" SortExpression="DESTINATION" />
            <asp:BoundField DataField="PERIOD" HeaderText="Thời Gian" SortExpression="PERIOD" />
            <asp:BoundField DataField="VEHICLE" HeaderText="Phương tiện" SortExpression="VEHICLE" />
            <asp:BoundField DataField="SEATS" HeaderText="Chỗ ngồi" SortExpression="SEATS" />
            <asp:BoundField DataField="SCHEDULE_TOUR" HeaderText="Lịch trình" SortExpression="SCHEDULE_TOUR" />
            <asp:BoundField DataField="CREATED_DATE" HeaderText="Ngày tạo" SortExpression="CREATED_DATE" />
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
