<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="HanoiTourist.Views.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div class="row" style="background-color: #FFFFFF; padding-bottom: 20px;padding-top: 20px;">
        <div class ="col-md-8" style="background-color: rgba(0,135,255,.3);left: 18%;">
            <div style="background-color: rgba(0,135,255,.3);">
                <asp:DataList runat="server" ID="ListCart">
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnHuyTour" Text="X"  CommandArgument='<%# Eval("ID") %>' OnClick="btnHuyTour_Click"/>
                    <table>
                        <tr style="margin: 10px;">
                            <td width="30%">
                                <asp:Image  runat="server" ImageUrl='<%#Eval("Image") %>'  Height="180px" Width="320px"/>
                            </td>
                            <td style="padding-left: 10px;">
                                <p>
                                    <h5>(TOUR)
                                        <asp:Label runat="server" Text='<%#Eval("NAME_TOUR") %>'></asp:Label>
                                    </h5>
                                    <p>
                                    </p>
                                    <p>
                                        <img src="../images/traveler.png"  width="14px" height="14px" />
                                        <span></span><b>Điểm khởi hành:<span> </span>
                                        <asp:Label runat="server" Text='<%# Eval("DEPARTURE ") %>'></asp:Label>
                                        </b>
                                    </p>
                                    <p>
                                        <img src="../images/icon12.png"  width="14px" height="14px" />
                                        <span></span>Phương tiện:<span> </span><b>
                                        <asp:Label runat="server" Text='<%# Eval("VEHICLE") %>'></asp:Label>
                                        </b>
                                    </p>
                                    <p>
                                        <img src="../images/primary.png"  width="14px" height="14px" />
                                        <span></span>Số chỗ trống:<span> </span><b>
                                        <asp:Label runat="server" Text='<%# Eval("SEATS") %>'></asp:Label>
                                        </b>
                                    </p>
                                    <p>
                                        <img src="../images/2.png"  width="14px" height="14px"/>
                                        <span></span>Thời gian:<span> </span><b>
                                        <asp:Label runat="server" Text='<%# Eval("DEPARTURE_DATE","{0:d}") %>'></asp:Label>
                                        </b>
                                    </p>
                                    <p>
                                        <asp:Label runat="server" ForeColor="#ff0000" Text="Số lượng:"></asp:Label>
                                        <span></span><b>
                                        <asp:Label runat="server" Text='<%#Eval("count") %>'></asp:Label>
                                        </b>
                                    </p>
                                </p>
                                
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
            <h5 style="padding-top:10px;">TỔNG TIỀN: <span> </span><asp:Label runat="server" ID="txtTongTien" ForeColor="Red"></asp:Label></h5>
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
                <asp:Button  runat="server" ID="btnThanhToan" Text="Thanh toán" CssClass="btn-primary" OnClick="btnThanhToan_Click" style="text-align: center;margin: 10px;margin-left: 20px;" Height="40px" Width="170px"/>
            </div>
        </div>
        <div class="col-md-4">

        </div>
    </div>
</asp:Content>
