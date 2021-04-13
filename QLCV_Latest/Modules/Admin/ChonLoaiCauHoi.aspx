<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ChonLoaiCauHoi.aspx.cs" Inherits="CPanel.Modules.QuanLyBaiThi.ChonLoaiCauHoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <dx:ASPxGridView ID="ASPxGridView1" Width="50%" style="margin-left:auto;margin-right:auto" runat="server" KeyFieldName="Id"
            Settings-ShowGroupPanel="false" AutoGenerateColumns="False" ClientInstanceName="grvObjects">
            <SettingsBehavior AllowSelectByRowClick="true" AllowFocusedRow="true" />

            <Columns>

                <dx:GridViewDataTextColumn FieldName="STT" Settings-AllowAutoFilter="True" Caption="STT" Width="50px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="Nội dung" Caption="Nội dung" Width="500px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="Loại câu hỏi" Caption="Loại câu hỏi" Width="250px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                

                                
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
                style="    
                background-image: linear-gradient(to right, #16A085 0%, #F4D03F  51%, #16A085  100%);
                margin-left:750px;
                margin-top:20px;
                padding: 5px 15px;
                text-align: center;
                text-transform: uppercase;
                transition: 0.5s;
                background-size: 200% auto;
                color: white;            
                box-shadow: 0 0 20px #eee;
                border-radius: 10px;
                display: block;"
                data-toggle="modal" data-target="#myModal">Thêm câu hỏi</button>
         </div>
       
        <div class="col-xs-6" style="text-align:start">
            <asp:Button ID="btnBack" Text="Back" OnClick="btnBack_Click"
                                    CssClass="btn btn-success center_css"
                                    style="margin-top:20px;
                                    margin-right:300px;
                                    background-image: linear-gradient(to right, #00c6ff 0%, #0072ff  51%, #00c6ff  100%);
                                    padding: 5px 15px;
                                    text-transform: uppercase;
                                    transition: 0.5s;
                                    background-size: 200% auto;
                                    color: white;            
                                    box-shadow: 0 0 20px #eee;
                                    border-radius: 10px;
                                    display: block;"
                                    Width="100px" Font-Size="Small" runat="server"></asp:Button>
        </div>
    </div>



    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" >

            <!-- Modal content-->
            <div class="modal-content" style="width:500px;height:300px">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="txt_title" style="text-align:center;font-weight:bold;font-size:18px">Thêm câu hỏi</h4>
                </div>
                <div class="modal-body" id="modal_body" style="width:500px;height:150px">
                    <div class="col-xs-12" style="text-align:center; margin-top:5px">
                        <button type="button" class="btn btn-success" style="margin-right:5px" data-toggle="modal" data-target="#myModal1">Trắc nghiệm</button>
                        <button type="button" class="btn btn-success" style="margin-left:5px" data-toggle="modal" data-target="#myModal2">Tự luận</button>
                    </div>
                    <div class="col-xs-12" style="text-align:center;margin-top:30px;font-size:16px;font-weight:bold">
                        Import file
                        
                    </div>
                    <div class="col-xs-12">
                        <input type="file" name="file" style="margin-left:100px"/>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Save</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="myModal1" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="txt_title1" style="text-align:center;font-weight:bold;font-size:18px">Thêm câu hỏi trắc nghiệm</h4>
                </div>
                <div class="modal-body" id="modal_body1" style="width:500px;height:700px">
                    <div class="col-xs-12">
                        <div class="main_contain_css main_contain_css_1">
                                <%--<div class="page-header">
                                    <h1 class="panel-title" style="text-align:center"><%=CPanel.Commons.TitleConst.getTitleConst("TẠO CÂU HỎI TRẮC NGHIỆM") %></h1>
                                </div>--%>

                            <div class="bg_100pecents_css">
                                <div class="col-xs-12">
                                    <label class="control-label" style="font-size:16px;margin-left:200px"><%=CPanel.Commons.TitleConst.getTitleConst("Loại câu hỏi") %></label>
                                    <asp:DropDownList ID="drpLoaiCauHoi" AutoPostBack="false" CssClass="form-control element_tab_css required_css" runat="server" style="width:200px;margin-left:150px"></asp:DropDownList>
                                    <span class="validation_css" id="<%=drpLoaiCauHoi.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_NHAP_TEN_NHIEM_VU") %></span>
                                </div>
                            </div>

                            <div class="bg_100pecents_css row_css">
                                <div class="col-xs-12">
                                    <label class="control-label" style="font-size:16px"><%=CPanel.Commons.TitleConst.getTitleConst("Mức độ") %></label>
                                    <%--<asp:DropDownList ID="drpHeThong" AutoPostBack="false" Enabled="false" CssClass="form-control element_tab_css" runat ="server"></asp:DropDownList>--%>
                                    <asp:CheckBox ID="CheckBox1" runat="server" style="margin-left:40px" Text="Dễ"></asp:CheckBox>
                                    <asp:CheckBox ID="CheckBox2" runat="server" style="margin-left:60px" Text="Trung bình"></asp:CheckBox>
                                    <asp:CheckBox ID="CheckBox3" runat="server" style="margin-left:75px" Text="Khó"></asp:CheckBox>
                                </div>
                            </div>

                            <div class="bg_100pecents_css row_css">
                                <div class="col-xs-12">
                                    <label class="control-label" style="font-size:16px"><%=CPanel.Commons.TitleConst.getTitleConst("Nội dung câu hỏi") %></label>
                                    <asp:TextBox ID="TextBox1" TextMode="MultiLine" CssClass="form-control element_tab_css" style="width:500px" Rows="10" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="bg_100pecents_css row_css">
                                <div class="col-xs-12">
                                    <label class="control-label" style="font-size:16px"><%=CPanel.Commons.TitleConst.getTitleConst("Câu trả lời") %></label>
                                </div>

                                <div class="col-xs-12">
                                    <div class="col-xs-1" style="margin-left:-20px">
                                            <input id="Checkbox4" runat="server" style="width: 70px" type="checkbox" />
                                   </div>

                                    <div class="col-xs-1" style="margin-left:20px">
                                            <asp:TextBox ID="TextBox2" Width="450px" TextMode="MultiLine" runat="server"></asp:TextBox>  
                                    </div>
                                </div>
                                
                                  <div class="col-xs-12" style="margin-top:40px">
                                    <div class="col-xs-1" style="margin-left:-20px">
                                            <input id="Checkbox5" runat="server" style="width: 70px" type="checkbox" />
                                   </div>

                                    <div class="col-xs-1" style="margin-left:20px">
                                            <asp:TextBox ID="TextBox3" Width="450px" TextMode="MultiLine" runat="server"></asp:TextBox>  
                                    </div>
                                </div>
                                <div class="col-xs-12" style="margin-top:40px">
                                    <div class="col-xs-1" style="margin-left:-20px">
                                            <input id="Checkbox6" runat="server" style="width: 70px" type="checkbox" />
                                   </div>

                                    <div class="col-xs-1" style="margin-left:20px">
                                            <asp:TextBox ID="TextBox4" Width="450px" TextMode="MultiLine" runat="server"></asp:TextBox>  
                                    </div>
                                </div>
                                <div class="col-xs-12" style="margin-top:40px">
                                    <div class="col-xs-1" style="margin-left:-20px">
                                            <input id="Checkbox7" runat="server" style="width: 70px" type="checkbox" />
                                   </div>

                                    <div class="col-xs-1" style="margin-left:20px">
                                            <asp:TextBox ID="TextBox5" Width="450px" TextMode="MultiLine" runat="server"></asp:TextBox>  
                                    </div>
                                </div>
                                
                                <%--<div class="col-xs-1">
                                    <input id="Checkbox5" runat="server" style="width: 70px" type="checkbox" />
                                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-xs-1">
                                    <input id="Checkbox6" runat="server" style="width: 70px" type="checkbox" />
                                    <asp:TextBox ID="TextBox4" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>
                                 <div class="col-xs-1">
                                    <input id="Checkbox7" runat="server" style="width: 70px" type="checkbox" />
                                    <asp:TextBox ID="TextBox5" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>--%>
                            </div>

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
                                <%--<asp:Button ID="btnSave" runat="server"></asp:Button>--%>
                            </div>
                            <!--END: hidden tag-->
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button CssClass="btn btn-default" runat="server" Text="Save" data-dismiss="modal"></asp:Button>
                    <asp:Button CssClass="btn btn-default" runat="server" Text="Close" data-dismiss="modal"></asp:Button>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="myModal2" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="txt_title2" style="text-align:center;font-weight:bold;font-size:18px">Thêm câu hỏi tự luận</h4>
                </div>
                <div class="modal-body" id="modal_body2" style="width:500px;height:700px">
                    <div class="col-xs-12">
                        <div class="main_contain_css main_contain_css_1">
                            <%--<div class="page-header">
                                <h1 class="panel-title"><%=CPanel.Commons.TitleConst.getTitleConst("TẠO CÂU HỎI TỰ LUẬN") %></h1>
                            </div>--%>

                            <div class="bg_100pecents_css">
                                <div class="col-xs-12">
                                    <label class="control-label" style="font-size:16px;margin-left:200px"><%=CPanel.Commons.TitleConst.getTitleConst("Loại câu hỏi") %></label>
                                    <asp:DropDownList ID="DropDownList1" AutoPostBack="false" CssClass="form-control element_tab_css required_css" runat="server" style="width:200px;margin-left:150px"></asp:DropDownList>
                                    <span class="validation_css" id="<%=drpLoaiCauHoi.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_NHAP_TEN_NHIEM_VU") %></span>
                                </div>
                            </div>

                            <div class="bg_100pecents_css row_css">
                                <div class="col-xs-12">
                                    <label class="control-label" style="font-size:16px"><%=CPanel.Commons.TitleConst.getTitleConst("Mức độ") %></label>
                                    <%--<asp:DropDownList ID="drpHeThong" AutoPostBack="false" Enabled="false" CssClass="form-control element_tab_css" runat ="server"></asp:DropDownList>--%>
                                    <asp:CheckBox ID="CheckBox8" runat="server" style="margin-left:40px" Text="Dễ"></asp:CheckBox>
                                    <asp:CheckBox ID="CheckBox9" runat="server" style="margin-left:60px" Text="Trung bình"></asp:CheckBox>
                                    <asp:CheckBox ID="CheckBox10" runat="server" style="margin-left:75px" Text="Khó"></asp:CheckBox>
                                </div>
                            </div>

                            <div class="bg_100pecents_css row_css">
                                <div class="col-xs-12">
                                    <label class="control-label" style="font-size:16px"><%=CPanel.Commons.TitleConst.getTitleConst("Nội dung câu hỏi") %></label>
                                    <asp:TextBox ID="TextBox6" TextMode="MultiLine" CssClass="form-control element_tab_css"  style="width:500px" Rows="10" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <!-------------------------------BEGIN: display Message Box-------------------------------------------------------->
                            <div id="DIV1" visible="false" runat="server">
                                <div class="pop_up_background_css"></div>
                                <div class="pop_up_info_css pop_up_message_css" runat="server">
                                    <asp:Button ID="Button3" Text="X" CssClass="btn btn-danger close_css" runat="server" />
                                    <span class="message_box_css">
                                        <asp:Literal ID="Literal1" runat="server"></asp:Literal></span>
                                </div>
                            </div>
                            <!-------------------------------END: display Message Box-------------------------------------------------------->

                            <!--BEGIN: hidden tag-->
                            <div class="hidden_css">
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                <asp:Button ID="btnSave" runat="server"></asp:Button>


                            </div>
                            <!--END: hidden tag-->
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button CssClass="btn btn-default" runat="server" Text="Save" data-dismiss="modal"></asp:Button>
                    <asp:Button CssClass="btn btn-default" runat="server" Text="Close" data-dismiss="modal"></asp:Button>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
