<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="ProfileAcc.aspx.cs" Inherits="HanoiTourist.Views.ProfileAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div style="background-color: #fff; width: 100%; text-align: center">
                     <form class="user">
        <table style="width: 100%;">
            <tr>
                <td style="width: 10%;"></td>
                <td style="padding: 10px 0px;">
                    <h4>THÔNG TIN TÀI KHOẢN</h4>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" CssClass="form-control form-control-user" AutoCompleteType="Email" SkinID="exampleInputEmail" aria-describedby="emailHelp" placeholder="Địa chỉ email" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtPhone" TextMode="Phone" CssClass="form-control form-control-user" AutoCompleteType="BusinessPhone" SkinID="exampleInputEmail" aria-describedby="emailHelp" placeholder="Số điện thoại" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control form-control-user" SkinID="exampleInputEmail" aria-describedby="emailHelp" placeholder="Địa chỉ" />
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <asp:TextBox runat="server" ID="txtFullname" CssClass="form-control form-control-user" SkinID="exampleInputEmail" aria-describedby="emailHelp" placeholder="Họ tên" />
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="txtBirthdate" CssClass="form-control form-control-user" placeholder="Ngày sinh" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                        <asp:TextBox runat="server" ID="txtPass" TextMode="Password" CssClass="form-control form-control-user" SkinID="exampleInputPassword" placeholder="Mật khẩu"/>
                            </div>
                            <div class="col-sm-6">
                        <asp:TextBox runat="server" ID="txtRePass" TextMode="Password" CssClass="form-control form-control-user" SkinID="exampleInputPassword" placeholder="Nhập lại mật khẩu"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblThongbao"></asp:Label>
                        </div>
                      <asp:Button runat="server" Text="Cập nhật" CssClass="btn btn-primary btn-user btn-block" OnClick="Update" />
                      <asp:Button runat="server" Text="Quay lại" CssClass="btn btn-basic btn-user btn-block" OnClick="Cancel" />
                   
                </td>
                <td style="padding: 10px 0px;" valign="top">
                    <h4>ĐỔI MẬT KHẨU</h4>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtOldPass" TextMode="Password" CssClass="form-control form-control-user" SkinID="exampleInputPassword" placeholder="Nhập mật khẩu cũ" />
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                        <asp:TextBox runat="server" ID="txtNewPass" TextMode="Password" CssClass="form-control form-control-user" SkinID="exampleInputPassword" placeholder="Mật khẩu mới"/>
                            </div>
                            <div class="col-sm-6">
                        <asp:TextBox runat="server" ID="txtReNewPass" TextMode="Password" CssClass="form-control form-control-user" SkinID="exampleInputPassword" placeholder="Nhập lại mật khẩu mới"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblChangePass"></asp:Label>
                        </div>
                      <asp:Button runat="server" Text="Đổi mật khẩu" CssClass="btn btn-primary btn-user btn-block" OnClick="ChangePass" />
                  
                </td>
                <td style="width: 10%;"></td>
            </tr>
        </table>
          </form>
    </div>
</asp:Content>
