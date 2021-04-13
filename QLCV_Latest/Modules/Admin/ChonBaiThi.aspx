<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ChonBaiThi.aspx.cs" Inherits="CPanel.Modules.Admin.ChonBaiThi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12">
        <div class="col-xs-6 text-center" id="loaibaithi">
            <label>Loại bài thi</label>
        </div>

        <div class="col-xs-6 text-center" id="mucdobaithi">
            <label>Mức độ bài thi</label>
         </div>
    </div>

        <div class ="col-xs-12">
            <div class="col-xs-6">
                 <asp:DropDownList ID="drpLoai" CssClass="form-control center-block" Width="200px"  runat="server"></asp:DropDownList>
            </div>

            <div class="col-xs-6">
                <asp:DropDownList ID="drpMucDo" CssClass="form-control center-block" Width="200px" runat="server"></asp:DropDownList>
            </div>
        </div>

    <div class="col-xs-12 text-center" id ="baithi">
        <label>Bài thi</label>
    </div>

    <div class="col-xs-12">
        <asp:DropDownList ID="drpBaiThi" CssClass="form-control center-block"  Width="200px" runat="server"></asp:DropDownList>
    </div>

    <div class="col-xs-12">
        <div class="col-xs-6">
            <asp:Button ID="btnSave" Text="Save" OnClick="btnSave_Click" 
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
             <asp:Button ID="btnBack" Text="Back" OnClick="btnBack_Click" 
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
    
         <%--.btn-grad {background-image: linear-gradient(to right, #00c6ff 0%, #0072ff  51%, #00c6ff  100%)}
         .btn-grad {
            margin: 10px;
            padding: 15px 45px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }--%>
    
        <%-- .btn-grad {background-image: linear-gradient(to right, #cb2d3e 0%, #ef473a  51%, #cb2d3e  100%)}
         .btn-grad {
            margin: 10px;
            padding: 15px 15px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }--%>
         
         
    <style>
        #loaibaithi{
            font-size:16px;
            font-weight:bold;
           
        }
        #mucdobaithi{
            font-size:16px;
            font-weight:bold;
            
        }
        #baithi{
            font-size:16px;
            font-weight:bold;
        }
    </style>
    
</asp:Content>
