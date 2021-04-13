<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemUngVien.aspx.cs" Inherits="CPanel.Modules.Admin.ThemUngVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12" style="margin-left:100px">

        <div class="col-xs-3">

        </div>
        <div class="col-xs-3">
            <label style="text-align:end; font-size:16px">Họ và tên</label> 
            <asp:DropDownList ID="drpLoai" CssClass="form-control center-block" Width="200px" style="margin:0px 50px 20px 0px" runat="server"></asp:DropDownList>
        </div>

         <div class="col-xs-3">
            <label style="font-size:16px">Email</label>
             <asp:TextBox ID="email" Height="" CssClass="form-control element_tab_css" Width="300px" runat="server"></asp:TextBox>
        </div>
          <div class="col-xs-3">

        </div>

   </div>

   <div class="col-xs-12" style="margin-left:100px">

         <div class="col-xs-3">

        </div>

        <div class="col-xs-3">
            <label style="font-size:16px">Số điện thoại</label>
            <asp:TextBox ID="TextBox1" TextMode="Phone" CssClass="form-control element_tab_css" Width="150px" runat="server"></asp:TextBox>
        </div>


       <div class="col-xs-3">
            <label style="font-size:16px">Vị trí tuyển dụng</label>
           <asp:DropDownList ID="drpViTri" AutoPostBack="false" CssClass="form-control center-block" Width="200px" style="margin:0px 50px 20px 0px" runat="server"></asp:DropDownList>
        </div>

         <div class="col-xs-3">

        </div>

   </div>

    <div class="col-xs-12" style="margin-left:100px">
           <div class="col-xs-3">
           
        </div>

         <div class="col-xs-3">
            <label style="font-size:16px">Ngày sinh</label>
              <asp:TextBox ID="date" TextMode="Date" CssClass="form-control element_tab_css" Width="150px" runat="server"></asp:TextBox>
         </div>

     

        <div class="col-xs-3">
            <label style="font-size:16px">Mã ứng viên: </label>
            <label></label>
        </div>

        <div class="col-xs-3">
            
        </div>
    
   </div>
            
        

      <%--  <div class="col-xs-4">
            <label>Ngày hoàn thành</label>
            <asp:TextBox ID="dayfinish" TextMode="Date" runat="server"></asp:TextBox>
        </div>--%>

        

    
    
    
    <div class="col-xs-12">
        <div class="col-xs-6">
            <asp:Button ID="btnSave" Text="Save" OnClick="btnSaveUV_Click" 
                CssClass="btn btn-success center_css"
                style="margin-top:20px;
                       margin-left:815px;
                background-image: linear-gradient(to right, #cb2d3e 0%, #ef473a  51%, #cb2d3e  100%);
                padding: 10px 20px;
                text-transform: uppercase;
                transition: 0.5s;
                background-size: 200% auto;
                color: white;            
                box-shadow: 0 0 20px #eee;
                border-radius: 10px;
                display: block;" 
                Width="100px" Height="40px" Font-Size=16px runat="server">
            </asp:Button>
        </div>

        <div class="col-xs-6">
             <asp:Button ID="btnBack" Text="Back" OnClick="btnBack2_Click" 
                CssClass="btn btn-success center_css"
                style="margin-top:20px;
                margin-right:300px;
                background-image: linear-gradient(to right, #00c6ff 0%, #0072ff  51%, #00c6ff  100%);
                padding: 10px 20px;
                text-transform: uppercase;
                transition: 0.5s;
                background-size: 200% auto;
                color: white;            
                box-shadow: 0 0 20px #eee;
                border-radius: 10px;
                display: block;"
                Width="100px" Font-Size="Small" runat="server"></asp:Button>
        </div>
   
    </div>
</asp:Content>
