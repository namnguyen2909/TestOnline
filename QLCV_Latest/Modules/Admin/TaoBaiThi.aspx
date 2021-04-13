<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TaoBaiThi.aspx.cs" Inherits="CPanel.Modules.QuanLyBaiThi.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-xs-6 text-center">
        <label id="loaibaithi">Loại bài thi</label>
   </div>

    <div class="col-xs-6 text-center">
        <label id="mucdobaithi">Mức độ bài thi</label>
    </div>

    <div class="col-xs-6 text-center">
        <asp:DropDownList ID="drpMenus" AutoPostBack="false" CssClass="form-control element_tab_css center-block" style="Width:200px" runat ="server"></asp:DropDownList>
    </div>

    <div class="col-xs-6 text-center">
        <asp:DropDownList ID="DropDownList1" AutoPostBack="false" CssClass="form-control element_tab_css center-block" Width="200px" runat ="server"></asp:DropDownList>
    </div>

    <div class="col-xs-12">
        <div id="debai-text">
            <label>ĐỀ BÀI</label>
        </div>
    </div>

    <div class="col-xs-12">
        <div class ="col-xs-6" id="tracnghiem">
            <label>TRẮC NGHIỆM</label>
        </div>
        <div class ="col-xs-6" id="tuluan">
            <label>TỰ LUẬN</label>
        </div>
    </div>

   <div class="col-xs-12">
       <div class="col-xs-3" id="socauhoide1">
           <label>Số câu hỏi dễ:</label>
       </div>
       <div class="col-xs-3"id="txt_socauhoide1">
           <asp:TextBox runat="server" CssClass="form-control element_tab_css" Width="150px" placeholder ="Nhập số lượng"></asp:TextBox>
       </div>
       <div class="col-xs-3" id="socauhoide2">
           <label>Số câu hỏi dễ:</label>
       </div> 
       <div class="col-xs-3"id="txt_socauhoide2">
            <asp:TextBox runat="server" CssClass="form-control element_tab_css" Width="150px" placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
   </div>

    <div class="col-xs-12">
       <div class="col-xs-3" id="socauhoibthg1">
           <label>Số câu hỏi trung bình: </label>
       </div>
        <div class="col-xs-3" id="txt_socauhoibthg1">
             <asp:TextBox runat="server" CssClass="form-control element_tab_css" Width="150px" placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
        <div class="col-xs-3" id="socauhoibthg2">
           <label>Số câu hỏi trung bình: </label>
           </div>
         <div class="col-xs-3"id="txt_socauhoibthg2" >
             <asp:TextBox runat="server" CssClass="form-control element_tab_css" Width="150px" placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
   </div>

    <div class="col-xs-12">
       <div class="col-xs-3" id="socauhoikho1">
           <label>Số câu hỏi khó: </label>
       </div>
        <div class="col-xs-3" id="txt_socauhoikho1">
             <asp:TextBox runat="server" CssClass="form-control element_tab_css" Width="150px" placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
        <div class="col-xs-3" id="socauhoikho2">
           <label>Số câu hỏi khó: </label>
           </div>
         <div class="col-xs-3"id="txt_socauhoikho2" >
             <asp:TextBox runat="server" CssClass="form-control element_tab_css" Width="150px" placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
   </div>

    <div class="col-xs-12 text-center" id="thoigianthi">
        <label id="tgthi">Thời gian thi:</label>
        <asp:TextBox runat="server" CssClass="form-control element_tab_css" style="width:80px;margin-left:896px;margin-top:10px"></asp:TextBox>
        <label id="phut">phút</label>
    </div>

    
    <div class="col-xs-12">
            <asp:Button ID="Button1" Text="Next" OnClick="btnOK_Click" 
                CssClass="btn btn-success center_css"
                style="margin-top:20px;
                       margin-left:885px;
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
    <%--<div class="bg_100pecents_css row_css">

        <div class="col-xs-3">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_BAT_DAU_DK") %></label>
            <dx:ASPxDateEdit runat="server" ID="dtNgayBatDauDK" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>
        </div>
        <div class="col-xs-3">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_KET_THUC_DK") %></label>
            <dx:ASPxDateEdit runat="server" ID="dtNgayKetThucDK" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>
        </div>

        <div class="col-xs-3">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGUOI_CHU_TRI") %></label>
            <asp:DropDownList ID="drpNguoiChuTri" AutoPostBack="false" CssClass="form-control element_tab_css required_css" runat="server"></asp:DropDownList>
            <span class="validation_css" id="<%=drpNguoiChuTri.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_CHON_NGUOI_CHU_TRI") %></span>
        </div>

        <div class="col-xs-3">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("KET_QUA_CV") %></label>
            <asp:DropDownList ID="drpKetQuaCV" AutoPostBack="false" CssClass="form-control element_tab_css" runat="server"></asp:DropDownList>
        </div>
    </div>

    <div class="bg_100pecents_css row_css">
        <div class="col-xs-12">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("GHI_CHU") %></label>
            <asp:TextBox ID="txtGhiChu" TextMode="MultiLine" CssClass="form-control element_tab_css" Rows="10" runat="server"></asp:TextBox>
        </div>
    </div>--%>

    <!-------------------------------BEGIN: display Message Box-------------------------------------------------------->
    <div id="DIV_MESSAGE" visible="false" runat="server">
        <div class="pop_up_background_css"></div>
        <div class="pop_up_info_css pop_up_message_css" runat="server">
            <asp:Button ID="btlClosePopUp" Text="X" CssClass="btn btn-danger close_css" runat="server" />
            <span class="message_box_css">
                <asp:Literal ID="ltMessageContent" runat="server"></asp:Literal></span>
        </div>
    </div>
    <!-------------------------------END: display Message Box-------------------------------------------------------->

    <!--BEGIN: hidden tag-->
    <div class="hidden_css">
        <asp:TextBox ID="txtObjectID" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtParentObjectID" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtHeThongID" runat="server"></asp:TextBox>
        <asp:Button ID="btnSave" runat="server"></asp:Button>


    </div>
    <!--END: hidden tag-->
    <style>
        #loaibaithi{
            font-size:16px;
            margin-top:20px;
        }
        #mucdobaithi{
            font-size:16px;
            margin-top:20px;
        }
        #debai-text{
           margin:50px 0px 0px 0px;
           font-size:26px;
           text-align:center;
        }
        #tracnghiem{
            text-align:center;
             margin:50px 0px 0px 0px;
             font-size:18px;
             color:orangered;
        }
        #tuluan{
            text-align:center;
            margin:50px 0px 0px 0px;
            font-size:18px;
            color:orangered;
        }
        #socauhoide1{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #socauhoide2{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #txt_socauhoide1{
            text-align:left;
            font-size:16px;
            margin:28px 0px 0px 0px;
         }
        #txt_socauhoide2{
           text-align:left;
           font-size:16px;
           margin:28px 0px 0px 0px;
         }
        #socauhoibthg1{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #socauhoibthg2{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #txt_socauhoibthg1 {
            text-align: left;
            font-size: 16px;
            margin: 28px 0px 0px 0px;
        }
        #txt_socauhoibthg2 {
            text-align: left;
            font-size: 16px;
            margin: 28px 0px 0px 0px;
        }
        #socauhoikho1{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #socauhoikho2{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #txt_socauhoikho1 {
            text-align: left;
            font-size: 16px;
            margin: 28px 0px 0px 0px;
        }
        #txt_socauhoikho2 {
            text-align: left;
            font-size: 16px;
            margin: 28px 0px 0px 0px;
        }
        #thoigianthi{
            text-align:center;
            margin:50px 0px 0px 0px;
            font-size:16px;
        }
        #btn_ok {
            text-align: center;
            margin: 30px 0px 0px 0px;
        }
        #phut{
            margin-right:5px;
        }
    </style>
</asp:Content>
