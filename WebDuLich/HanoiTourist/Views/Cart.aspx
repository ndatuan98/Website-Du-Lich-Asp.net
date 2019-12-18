<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="HanoiTourist.Views.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div class="row" style="background-color: #FFFFFF; padding-bottom: 20px;padding-top: 20px;">
        <div class ="col-md-8" style="background-color: rgba(0,135,255,.3);">
            <div style="background-color: rgba(0,135,255,.3);">
                <asp:DataList runat="server" ID="ListCart">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td width="30%">
                                <asp:Image  runat="server" ImageUrl='<%#Eval("Image") %>' Width="100%"/>
                            </td>
                            <td style="padding-left: 10px;">
                                <p>
                                    <h5>(TOUR)
                                        <asp:Label runat="server" Text='<%#Eval("NAME_TOUR") %>'></asp:Label>
                                    </h5>
                                </p>
                                <p>
                                    <img src="../images/traveler.png" />Điểm khởi hành <asp:Label runat="server" Text='<%# Eval("DEPARTURE ") %>'></asp:Label>
                                </p>
                                <p>
                                    <img src="../images/icon12.png" />Phương tiện <asp:Label runat="server" Text='<%# Eval("VEHICLE") %>'></asp:Label>
                                </p>
                                <p>
                                    <img src="../images/primary.png" />Số chỗ trống <asp:Label runat="server" Text='<%# Eval("SEATS") %>'></asp:Label>
                                </p>
                                <p>
                                    <img src="../images/2.png" />Thời gian <asp:Label runat="server" Text='<%# Eval("SCHEDULE_TOUR ") %>'></asp:Label>
                                </p>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
            
            <div>
                <h5>THÔNG TIN LIÊN HỆ</h5>
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
                <asp:Button  runat="server" ID="btnThanhToan" Text="Thanh toán" CssClass="btn-primary"/>
            </div>
        </div>
        <div class="col-md-4">

        </div>
    </div>
</asp:Content>
