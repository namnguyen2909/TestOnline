<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemUngVien.aspx.cs" Inherits="CPanel.Modules.Admin.ThemUngVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12" style="margin-left: 100px">

        <div class="col-xs-3">
        </div>
        <div class="col-xs-3">
            <label style="text-align: end; font-size: 16px">Họ và tên</label>
            <asp:TextBox ID="txtHoTen" CssClass="form-control center-block" Width="200px" Style="margin: 0px 50px 20px 0px" runat="server"></asp:TextBox>
        </div>

        <div class="col-xs-3">
            <label style="font-size: 16px">Email</label>
            <asp:TextBox ID="txtEmail" Height="" CssClass="form-control element_tab_css" Width="300px" runat="server"></asp:TextBox>
        </div>

    </div>

    <div class="col-xs-12" style="margin-left: 100px">

        <div class="col-xs-3">
        </div>

        <div class="col-xs-3">
            <label style="font-size: 16px">Số điện thoại</label>
            <asp:TextBox ID="txtSDT" TextMode="Phone" CssClass="form-control element_tab_css" Width="150px" runat="server"></asp:TextBox>
        </div>


        <div class="col-xs-3">
            <label style="font-size: 16px">Vị trí tuyển dụng</label>
            <asp:DropDownList ID="drpViTri" AutoPostBack="true" OnSelectedIndexChanged="drpViTri_SelectedIndexChanged" CssClass="form-control center-block" Width="200px" Style="margin: 0px 50px 20px 0px" runat="server"></asp:DropDownList>
        </div>

    </div>

    <div class="col-xs-12" style="margin-left: 100px">
        <div class="col-xs-3">
        </div>

        <div class="col-xs-3">
            <label style="font-size: 16px">Ngày sinh</label>
            <%--<asp:TextBox ID="dtNgaySinh" TextMode="Date" CssClass="form-control element_tab_css" Width="150px" runat="server"></asp:TextBox>--%>
            <dx:ASPxDateEdit runat="server" ID="dtNgaySinh" Width="150px" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>
        </div>



        <div class="col-xs-3">
            <label style="font-size: 16px">Mã ứng viên: </label>
            <asp:Label ID="lblMaUV" runat="server"></asp:Label>
        </div>

    </div>

    <div class="col-xs-12">
        <div class="col-xs-6">
            <asp:Button ID="btnSave" Text="Save" OnClick="btnSaveUV_Click"
                CssClass="btn btn-success center_css"
                Style="margin-top: 20px; margin-left: 815px; background-image: linear-gradient(to right, #cb2d3e 0%, #ef473a  51%, #cb2d3e  100%); padding: 10px 20px; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"
                Width="100px" Height="40px" Font-Size="16px" runat="server"></asp:Button>
        </div>

        <div class="col-xs-6">
            <asp:Button ID="btnBack" Text="Back" OnClick="btnBack_Click"
                CssClass="btn btn-success center_css"
                Style="margin-top: 20px; margin-right: 300px; background-image: linear-gradient(to right, #00c6ff 0%, #0072ff  51%, #00c6ff  100%); padding: 10px 20px; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"
                Width="100px" Font-Size="Small" runat="server"></asp:Button>
        </div>
    </div>

    <div id="DIV_MESSAGE" visible="false" runat="server">
        <div class="pop_up_background_css"></div>
        <div class="pop_up_info_css pop_up_message_css" runat="server">
            <asp:Button ID="btlClosePopUp" OnClick="btlClosePopUp_Click" Text="X" CssClass="btn btn-danger close_css" runat="server" />
            <span class="message_box_css">
                <asp:Literal ID="ltMessageContent" runat="server"></asp:Literal></span>
        </div>
    </div>

    <div class="hidden_css">
        <asp:TextBox ID="txtObjectID" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtParentObjectID" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtHeThongID" runat="server"></asp:TextBox>
        <%--<asp:Button ID="btnSave" runat="server"></asp:Button>--%>
    </div>
</asp:Content>
