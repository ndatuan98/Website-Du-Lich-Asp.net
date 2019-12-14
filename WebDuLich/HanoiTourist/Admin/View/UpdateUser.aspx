<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/AdminLayout.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="HanoiTourist.Admin.View.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Cập nhật tài khoản</title>

  <!-- Custom fonts for this template-->
  <link href="../Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../admin/css/sb-admin-2.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-gray-900">Mã tài khoản: </h2>
    <h3 class="text-gray-900"><asp:Label ID="IdUser" runat="server" Text="Label"></asp:Label></h3>
        <h1 class=" h3 text-gray-900 mb-4">Cập nhật tài khoản</h1>
     <div class="p-5">
            <form class="user">
                <div class="form-group row">
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <asp:TextBox  runat="server" class="form-control form-control-user" id="txtEmail" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox runat="server" class="form-control form-control-user" id="txtFullname" placeholder="Tên đầy đủ"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox runat="server" class="form-control form-control-user" id="txtPhone" placeholder="Số điện thoại"></asp:TextBox>
                </div>
                    <div class="form-group col-sm-8">
                        <asp:TextBox TextMode="DateTime" runat="server" class="form-control form-control-user" id="txtDateOfBirth" placeholder="Ngày sinh"></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-8">
                        <asp:TextBox runat="server" class="form-control form-control-user" id="txtAdress" placeholder="Địa chỉ"></asp:TextBox>
                    </div>
                <div class="form-group row">
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <asp:TextBox TextMode="Password" class="form-control form-control-user" id="txtPass" placeholder="Mật khẩu" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox runat="server" TextMode="password" class="form-control form-control-user" id="txtRepass" placeholder="Nhập lại mật khẩu"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-8">
                    <asp:Label runat="server" ID="txtThongbao"></asp:Label>
                </div><br />
                <div class="col-sm-8">
                    <asp:Button runat="server" Text="Cập nhật tài khoản" class="btn btn-primary btn-user btn-block" OnClick="Unnamed1_Click">
                    </asp:Button>
                </div>
                    <hr>
            </form>
      </div>
      <script src="../Admin/vendor/jquery/jquery.min.js"></script>
      <script src="../Admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!-- Core plugin JavaScript-->
      <script src="../Admin/vendor/jquery-easing/jquery.easing.min.js"></script>

      <!-- Custom scripts for all pages-->
      <script src="../Admin/js/sb-admin-2.min.js"></script>
</asp:Content>
