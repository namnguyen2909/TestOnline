﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="RuiRo_Edit.aspx.cs" EnableEventValidation="false" Inherits="CPanel.Modules.RuiRo_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="main_contain_css main_contain_css_1">
        <div class="page-header">
            <h1 class="panel-title"><%=CPanel.Commons.TitleConst.getTitleConst("TITLE_PAGE_THONG_TIN_NHIEM_VU") %></h1>
        </div>

        <div class="control_css">
            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" OnClick="btnCancel_Click"></asp:Button>
            <input type="button" class="btn btn-warning btn_Validation_Save_CSS" />
        </div>

        <div class="bg_100pecents_css">
            <div class="col-xs-12">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("MA_RUI_RO") %></label>
                <asp:TextBox ID="txtMaRuiRo" MaxLength="200" CssClass="form-control element_tab_css required_css" Rows="1" runat="server"></asp:TextBox>
                <span class="validation_css" id="<%=txtMaRuiRo.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_NHAP_MA_RUI_RO") %></span>
            </div>

            <div class="col-xs-12">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NOI_DUNG_MODULE") %></label>
                <asp:TextBox ID="txtNoiDung" MaxLength="200" CssClass="form-control element_tab_css required_css" Rows="1" runat="server"></asp:TextBox>
                <span class="validation_css" id="<%=txtNoiDung.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_NHAP_NOI_DUNG_MODULE") %></span>
            </div>
        </div>

        <div class="bg_100pecents_css row_css">
            <div class="col-xs-6">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("TEN_HE_THONG") %></label>
                <asp:DropDownList ID="drpHeThong" AutoPostBack="false" Enabled="true" CssClass="form-control element_tab_css" runat="server"></asp:DropDownList>
            </div>

        </div>

        <div class="bg_100pecents_css row_css">
            <div class="col-xs-12">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("MO_TA") %></label>
                <asp:TextBox ID="txtMoTa" CssClass="form-control element_tab_css" Rows="1" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="bg_100pecents_css row_css">
            <div class="col-xs-12">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("GIAI_PHAP") %></label>
                <asp:TextBox ID="txtGiaiPhap" CssClass="form-control element_tab_css" Rows="1" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="bg_100pecents_css row_css">
            <div class="col-xs-12">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("KIEN_NGHI") %></label>
                <asp:TextBox ID="txtKienNghi" CssClass="form-control element_tab_css" Rows="1" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="bg_100pecents_css row_css">
            <div class="col-xs-3">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_PHAT_SINH") %></label>
                <dx:ASPxDateEdit runat="server" ID="dtNgayPhatSinh" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>
            </div>

            <div class="col-xs-3">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_BAT_DAU") %></label>
                <dx:ASPxDateEdit runat="server" ID="dtNgayBatDau" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>
            </div>
            <div class="col-xs-3">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_KET_THUC") %></label>
                <dx:ASPxDateEdit runat="server" ID="dtNgayKetThuc" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>
            </div>

            <div class="col-xs-3">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGUOI_CHU_TRI") %></label>
                <asp:DropDownList ID="drpNguoiChuTri" AutoPostBack="false" CssClass="form-control element_tab_css required_css" runat="server"></asp:DropDownList>
                <span class="validation_css" id="<%=drpNguoiChuTri.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_CHON_NGUOI_CHU_TRI") %></span>
            </div>


        </div>

        <div class="bg_100pecents_css row_css">
            <div class="col-xs-3">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("TRACH_NHIEM_CUA_KH") %></label>
                <asp:CheckBox ID="cbTrachNhiemKH" CssClass="form-control element_tab_css" runat="server"></asp:CheckBox>
            </div>
            <div class="col-xs-3">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("TRACH_NHIEM_CUA_AITS") %></label>
                <asp:CheckBox ID="cbTrachNhiemAITS" CssClass="form-control element_tab_css" runat="server"></asp:CheckBox>
            </div>
            <div class="col-xs-3">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("TRACH_NHIEM_CUA_DT") %></label>
                <asp:CheckBox ID="cbTrachNhiemDT" CssClass="form-control element_tab_css" runat="server"></asp:CheckBox>
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
        </div>

        <!-------------------------------BEGIN: display Message Box-------------------------------------------------------->
        <div id="DIV_MESSAGE" visible="false" runat="server">
            <div class="pop_up_background_css"></div>
            <div class="pop_up_info_css pop_up_message_css" runat="server">
                <asp:Button ID="btlClosePopUp" OnClick="btlClosePopUp_Click" Text="X" CssClass="btn btn-danger close_css" runat="server" />
                <span class="message_box_css">
                    <asp:Literal ID="ltMessageContent" runat="server"></asp:Literal></span>
            </div>
        </div>
        <!-------------------------------END: display Message Box-------------------------------------------------------->

        <!--BEGIN: hidden tag-->
        <div class="hidden_css">
            <asp:TextBox ID="txtObjectID" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtHeThongID" runat="server"></asp:TextBox>
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click"></asp:Button>


        </div>
        <!--END: hidden tag-->
    </div>


    <script>
        //***********************************BEGIN: Set button title***************************************
        $("#<%=btnCancel.ClientID%>").val('<%=CPanel.Commons.TitleConst.getTitleConst("BUTTON_CANCEL")%>');
        $(".btn_Validation_Save_CSS").val('<%=CPanel.Commons.TitleConst.getTitleConst("BUTTON_SUBMIT")%>');
        //***********************************END: Set button title*****************************************

        $(".btn_Validation_Save_CSS").click(function () {
            if (validateForm()) {

                __doPostBack("<%=btnSave.UniqueID%>", "OnClick");
            }
        });
    </script>
</asp:Content>
