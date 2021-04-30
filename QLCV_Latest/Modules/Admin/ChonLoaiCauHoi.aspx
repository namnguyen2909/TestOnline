<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ChonLoaiCauHoi.aspx.cs" Inherits="CPanel.Modules.QuanLyBaiThi.ChonLoaiCauHoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <dx:ASPxGridView ID="grvCauHoi" Width="50%" Style="margin-left: auto; margin-right: auto" runat="server" KeyFieldName="Id"
            Settings-ShowGroupPanel="false" OnDataBinding="grvCauHoi_DataBinding" AutoGenerateColumns="False" ClientInstanceName="grvCauHoi">
            <SettingsBehavior AllowSelectByRowClick="true" AllowFocusedRow="true" />

            <Columns>
                <dx:GridViewDataTextColumn FieldName="NOI_DUNG_CAU_HOI" Caption="Nội dung" Width="500px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="KIEU_CAU_HOI" Caption="Loại câu hỏi" Width="250px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="KIEU_MUC_DO" Caption="Mức độ" Width="150px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataColumn Settings-AutoFilterCondition="Contains" Caption="Lựa chọn" HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Left" VisibleIndex="3">
                    <DataItemTemplate>
                        <a href="javascript:viewObject('<%# Eval("ID") %>')"><%=CPanel.Commons.TitleConst.getTitleConst("SUA")%></a>
                        <a href="javascript:deleteObject('<%# Eval("ID") %>')"><%=CPanel.Commons.TitleConst.getTitleConst("XOA")%></a>
                    </DataItemTemplate>
                </dx:GridViewDataColumn>
            </Columns>
            <SettingsPager PageSize="20">
                <PageSizeItemSettings Visible="true" ShowAllItem="true" />
            </SettingsPager>
            <Settings ShowFilterRow="true" AutoFilterCondition="Contains" />
        </dx:ASPxGridView>
    </div>

    <div class="col-xs-12">
        <%--<asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="btn btn-success" Text="Save"></asp:Button>--%>
        <div class="col-xs-6">
            <button type="button" class="btn btn-success"
                style="background-image: linear-gradient(to right, #16A085 0%, #F4D03F  51%, #16A085  100%); margin-left: 750px; margin-top: 20px; padding: 5px 15px; text-align: center; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"
                data-toggle="modal" data-target="#myModal">
                Thêm câu hỏi</button>
        </div>

        <div class="col-xs-6" style="text-align: start">
            <asp:Button ID="btnBack" Text="Back" OnClick="btnBack_Click"
                CssClass="btn btn-success center_css"
                Style="margin-top: 20px; margin-right: 300px; background-image: linear-gradient(to right, #00c6ff 0%, #0072ff  51%, #00c6ff  100%); padding: 5px 15px; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"
                Width="100px" Font-Size="Small" runat="server"></asp:Button>
        </div>
    </div>

    <div id="DIV_MESSAGE" visible="false" runat="server">
        <div class="pop_up_background_css pop_up_background_message_css"></div>
        <div class="pop_up_info_css pop_up_message_css" runat="server">
            <asp:Button ID="btlClosePopUp_Message" OnClick="btlClosePopUp_Message_Click" Text="X" CssClass="btn btn-danger close_css" runat="server" />
            <span class="message_box_css">
                <asp:Literal ID="ltMessageContent" runat="server"></asp:Literal></span>
            <asp:Button ID="btnOK_DeleteObject" OnClick="btnOK_DeleteObject_Click" class="btn btn-warning row_css" Text="OK" Visible="false" runat="server" />
        </div>
    </div>

    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg">

            <!-- Modal content-->
            <div class="modal-content" style="width: 500px; height: 300px">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="txt_title" style="text-align: center; font-weight: bold; font-size: 18px">Thêm câu hỏi</h4>
                </div>
                <div class="modal-body" id="modal_body" style="width: 500px; height: 150px">
                    <div class="col-xs-12" style="text-align: center; margin-top: 5px">
                        <asp:Button ID="btnTracNghiem" CssClass="btn btn-success" OnClick="btnTracNghiem_Click" Style="margin-right: 5px" Text="Trắc nghiệm" runat="server"></asp:Button>
                        <asp:Button ID="btnTuLuan" CssClass="btn btn-success" OnClick="btnTuLuan_Click" Style="margin-right: 5px" Text="Tự luận" runat="server"></asp:Button>
                    </div>
                    <div class="col-xs-12" style="text-align: center; margin-top: 30px; font-size: 16px; font-weight: bold">Import file</div>
                    <div class="col-xs-12">
                        <asp:FileUpload ID="FileUpload_CauHoi" runat="server" CssClass="form-control element_tab_css" />
                    </div>
                </div>
                <%--<div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Save</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>--%>
            </div>

        </div>



        <div class="hidden_css">
            <asp:TextBox ID="txtObjectID" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtHeThongID" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtFileID" runat="server"></asp:TextBox>
            <asp:Button ID="btlDeleteObject" OnClick="btlDeleteObject_Click" runat="server" />


            <asp:Button ID="btnViewObject" OnClick="btnViewObject_Click" runat="server" />

        </div>

        <script>
            function viewObject(intID) {

                $("#<%=txtObjectID.ClientID%>").val(intID);

                __doPostBack("<%= btnViewObject.UniqueID %>", "OnClick");

            }

            function deleteObject(intID) {
                $("#<%=txtObjectID.ClientID%>").val(intID);
                __doPostBack("<%= btlDeleteObject.UniqueID %>", "OnClick");
            }

        </script>
    </div>
</asp:Content>
