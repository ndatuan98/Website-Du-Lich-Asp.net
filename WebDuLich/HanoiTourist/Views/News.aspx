<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/GUILayout.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="HanoiTourist.Views.News" %>
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
                     <div class="tabs">
                          <input name="tabs" type="radio" id="tab-1" checked="checked" class="input"/>
                          <label for="tab-1" class="label"><img src="../images/image-icon.png" height="24px" width="24px"/>Thắng cảnh</label>
                          <div class="panel">
                            <h1>Orange</h1>
                          </div>

                          <input name="tabs" type="radio" id="tab-2" class="input"/>
                          <label for="tab-2" class="label"><img src="../images/traveler.png"/ width="24px" height="24px"> Du khách</label>
                          <div class="panel">
                            <h1>Tangerine</h1>
                            <p>The tangerine (Citrus tangerina) is an orange-colored citrus fruit that is closely related to, or possibly a type of, mandarin orange (Citrus reticulata).</p>
                            <p>The name was first used for fruit coming from Tangier, Morocco, described as a mandarin variety. Under the Tanaka classification system, Citrus tangerina is considered a separate species.</p>
                          </div>

                          <input name="tabs" type="radio" id="tab-3" class="input"/>
                          <label for="tab-3" class="label"><img src="../images/icon-food.png"/> Ẩm thực</label>
                          <div class="panel">
                            <h1>Clemantine</h1>
                            <p>A clementine (Citrus ×clementina) is a hybrid between a mandarin orange and a sweet orange, so named in 1902. The exterior is a deep orange colour with a smooth, glossy appearance. Clementines can be separated into 7 to 14 segments. Similarly to tangerines, they tend to be easy to peel.</p>
                          </div>
                           <input name="tabs" type="radio" id="tab-4" class="input"/>
                          <label for="tab-4" class="label"><img src="../images/icon18.png" height="24px" width="24px"/> Video</label>
                          <div class="panel">
                            <h1>Clemantine</h1>
                            <p>A clementine (Citrus ×clementina) is a hybrid between a mandarin orange and a sweet orange, so named in 1902. The exterior is a deep orange colour with a smooth, glossy appearance. Clementines can be separated into 7 to 14 segments. Similarly to tangerines, they tend to be easy to peel.</p>
                          </div>
                        </div>
                </div>
                <div class="col-md-3">
                    <h3>adkjhsadksdahsdj</h3>
                </div>

            </div>
        </div>
       
    </div>
    
    
</asp:Content>
