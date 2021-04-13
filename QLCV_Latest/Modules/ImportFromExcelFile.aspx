<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ImportFromExcelFile.aspx.cs" Inherits="CPanel.Modules.ImportFromExcelFile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main_contain_css main_contain_css_1">
        <div style ="width: 100%; float: left; color: red;"><asp:Label ID="lbMessage" runat="server"></asp:Label></div>
        <div class="col-xs-10">
            <label class="control-label title_css">IMPORT DU LIEU</label>
        </div>
        <div class="control_css">    
            <asp:Button ID="BtImport_TaiKhoanSo" runat="server" Text="Import into DB" OnClick="BtImport_SoTaiKhoan_Click" CssClass="btn btn-warning" />
        </div>

        <asp:FileUpload ID="FileUpload_SoTaiKhoan" runat="server" CssClass="form-control element_tab_css" />

        Don Gia San Luong: <asp:CheckBox ID="cbDonGiaSanLuong" runat="server" /><br />
        1-QUYEN-RULE: <asp:CheckBox ID="cbQuyenRule" runat="server" /><br />
        2-QUYEN-USER: <asp:CheckBox ID="cbQuyenUser" runat="server" /><br />
        
        
        
    </div>
</asp:Content>
