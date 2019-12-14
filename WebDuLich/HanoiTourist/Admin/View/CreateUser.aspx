<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/AdminLayout.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="HanoiTourist.Admin.View.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Tạo tài khoản</title>

  <!-- Custom fonts for this template-->
  <link href="../Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../admin/css/sb-admin-2.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label runat="server" id="ThongBao" ></asp:Label>
    <h1 class=" h3 text-gray-900 mb-4">Tạo tài khoản</h1>
     <div class="p-5">
            <form class="user">
                <div class="form-group row">
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <asp:TextBox  runat="server" class="form-control form-control-user" id="txtId" placeholder="Mã tài khoản(Kiểu số)"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox runat="server" class="form-control form-control-user" id="txtEmail" placeholder="Địa chỉ Email"></asp:TextBox>
                    </div   >
                </div>
                  <div class="form-group col-sm-8">
                        <asp:TextBox runat="server" class="form-control form-control-user" id="txtFullname" placeholder="Họ tên"></asp:TextBox>
                    </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox runat="server" class="form-control form-control-user" id="txtPhone" placeholder="Số điện thoại"></asp:TextBox>
                </div>
                 <div class="form-group col-sm-8">
                        <asp:TextBox runat="server" class="form-control form-control-user" id="txtDateOfBirth" placeholder="Ngày tháng năm sinh"></asp:TextBox>
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
                    <asp:Button runat="server" Text="Tạo tài khoản" class="btn btn-primary btn-user btn-block" OnClick="Unnamed1_Click1" >
                    </asp:Button>
                </div>
                    <hr>
        <%--    <a href="index.html" class="btn btn-google btn-user btn-block">
                <i class="fab fa-google fa-fw"></i> Register with Google
            </a>
            <a href="index.html" class="btn btn-facebook btn-user btn-block">
                <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
            </a>
            </form>
            <hr>
            <div class="text-center">
            <a class="small" href="forgot-password.html">Forgot Password?</a>
            </div>
            <div class="text-center">
            <a class="small" href="login.html">Already have an account? Login!</a>
            </div>--%>
            </form>
      </div>
      <script src="../Admin/vendor/jquery/jquery.min.js"></script>
      <script src="../Admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!-- Core plugin JavaScript-->
      <script src="../Admin/vendor/jquery-easing/jquery.easing.min.js"></script>

      <!-- Custom scripts for all pages-->
      <script src="../Admin/js/sb-admin-2.min.js"></script>

</asp:Content>
