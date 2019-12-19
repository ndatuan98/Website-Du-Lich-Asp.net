<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/AdminLayout.Master" AutoEventWireup="true" CodeBehind="CreateTour.aspx.cs" Inherits="HanoiTourist.Admin.View.Tours.CreateTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Thêm tour</title>

    <!-- Custom fonts for this template-->
    <link href="../Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../admin/css/sb-admin-2.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class=" h3 text-gray-900 mb-4">Thêm tour</h1>
    <div class="p-5">
        <form class="user">
            <div class="form-group row">
                <div class="col-sm-4 mb-3 mb-sm-0">
                    <asp:TextBox runat="server" class="form-control form-control-user" ID="txtCode" placeholder="Mã Tour"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox runat="server" class="form-control form-control-user" ID="txtName" placeholder="Tên Tour"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-4 mb-3 mb-sm-0">
                    <asp:TextBox runat="server" class="form-control form-control-user" ID="txtDeparture" placeholder="Khởi hành"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox runat="server" class="form-control form-control-user" ID="txtDestionation" placeholder="Nơi đến"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-4 mb-3 mb-sm-0">
                    <asp:TextBox runat="server" class="form-control form-control-user" ID="txtPeriod" placeholder="Thời gian"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox runat="server" class="form-control form-control-user" ID="txtVeicle" placeholder="Phương tiện"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-4 mb-3 mb-sm-0">
                    <asp:TextBox runat="server" class="form-control form-control-user" ID="txtSeats" placeholder="Chỗ ngồi"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox runat="server" class="form-control form-control-user" ID="txtChedule" placeholder="Lịch trình"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-4 mb-3 mb-sm-0">
                    <asp:TextBox runat="server" class="form-control form-control-user" ID="txtCreatedate" placeholder="Ngày tạo"></asp:TextBox>
                </div>
            </div>
            <div class="col-sm-8">
                <asp:Label runat="server" ID="txtThongbao"></asp:Label>
            </div>
            <br />

            <div class="col-sm-8">
                <asp:Button runat="server" Text="Tạo Tour" class="btn btn-primary btn-user btn-block" OnClick="Unnamed1_Click1"></asp:Button>
                <asp:Button runat="server" Text="Quay lại" class="btn btn-basic btn-user btn-block" OnClick="Unnamed2_Click"></asp:Button>
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
