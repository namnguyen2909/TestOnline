<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TaoCauHoiTL.aspx.cs" Inherits="CPanel.Modules.Admin.TaoCauHoiTL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-xs-12" style="text-align: center">
        <label id="txt_title1" style="font-weight: bold; font-size: 24px">Thêm câu hỏi tự luận</label>
    </div>


    <div class="col-xs-12" style="text-align: center; margin-top: 50px">
        <label class="control-label" style="font-size: 16px"><%=CPanel.Commons.TitleConst.getTitleConst("Chủ đề bài thi") %></label>
        <asp:DropDownList ID="drpChuDeTL" AutoPostBack="false" CssClass="form-control element_tab_css required_css" runat="server" Style="width: 250px; margin-left: 820px"></asp:DropDownList>
        <span class="validation_css" id="<%=drpChuDeTL.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_NHAP_TEN_NHIEM_VU") %></span>
    </div>

    <div class="col-xs-12" style="text-align: center; margin-top: 40px">
        <label class="control-label" style="font-size: 18px; margin-right: 100px"><%=CPanel.Commons.TitleConst.getTitleConst("Mức độ") %></label>

        <asp:CheckBox ID="cbDeTL" runat="server" Style="text-align: center; margin-right: 60px" Text="Dễ"></asp:CheckBox>

        <asp:CheckBox ID="cbTbTL" runat="server" Style="text-align: center; margin-right: 40px" Text="Trung bình"></asp:CheckBox>

        <asp:CheckBox ID="cbKhoTL" runat="server" Style="text-align: center" Text="Khó"></asp:CheckBox>
    </div>

    <div class="col-xs-12" style="margin-top: 20px; margin-left: 460px">
        <label class="control-label" style="font-size: 16px"><%=CPanel.Commons.TitleConst.getTitleConst("Nội dung câu hỏi") %></label>
        <asp:TextBox ID="txtNoiDungTL" TextMode="MultiLine" CssClass="form-control element_tab_css" Style="width: 1000px; height: 150px" Rows="10" runat="server"></asp:TextBox>
    </div>

    <div class="col-xs-12" style="text-align: center">
        <asp:Button ID="btnSave" Text="Save"
            OnClick="btnSave_Click"
            CssClass="btn btn-success center_css"
            Style="margin-top: 20px; margin-left: 885px; background-image: linear-gradient(to right, #cb2d3e 0%, #ef473a  51%, #cb2d3e  100%); padding: 5px 5px; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"
            Width="100px" Font-Size="16px" runat="server"></asp:Button>
    </div>

    <div class="col-xs-12" style="text-align: center">
        <asp:Button ID="btnBack" Text="Back"
            OnClick="btnBack_Click"
            CssClass="btn btn-success center_css"
            Style="margin-top: 20px; margin-left: 885px; background-image: linear-gradient(to right, #00c6ff 0%, #0072ff  51%, #00c6ff  100%); padding: 5px 15px; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"
            Width="100px" Font-Size="16px" runat="server"></asp:Button>
    </div>

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
        <%--<asp:Button ID="btnSave" runat="server"></asp:Button>--%>
    </div>
</asp:Content>
