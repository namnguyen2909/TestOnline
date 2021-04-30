﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="XemUngVien.aspx.cs" Inherits="CPanel.Modules.Admin.XemUngVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#XemUV">Thông tin ứng viên</a></li>
            <li><a data-toggle="tab" href="#GuiMail">Gửi bài thi cho ứng viên</a></li>
        </ul>

        <div class="tab-content">
            <div id="XemUV" class="tab-pane fade in active">
                <h3 style="text-align: center; font-size: 20px; font-weight: bold">DANH SÁCH THÔNG TIN ỨNG VIÊN</h3>
                <div class="container">
                    <div class="col-xs-12">
                        <div class="col-xs-1">
                            <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" OnClick="btnAdd_Click" Text="Thêm ứng viên"
                                Style="margin-bottom: 20px; background-image: linear-gradient(to right, #fe8c00 0%, #f83600  51%, #fe8c00  100%); padding: 5px 12px; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"></asp:Button>
                        </div>

                        <div class="col-xs-1" style="margin-top: -10px; margin-left: 3px">
                            <asp:Button ID="btnSelect" runat="server" CssClass="btn btn-primary" OnClick="btnSelect_Click" Text="Chọn bài thi"
                                Style="margin-bottom: 20px; background-image: linear-gradient(to right, #4CA1AF 0%, #C4E0E5  51%, #4CA1AF  100%); margin: 10px; padding: 5px 12px; text-align: center; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"></asp:Button>
                        </div>
                        <div class="col-xs-1" style="margin-left: 5px; margin-top: 1px">
                            <asp:Button ID="btnBack1" runat="server" OnClick="btnBack1_Click" CssClass="btn btn-primary" Text="Back"
                                Style="margin-bottom: 20px; background-image: linear-gradient(to right, #00c6ff 0%, #0072ff  51%, #00c6ff  100%); padding: 5px 12px; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"></asp:Button>
                        </div>
                    </div>
                    <dx:ASPxGridView ID="grvObjects" Width="75%" Style="margin-left: auto; margin-right: auto" runat="server" KeyFieldName="Id"
                        Settings-ShowGroupPanel="false" AutoGenerateColumns="False" ClientInstanceName="grvObjects">
                        <SettingsBehavior AllowSelectByRowClick="true" AllowFocusedRow="true" />

                        <Columns>

                            <%--<dx:GridViewDataTextColumn FieldName="STT" Settings-AllowAutoFilter="True" Caption="STT" Settings-AllowSort="False" Width="10px" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />--%>
                            <dx:GridViewDataTextColumn FieldName="HO_TEN" Caption="Họ tên" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" Width="150px" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="MA_UNG_VIEN" Caption="Mã ứng viên" Width="50px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="STR_NGAY_SINH" Caption="Ngày sinh" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" Visible="true" Width="200px" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="EMAIL" Caption="Email" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" Visible="true" Width="200px" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="SO_DIEN_THOAI" Caption="SĐT" Width="100px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="VI_TRI" Caption="Vị trí tuyển dụng" Width="100px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="ID_BAI_THI" Caption="Mã bài thi" Width="50px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />




                            <dx:GridViewDataColumn Settings-AutoFilterCondition="Contains" Width="100px" Caption="Lựa chọn" HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Left" VisibleIndex="3">
                                <DataItemTemplate>
                                    <a href="javascript:viewObject('<%# Eval("ID") %>')"><%=CPanel.Commons.TitleConst.getTitleConst("XEM")%></a>
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

            </div>
            
            <dx:ASPxCallback ID="ASPxCallback1"  runat="server" ClientInstanceName="ClientCallback" OnCallback="ASPxCallback1_Callback"></dx:ASPxCallback>
            <div id="GuiMail" class="tab-pane fade">
                <div class="container">
                    <dx:ASPxGridView ID="ASPxGridView1"  Width="50%" Style="margin-left: auto; margin-right: auto" runat="server" KeyFieldName="Id"
                        Settings-ShowGroupPanel="false"  Settings-ShowFilterRow="false"  
                        settings-showfilterrowmenu="false" ClientInstanceName="ASPxGridView1" AutoGenerateColumns="False">

                        <SettingsBehavior AllowSelectByRowClick="true" AllowFocusedRow="true" />

                        <Columns>


                            <dx:GridViewDataTextColumn FieldName="HO_TEN" Caption="Họ tên" Settings-AllowSort="False" Width="200px" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <%--<dx:GridViewDataTextColumn FieldName="Ngày gửi mail" Caption="Ngày gửi mail" Width="150px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="Ngày hoàn thành" Caption="Ngày hoàn thành" Width="150px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="Trạng thái" Caption="Trạng thái" Settings-AllowSort="False" Width="150px" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="Ghi chú" Caption="Ghi chú" Width="100px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
