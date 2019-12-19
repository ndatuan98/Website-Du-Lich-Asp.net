﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HanoiTourist.Admin.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Đăng nhập</title>

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
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Đăng nhập</h1>
                  </div>
                  <form class="user">
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txtUser" CssClass="form-control form-control-user" AutoCompleteType="Email" SkinID="exampleInputEmail" aria-describedby="emailHelp" placeholder="Nhập địa chỉ email..." />
                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txtPass" TextMode="Password" CssClass="form-control form-control-user" SkinID="exampleInputPassword" placeholder="Nhập mật khẩu..."/>
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Lưu mật khẩu</label>
                      </div>
                    </div>
                      <div class="form-group">
                          <asp:Label runat="server" ID="lblThongbao"></asp:Label>
                      </div>
                      <asp:Button runat="server" Text="Login" CssClass="btn btn-primary btn-user btn-block" OnClick="Unnamed1_Click" />
                    <hr>
                    <%--<a href="#" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>--%>
                    <asp:Button runat="server" Text="Quay lại trang chủ" CssClass="btn btn-google btn-user btn-block" OnClick="GoHome_Click" />
                    <%--<a href="#" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a>--%>
                  </form>
                  <hr>
                  <div class="text-center">
                  <asp:LinkButton runat="server" Text="Quên mật khẩu?" CssClass="small" OnClick="Unnamed_Click" />
                  </div>
                  <div class="text-center">
                  <asp:LinkButton runat="server" Text="Tạo tài khoản!" CssClass="small" OnClick="Unnamed_Click1" />
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
