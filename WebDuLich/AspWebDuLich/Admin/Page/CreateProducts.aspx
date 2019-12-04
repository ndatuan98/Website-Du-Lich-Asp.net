<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/AdminLayout.Master" AutoEventWireup="true" CodeBehind="CreateProducts.aspx.cs" Inherits="BTL1.Admin.Page.CreateProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">

      <title>Thêm mới mặt hàng</title>

      <!-- Custom fonts for this template-->
      <link href="../Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

      <!-- Custom styles for this template-->
      <link href="../admin/css/sb-admin-2.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class=" h3 text-gray-900 mb-4">Thêm mới mặt hàng</h1>
     <div class="p-5">
            <form class="user">
                <div class="form-group col-sm-8">
                    <asp:TextBox  runat="server" class="form-control form-control-user" id="txtId" placeholder="Mã hàng"></asp:TextBox>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox runat="server" class="form-control form-control-user" id="txtName" placeholder="Tên hàng"></asp:TextBox>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox runat="server" class="form-control form-control-user" id="txtPrice" placeholder="Giá (VNĐ)"></asp:TextBox>
                </div>
                    <div class="form-group col-sm-8">
                        <asp:TextBox runat="server" class="form-control form-control-user" id="txtDetails" placeholder="Chi tiết "></asp:TextBox>
                    </div>
                <div class="form-group col-sm-8">
                        <asp:TextBox runat="server" class="form-control form-control-user" id="TextBox1" placeholder="Hình ảnh về sản phẩm "></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-8">
                        <asp:DropDownList runat="server" class="form-control form-control-user" id="CategoryId"  placeholder="Danh mục "></asp:DropDownList>
                    </div>
                <div class="form-group row">
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <asp:TextBox  class="form-control form-control-user" id="txtVAT" placeholder="Thuế VAT(%)" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:DropDownList runat="server"  class="form-control form-control-user" id="txtTopHot" ></asp:DropDownList>
                    </div>
                </div>
                <div class ="form-group col-sm-8">
                    <h5>Trạng thái</h5>
                    <asp:DropDownList runat="server" ID="Status">
                    </asp:DropDownList>
                </div>
                <div class="col-sm-8">
                    <asp:Label runat="server" ID="txtThongbao"></asp:Label>
                </div><br />
                <div class="col-sm-8">
                    <asp:Button runat="server" Text="Thêm sản phẩm" class="btn btn-primary btn-user btn-block" >
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