--%>
                            <%--OnDataBinding="ASPxGridView1_DataBinding"--%>
                          <%--  ASPxGridView1.SelectAllRowsOnPage(s.GetChecked());--%>
                            <dx:GridViewDataCheckColumn Settings-AutoFilterCondition="Contains" Caption="Lựa chọn" HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Left" VisibleIndex="3">
                                    <DataItemTemplate>
                                        <dx:ASPxCheckBox ID="CheckBoxSelectGuiMail" runat="server" AutoPostBack="false"
                                             ClientSideEvents-CheckedChanged="function(s, e) { ClientCallback.PerformCallback(s.GetChecked()); }"></dx:ASPxCheckBox> 
                                    </DataItemTemplate>                          
                            </dx:GridViewDataCheckColumn>
                        </Columns>
                        <SettingsPager PageSize="20">
                            <PageSizeItemSettings Visible="true" ShowAllItem="true" />
                        </SettingsPager>
                        <Settings ShowFilterRow="true" AutoFilterCondition="Contains" />
                    </dx:ASPxGridView>
                </div>

                <div class="col-xs-12">
                    <div class="col-xs-6">
                        <asp:Button ID="btnSend" Text="Gửi mail" CssClass="btn btn-primary" runat="server"
                            Style="background-image: linear-gradient(to right, #314755 0%, #26a0da  51%, #314755  100%); margin: 20px 0px 0px 780px; width: 120px; height: 30px; padding: 5px 15px; text-align: center; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;" />
                    </div>

                    <div class="col-xs-6">
                        <asp:Button ID="btnBack2" Text="Back" OnClick="btnBack2_Click"
                            CssClass="btn btn-success center_css"
                            Style="margin-top: 20px; margin-right: 300px; background-image: linear-gradient(to right, #00c6ff 0%, #0072ff  51%, #00c6ff  100%); padding: 5px 15px; text-transform: uppercase; transition: 0.5s; background-size: 200% auto; color: white; box-shadow: 0 0 20px #eee; border-radius: 10px; display: block;"
                            Width="100px" Font-Size="Small" runat="server"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
        <!-------------------------------BEGIN: display Message Box-------------------------------------------------------->
        <div id="DIV_MESSAGE" visible="false" runat="server">
            <div class="pop_up_background_css pop_up_background_message_css"></div>
            <div class="pop_up_info_css pop_up_message_css" runat="server">
                <asp:Button ID="btlClosePopUp_Message" OnClick="btlClosePopUp_Message_Click" Text="X" CssClass="btn btn-danger close_css" runat="server" />
                <span class="message_box_css">
                    <asp:Literal ID="ltMessageContent" runat="server"></asp:Literal></span>
                <asp:Button ID="btnOK_DeleteObject" OnClick="btnOK_DeleteObject_Click" class="btn btn-warning row_css" Text="OK" Visible="false" runat="server" />
            </div>
        </div>
        <!-------------------------------END: display Message Box-------------------------------------------------------->

        <!--BEGIN: hidden tag-->
        <div class="hidden_css">
            <asp:TextBox ID="txtObjectID" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtHeThongID" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtFileID" runat="server"></asp:TextBox>
            <asp:Button ID="btlDeleteObject" OnClick="btlDeleteObject_Click" runat="server" />


            <asp:Button ID="btnViewObject" OnClick="btnViewObject_Click" runat="server" />

        </div>
        <!--END: hidden tag-->
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
