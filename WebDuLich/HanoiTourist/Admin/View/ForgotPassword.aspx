<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="HanoiTourist.Admin.View.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Forgot Password</title>

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server">
        <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-2">Bạn quên mật khẩu?</h1>
                    <p class="mb-4">Nhập địa chỉ email và số điện thoại đăng ký tài khoản của bạn.</p>
                  </div>
                  <form class="user">
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txtUser" CssClass="form-control form-control-user" AutoCompleteType="Email" SkinID="exampleInputEmail" aria-describedby="emailHelp" placeholder="Nhập địa chỉ email..." />
                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control form-control-user" TextMode="Phone" SkinID="exampleInputEmail" aria-describedby="emailHelp" placeholder="Nhập số điện thoại..." />
                    </div>
                      <asp:Button runat="server" CssClass="btn btn-primary btn-user btn-block" Text="Lấy lại mật khẩu" OnClick="Forgot_Button" />
                  </form>
                  <hr>
                  <div class="text-center">
                    <asp:LinkButton runat="server" Text="Tạo tài khoản!" CssClass="small" OnClick="Unnamed_Click" />
                  </div>
                  <div class="text-center">
                  <asp:LinkButton runat="server" Text="Bạn đã có tài khoản? Đăng nhập!" CssClass="small" OnClick="Unnamed_Click1" />
                  </div>
                </div>
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
