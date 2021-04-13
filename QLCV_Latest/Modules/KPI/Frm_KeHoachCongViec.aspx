<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Frm_KeHoachCongViec.aspx.cs" Inherits="CPanel.Modules.KPI.Frm_KeHoachCongViec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="title_css">BÁO CÁO TỶ TRỌNG XỬ CỘNG DẶM KHIẾU NẠI‎</h2>
    
    <div class="col-md-6">                    
        <label class="control-label line_lb_css">From Date</label>
        <asp:TextBox ID="txtFromDate" AutoPostBack="false" CssClass="form-control datepicker dataGetFromMC_css" runat="server"></asp:TextBox>            
    </div>

    <div class="col-md-6">                    
        <label class="control-label line_lb_css">To Date</label>
        <asp:TextBox ID="txtToDate" AutoPostBack="false" CssClass="form-control datepicker dataGetFromMC_css" runat="server"></asp:TextBox>            
    </div>

    
    
    <div class="col-md-6">
        <asp:Button ID="btnExport" runat="server" Text="Export file" OnClick="btnExport_Click" CssClass="btn btn-warning"/>
    </div>
</asp:Content>
