﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="HeThong_Edit.aspx.cs" enableEventValidation="false" Inherits="CPanel.Modules.HeThong_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="main_contain_css main_contain_css_1">
            <div class="page-header"><h1 class="panel-title"><%=CPanel.Commons.TitleConst.getTitleConst("TITLE_PAGE_THONG_TIN_NHAC_VIEC") %></h1></div>        

            <div class="control_css">            
                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" OnClick="btnCancel_Click"></asp:Button>
                <input type="button" class="btn btn-warning btn_Validation_Save_CSS"  />
            </div>

            <div class="bg_100pecents_css">
                <div class="col-xs-12">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("TEN_HE_THONG") %></label>
                    <asp:TextBox ID="txtTenHeThong" CssClass="form-control element_tab_css required_css" runat="server"></asp:TextBox>
                    <span class="validation_css" id="<%=txtTenHeThong.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_NHAP_TEN_HE_THONG") %></span>
                </div>

                <div class="col-xs-12">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("MO_TA") %></label>
                    <asp:TextBox ID="txtMoTa" CssClass="form-control element_tab_css required_css" runat="server"></asp:TextBox>
                    <span class="validation_css" id="<%=txtMoTa.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_NHAP_MO_TA") %></span>
                </div>
            </div>
        
            <div class="bg_100pecents_css row_css">
                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("PLHD") %></label>
                    <asp:DropDownList ID="drpPLHD" AutoPostBack="false" CssClass="form-control element_tab_css" runat ="server"></asp:DropDownList>                    
                </div>

                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("DO_UU_TIEN") %></label>
                    <asp:TextBox ID="txtDoUuTien" CssClass="form-control element_tab_css" runat="server"></asp:TextBox>
                </div>

                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("MAN_DAY") %></label>
                    <asp:TextBox ID="txtManDay" CssClass="form-control element_tab_css" runat="server"></asp:TextBox>
                </div>

                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("TRANG_THAI") %></label>
                    <asp:DropDownList ID="drpTrangThai" AutoPostBack="false" CssClass="form-control element_tab_css" runat ="server"></asp:DropDownList>                    
                </div>
            </div>

            <div class="page-header"><h1 class="panel-title"><%=CPanel.Commons.TitleConst.getTitleConst("THONG_TIN_KHACH_HANG") %></h1></div>
            <div class="bg_100pecents_css row_css">
                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_NHAN_YEU_CAU") %></label>                            
                    <dx:ASPxDateEdit runat="server" ID ="dtNgayKHGuiYeuCau" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>                    
                </div>
                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_YEU_CAU_HOAN_THANH") %></label>                            
                    <dx:ASPxDateEdit runat="server" ID ="dtNgayKHYeuCauHT" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>                    
                </div>

            </div>

            <div class="page-header"><h1 class="panel-title"><%=CPanel.Commons.TitleConst.getTitleConst("THOI_GIAN_THUC_HIEN") %></h1></div>
            
            <div class="page-header"><h1 class="panel-title"><%=CPanel.Commons.TitleConst.getTitleConst("THUC_HIEN") %></h1></div>

            <div class="page-header"><h1 class="panel-title"><%=CPanel.Commons.TitleConst.getTitleConst("TAI_LIEU") %></h1></div>

            <div class="bg_100pecents_css row_css">                

                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_BAT_DAU") %></label>                            
                    <dx:ASPxDateEdit runat="server" ID ="dtNgayBatDau" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>                    
                </div>
                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_KET_THUC") %></label>                            
                    <dx:ASPxDateEdit runat="server" ClientInstanceName="dtNgayKetThuc_Client" ID ="dtNgayKetThuc" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>
                    <span class="validation_css" id="<%=txtNgayKetThuc_Validate.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_CHON_NGAY_KET_THUC") %></span>
                </div>

                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGUOI_CHU_TRI") %></label>                            
                    <asp:DropDownList ID="drpNguoiChuTri" AutoPostBack="false" CssClass="form-control element_tab_css required_css" runat ="server"></asp:DropDownList>
                    <span class="validation_css" id="<%=drpNguoiChuTri.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_CHON_NGUOI_CHU_TRI") %></span>
                </div>

                <div class="col-xs-3">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("KET_QUA_CV") %></label>
                    <asp:DropDownList ID="drpKetQuaCV" AutoPostBack="false" CssClass="form-control element_tab_css" runat ="server"></asp:DropDownList>                    
                </div>
            </div>

            <div class="bg_100pecents_css row_css">
                <div class="col-xs-12">
                    <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("GHI_CHU") %></label>
                    <asp:TextBox ID="txtGhiChu" TextMode="MultiLine" CssClass="form-control element_tab_css" Rows="10" runat="server"></asp:TextBox>
                </div>
            </div>
            
            <!-------------------------------BEGIN: display Message Box-------------------------------------------------------->
            <div id="DIV_MESSAGE" visible="false" runat="server">
                <div  class="pop_up_background_css"></div>
                <div class="pop_up_info_css pop_up_message_css" runat="server">
                    <asp:Button ID="btlClosePopUp" OnClick="btlClosePopUp_Click" Text="X" CssClass="btn btn-danger close_css" runat="server" />
                    <span class="message_box_css"><asp:Literal ID="ltMessageContent" runat="server"></asp:Literal></span>
                </div>
            </div>            
            <!-------------------------------END: display Message Box-------------------------------------------------------->

            <!--BEGIN: hidden tag-->
                <div class="hidden_css">
                    <asp:TextBox ID="txtObjectID" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click">  </asp:Button>
                    <asp:TextBox ID="txtNgayKetThuc_Validate" runat="server" CssClass="required_css"></asp:TextBox>                      
                                
                </div>
            <!--END: hidden tag-->
        </div> 
        
                
        <script>
            //***********************************BEGIN: Set button title***************************************
            $("#<%=btnCancel.ClientID%>").val('<%=CPanel.Commons.TitleConst.getTitleConst("BUTTON_CANCEL")%>');
            $(".btn_Validation_Save_CSS").val('<%=CPanel.Commons.TitleConst.getTitleConst("BUTTON_SUBMIT")%>');        
            //***********************************END: Set button title*****************************************

            $(".btn_Validation_Save_CSS").click(function () {
                if (dtNgayKetThuc_Client.GetText() != "") {
                    $("#<%=txtNgayKetThuc_Validate.ClientID%>").val(dtNgayKetThuc_Client.GetText());
                }

                if (validateForm()) {                    
                    __doPostBack("<%=btnSave.UniqueID%>", "OnClick");
                }
            });
        </script>            
</asp:Content>
