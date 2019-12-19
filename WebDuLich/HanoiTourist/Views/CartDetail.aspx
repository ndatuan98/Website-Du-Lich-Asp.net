<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="CartDetail.aspx.cs" Inherits="HanoiTourist.Views.CartDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div class="row" style="background-color: #FFFFFF; padding-bottom: 20px;padding-top: 20px;">
        <div class ="col-md-8" style="background-color: rgba(0,135,255,.3);left: 18%;">
             <center><h5><asp:Label runat="server" ID="txtThongBao" ForeColor="Red"></asp:Label></h5></center>
            <div style="background-color: rgba(0,135,255,.3);">
               
                <asp:DataList runat="server" ID="ListCart">
                <ItemTemplate>
                    <table style="left: 20%;">
                        <tr style="margin: 10px;left: 300px;">
                            <td width="30%">
                                <asp:Image  runat="server" ImageUrl='<%#Eval("Image") %>'  Height="180px" Width="320px"/>
                            </td>
                            <td style="padding-left: 10px;">
                                <p>
                                    <h5>(TOUR)
                                        <asp:Label runat="server" Text='<%#Eval("NAME_TOUR") %>'></asp:Label>
                                    </h5>
                                </p>
                                <p>
                                    <img src="../images/traveler.png"  width="14px" height="14px" /><span> </span><b>Điểm khởi hành:<span> </span> <asp:Label runat="server" Text='<%# Eval("DEPARTURE ") %>' ></asp:Label></b>
                                </p>
                                <p>
                                    <img src="../images/icon12.png"  width="14px" height="14px" /><span> </span>Phương tiện:<span> </span><b><asp:Label runat="server" Text='<%# Eval("VEHICLE") %>'></asp:Label></b> 
                                </p>
                                <p>
                                    <img src="../images/primary.png"  width="14px" height="14px" /><span> </span>Số chỗ trống:<span> </span><b> <asp:Label runat="server" Text='<%# Eval("SEATS") %>'></asp:Label></b>
                                </p>
                                <p>
                                    <img src="../images/2.png"  width="14px" height="14px"/><span> </span>Thời gian:<span> </span><b> <asp:Label runat="server" Text='<%# Eval("SCHEDULE_TOUR ") %>'></asp:Label></b>
                                </p>
                                <p>
                                    <asp:Label runat="server" Text="Số lượng:" ForeColor="#ff0000"></asp:Label><span> </span>
                                    <b><asp:Label runat="server" Text='<%#Eval("count") %>'></asp:Label></b>
                                </p>
                                
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
            <asp:DataList runat="server" ID="ListCartAdd">
                <ItemTemplate>
                   <h1><asp:Label runat="server" Text='<%# Eval("Image") %>'></asp:Label></h1> 
                </ItemTemplate>
            </asp:DataList>
            <div>
                <h5 style="margin-top: 10px;">THÔNG TIN LIÊN HỆ</h5>
                <p>Thông tin có dấu (*) là bắt buộc phải nhập. Xin quý khách vui lòng kiểm tra kỹ thông tin email, điện thoại để tránh bị sai sót.</p>
                <form>
                    <table>
                        <tr>
                            <td>Quý danh(*)</td>
                            <td><asp:DropDownList runat="server" ID="ListQuyDanh" Height="30px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td>Họ và tên(*)</td>
                            <td><asp:TextBox runat="server" Placeholder="Vui lòng nhập tên" ID="txtHoTen" Height="30px" Width="150%"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Quốc gia</td>
                            <td><asp:DropDownList runat="server" ID="ListQuocGia" Height="30px" Width="150%"></asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td>Địa chỉ</td>
                           <td><asp:TextBox runat="server" ID="txtDiaChi" PlaceHolder="Vui lòng nhập địa chỉ" Height="30px" Width="150%" ></asp:TextBox></td> 
                        </tr>
                        <tr>
                            <td>Số điện thoại(*)</td>
                            <td><asp:TextBox runat="server" ID="txtSDT" PlaceHolder="Vui lòng nhập SĐT" Height="30px" Width="150%"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Email(*)</td>
                            <td><asp:TextBox runat="server" TextMode="Email" ID="txtEmail" PlaceHolder="Vui lòng nhập Email" Height="30px" Width="150%"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Nội dung yêu cầus</td>
                            <td><asp:TextBox runat="server" ID="txtNoiDung" PlaceHolder="Vui lòng nhập yêu cầu của bạn" Height="30px" Width="150%"></asp:TextBox></td>
                        </tr>
                    </table>
                </form>
                <asp:Button  runat="server" ID="btnThanhToan" Text="Thanh toán" CssClass="btn-primary"  style="text-align: center;margin: 10px;margin-left: 20px;" Height="40px" Width="170px" OnClick="btnThanhToan_Click"/>
            </div>
        </div>
        <div class="col-md-4">

        </div>
    </div>
</asp:Content>
