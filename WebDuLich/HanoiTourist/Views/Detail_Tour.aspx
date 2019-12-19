<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="Detail_Tour.aspx.cs" Inherits="HanoiTourist.Views.Detail_Tour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		* {
  box-sizing: border-box;
}

body {
  padding: 10px;
  background: #f2f2f2;
}
.tabs {
  display: flex;
  flex-wrap: wrap;
  max-width: 700px;
  box-shadow: 0 48px 80px -32px rgba(0,0,0,0.3);
}
.input {
  position: absolute;
  opacity: 0;
}
.label {
  width: 100%;
  padding: 20px 30px;
  background: #FFFFFF;
  cursor: pointer;
  font-weight: bold;
  font-size: 18px;
  color: #4C4C4C;
  transition: background 0.1s, color 0.1s;
}

.label:hover {
  background: #d8d8d8;
}

.label:active {
  background: #ccc;
}

.input:focus + .label {
  box-shadow: inset 0px 0px 0px 3px #2aa1c0;
  z-index: 1;
}

.input:checked + .label {
  background: #0F62AC;
  color: #FFF;
}

@media (min-width: 600px) {
  .label {
    width: auto;
  }
}
.panel {
  display: none;
  padding: 20px 30px 30px;
  background: #fff;
}

@media (min-width: 600px) {
  .panel {
    order: 99;
  }
}

