<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HanoiTourist.Views.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div class="col-md-12" style="padding-top: 10px; padding-top: 10px;" >
        <div class="col-md-8" style="height: auto;left: 20%;">
            <div class="row">
                <div class="col-md-8" style="color: #FFFFFF;">
                    <img src="../images/logo.png" width="197" height="67"/>
                    <h5>Hanoitourist*Uy tín*Chất lượng</h5>
                    <p style="color:#FFFFFF;"><img src="../images/icon12.png" width="16px" height="16px"/> Trụ sở chính: 18 Lý Thường Kiệt, Ph.Phan Chu Trinh, Q.Hoàn Kiếm, Hà Nội</p>
                    <p style="color:#FFFFFF;"><img src="../images/icon12.png"  width="16px" height="16px"/> Văn phòng giao dịch: 134 Nguyễn Thái Học, Ba Đình</p>
                    <p style="color:#FFFFFF;"><img src="../images/www.png"  width="16px" height="16px"/> Website: http://www.hanoitourist.vn</p>
                    <p style="color:#FFFFFF;"><img src="../images/icon14.png"  width="16px" height="16px"/> Email: sales@hanoitourist.vn</p>
                    <p style="color:#FFFFFF;"><img src="../images/icon15.png"  width="16px" height="16px"/> Fax: 19004518</p>
                    <p style="color:#FFFFFF;"><img src="../images/icon1.png"  width="16px" height="16px"/>Phòng Du Lịch Nước Ngoài 1: 19004518 (Ext: 218)</p>
                    <p style="color:#FFFFFF;"><img src="../images/icon1.png"  width="16px" height="16px"/>Phòng Du Lịch Nước Ngoài 2: 19004518 (Ext: 258)</p>
                    <p style="color:#FFFFFF;"><img src="../images/icon1.png"  width="16px" height="16px"/>Phòng Du Lịch Nội Địa: 19004518 (Ext: 108)</p>
                    <p style="color:#FFFFFF;"><img src="../images/icon1.png"  width="16px" height="16px"/>Phòng Giao Dịch Q.Ba Đình: 19004518 (Ext: 508)</p>
                    <p style="color:#FFFFFF;"><img src="../images/www.png"  width="16px" height="16px"/> Hệ Thống Website: Du Lịch Hàn Quốc Du Lịch Nhật Bản Du Lịch Châu Âu</p>
                    <h4>THƯƠNG HIỆU DUY NHẤT CỦA DU LỊCH HÀ NỘI TỪ NĂM 1963</h4>
                </div>
                <div class="col-md-4" style="background-color: #FFFFFF; margin-top:20px; margin-bottom: 20px; border-radius: 3px;">
                    <h4 style="padding-top: 8px; color:#0F62AC;">THÔNG TIN LIÊN HỆ</h4>
                    <p>Họ và tên/ Tên công ty</p>
                    <asp:TextBox runat="server" PlaceHolder="  Nhập họ hoặc tên công ty của bạn" Height="35px" Width="100%"></asp:TextBox>
                    <p>Email</p>
                    <asp:TextBox runat="server" PlaceHolder="  Nhập mail của bạn" Height="35px" Width="100%"></asp:TextBox>
                    <p>Số điện thoại</p>
                    <asp:TextBox runat="server" PlaceHolder="  Nhập số điện thoại của bạn" Height="35px" Width="100%"></asp:TextBox>
                    <p>Số khách trong đoàn</p>
                    <asp:TextBox runat="server" PlaceHolder="  Nhập số kháhc trong đoàn của bạn" Height="35px" Width="100%"></asp:TextBox>
                    <p>Tiêu đề</p>
                    <asp:TextBox runat="server" PlaceHolder="  Nhập tiêu đề" Height="35px" Width="100%"></asp:TextBox>
                    <p>Nội dung lời nhắn</p>
                    <asp:TextBox runat="server" TextMode="MultiLine" PlaceHolder="  Nhập nội dung" Width="100%"></asp:TextBox>
                   <center><asp:Button runat="server" Text="Gửi yêu cầu" CssClass="btn-primary" Height="35px" Width="80%" style="margin-bottom: 10px; text-align: center;"/></center> 
                </div>
            </div>
        </div>
    </div>
</asp:Content>
