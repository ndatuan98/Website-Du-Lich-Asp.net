<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HanoiTourist.Admin.View.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Đăng ký</title>

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server">
        <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Tạo tài khoản!</h1>
              </div>
              <form class="user">
                <div class="form-group">
                    <asp:TextBox ID="txtEmail" TextMode="Email" AutoCompleteType="Email" runat="server" CssClass="form-control form-control-user" SkinID="exampleInputEmail" placeholder="Địa chỉ email"/>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control form-control-user" SkinID="exampleInputEmail" placeholder="Họ tên"/>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                      <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control form-control-user" SkinID="exampleInputPassword" placeholder="Mật khẩu" />
                  </div>
                  <div class="col-sm-6">
                      <asp:TextBox ID="txtRePass" runat="server" TextMode="Password" CssClass="form-control form-control-user" SkinID="exampleRepeatPassword" placeholder="Nhập lại mật khẩu" />
                  </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="lblThongbao"></asp:Label>
                </div>
                  <asp:Button runat="server" CssClass="btn btn-primary btn-user btn-block" Text="Đăng ký tài khoản" OnClick="CreateAccount" />
                <hr>
                <a href="#" class="btn btn-google btn-user btn-block">
                  <i class="fab fa-google fa-fw"></i> Register with Google
                </a>
                <a href="#" class="btn btn-facebook btn-user btn-block">
                  <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                </a>
              </form>
              <hr>
              <div class="text-center">
                  <asp:LinkButton runat="server" Text="Quên mật khẩu?" CssClass="small" OnClick="Unnamed_Click1" />
              </div>
              <div class="text-center">
                  <asp:LinkButton runat="server" Text="Bạn đã có tài khoản? Đăng nhập!" CssClass="small" OnClick="Unnamed_Click" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>
    </form>
</body>
</html>
