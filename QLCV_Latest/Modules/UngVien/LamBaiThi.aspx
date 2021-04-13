<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="LamBaiThi.aspx.cs" Inherits="CPanel.Modules.UngVien.LamBaiThi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12 text-center" style="margin-top:10px">
        <label style="font-weight:bold; font-size:20px">ĐỀ BÀI</label> 
    </div>

    <div class="col-xs-12 text-center">
        <label>Thời gian: </label>
        <asp:Label ID="lblTime" runat="server"></asp:Label>
    </div>

    <div class="col-xs-12" style="text-align:right">
        <asp:Button ID="btnNopBai" CssClass="btn btn-warning" Text="Nộp bài" Font-Size="Small" runat="server"></asp:Button>
    </div>
</asp:Content>