.input:checked + .label + .panel {
  display: block;
}
	</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID1" runat="server">
    <div class="col-md-12" style="width:100%;background-color: #FFFFFF; padding: 10px;">
        <div class="col-md-9" style="padding-left: 150px;">
            <div class="row">
                <div class="col-md-9" style="padding: 10px;">
                    <asp:DataList ID="DetailTour" runat="server">
                        <ItemTemplate>
                            <h4 style="padding: 10px;"><asp:Label runat="server" Text='<%#Eval("NAME_TOUR") %>'></asp:Label></h4>
                          <div class="tabs">
                          <input name="tabs" type="radio" id="tab-1" checked="checked" class="input"/>
                          <label for="tab-1" class="label"><img src="../images/image-icon.png" height="24px" width="24px"/>Thắng cảnh</label>
                          <div class="panel">
                              <h5 style="padding: 10px;">Thắng cảnh</h5>
                            <asp:Image  runat="server" ImageUrl='<%#Eval("image") %>'/>
                          </div>

                          <input name="tabs" type="radio" id="tab-2" class="input"/>
                          <label for="tab-2" class="label"><img src="../images/traveler.png"/ width="24px" height="24px"> Du khách</label>
                          <div class="panel">
                            <h5 style="padding: 10px;">Du khách</h5>
                            <asp:Image  runat="server" ImageUrl='<%#Eval("image1") %>'/>
                          </div>

                          <input name="tabs" type="radio" id="tab-3" class="input"/>
                          <label for="tab-3" class="label"><img src="../images/icon-food.png"/> Ẩm thực</label>
                          <div class="panel">
                            <h5 style="padding: 10px;">Ẩm thực</h5>
                            <asp:Image  runat="server" ImageUrl='<%#Eval("image3") %>'/>
                          </div>
                           <input name="tabs" type="radio" id="tab-4" class="input"/>
                          <label for="tab-4" class="label"><img src="../images/icon18.png" height="24px" width="24px"/> Video</label>
                          <div class="panel">
                                <h5 style="padding: 10px;">Video</h5>
                                <video height="300px" width="auto" controls>
                                    <source src='<%#Eval("Video") %>' type="audio/mp4"/>
                                </video>
                          </div>
                        </div>
                        <div style="padding: 10px;">
                            <h5>Thông tin Tour</h5>
                            <table style="width: 100%; padding: 10px; border:1px solid rgba(0,0,0,.12); margin: 10px;">
                                <tr>
                                    <td style="width: 50%; padding: 10px;"><img src="../images/qr.svg" height="16px" width="16px"/> Mã tour: <asp:Label runat="server" Text='<%# Eval("CODE") %>'></asp:Label></td>
                                    <td style="padding: 10px;"><img src="../images/clock.svg" height="16px" width="16px"/> Thời gian: <asp:Label runat="server" Text='<%# Eval("PERIOD") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="padding: 10px;"><img src="../images/location.svg" height="16px" width="16px"/> Điểm khởi hành: <asp:Label runat="server" Text='<%# Eval("DEPARTURE") %>'></asp:Label></td>
                                    <td style="padding: 10px;"><img src="../images/t-traveler.svg" height="16px" width="16px"/> Phương tiện: <asp:Label runat="server" Text='<%# Eval("VEHICLE") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="padding: 10px;"><img src="../images/location.svg" height="16px" width="16px"/> Điểm đến: <asp:Label runat="server" Text='<%# Eval("DESTINATION") %>'></asp:Label></td>
                                    <td style="padding: 10px;"><img src="../images/hm-avt.svg" height="16px" width="16px"/> Số chỗ trống: <asp:Label runat="server" Text='<%# Eval("SEATS") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="padding: 10px;"><img src="../images/calendar.svg" height="16px" width="16px"/> Ngày khởi hành: <asp:Label runat="server" Text='<%# Eval("DEPARTURE_DATE") %>'></asp:Label></td>
                                    <td style="padding: 10px;"><img src="../images/suitcase.svg" height="16px" width="16px"/> Lịch trình: <asp:Label runat="server" Text='<%# Eval("SCHEDULE_TOUR") %>'></asp:Label></td>
                                </tr>
                            </table>
                        </div>
                         </ItemTemplate>
                    </asp:DataList>
                   
                </div>
                <div class="col-md-3">
                    <div style="text-align: center; border:1px solid rgba(0,0,0,.12);">
                        <asp:Label runat="server" Text="Giá chỉ:"></asp:Label>
                        <asp:DataList runat="server" ID="ListGia">
                            <ItemTemplate>
                            <h5><asp:Label runat="server" Text='<%#Eval("ADULT_FARE","{0:#,###đ}") %>' ForeColor="#ff0000"></asp:Label></h5>
                              <asp:HyperLink runat="server" Text="GIỮ CHỖ"  NavigateUrl='<%#"Cart.aspx?Detail_Id=" + Eval("Detail_Id") %>' ForeColor="#FFFFFF" class="btn btn-warning"  Height="40px" Width="100%" style="margin-top: 10px; margin-bottom: 10px;"></asp:HyperLink>
                              <asp:HyperLink runat="server" Text="ĐĂNG KÝ TƯ VẤN"  NavigateUrl='<%#"Cart.aspx?Detail_Id=" + Eval("Detail_Id") %>' ForeColor="#FFFFFF" class="btn-primary" Height="40px" Width="100%" style="margin-bottom: 10px;padding-top: 10px;"></asp:HyperLink>
                             </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <div style=" border:1px solid rgba(0,0,0,.12); padding-top: 10px;">
                        <div style="padding-left: 5px">
                            <h5 style="padding-bottom: 10px;padding-top: 10px;text-align:center;">MỌI THẮC MẮC XIN VUI LÒNG LIÊN HỆ</h5>
                            <img src="../images/phone.svg" height="16px" width="16px"/> Hotline: 19004518<hr />
                            <img src="../images/mail.svg" height="16px" width="16px"/> Email: sales@hanoitourist.vn<hr />
                            <h5 style="padding-top: 10px;padding-bottom: 10px;">HOẶC ĐỂ LẠI THÔNG TIN</h5>
                            <p>Họ và tên</p>
                            <asp:TextBox runat="server" Height="35px" style="padding-left: 10px;margin-left: 5px;"></asp:TextBox>
                            <p>Email hoặc số điện thoại</p>
                            <asp:TextBox runat="server" Height="35px" style="padding-left: 10px;margin-left: 5px;"></asp:TextBox>
                            <asp:Button runat="server"  Text="Gửi" CssClass="btn-primary" Height="35px" Width="90%" style="margin-top: 10px; margin-bottom: 10px; text-align: center;margin-left:8px;"/>
                        </div>
                        
                    </div>
                </div>

            </div>
        </div>
       
    </div>
    
</asp:Content>
