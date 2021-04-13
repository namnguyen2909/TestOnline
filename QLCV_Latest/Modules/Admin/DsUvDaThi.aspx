<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="DsUvDaThi.aspx.cs" Inherits="CPanel.Modules.QuanLyBaiThi.DsUvDaThi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-xs-1" id="chonthang">
        <asp:TextBox ID="thang" TextMode="Month" runat="server" style="margin-top:5px"></asp:TextBox>
    </div>

    <div class="col-xs-1" id="btn_guimail">
         <%--<asp:Button Text="Gửi mail" style="width:80px" runat="server"/>--%>
        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal"
            style="background-image: linear-gradient(to right, #314755 0%, #26a0da  51%, #314755  100%);
            margin:0px 0px 35px 40px;
            width:120px;
            height:35px;
            padding: 10px 15px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;">Gửi mail</button>
    </div>
    
         <%--.btn-grad {background-image: linear-gradient(to right, #314755 0%, #26a0da  51%, #314755  100%)}
         .btn-grad {
            margin: 10px;
            padding: 15px 45px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }--%>
         

  

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" id="txt_title">Gửi mail cho người đánh giá</h4>
        </div>
        <div class="modal-body" id="modal_body">
            <div class="col-xs-12">
                <label>Loại bài thi</label>
                <select style="width: 200px"></select>
                <label>Mức độ bài thi</label>
                <select style="width: 200px"></select>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Gửi</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
 </div>
  

    <dx:ASPxGridView ID="grvObjects" Width="100%" runat="server" KeyFieldName="Id"
                    Settings-ShowGroupPanel="false" AutoGenerateColumns="False" ClientInstanceName="grvObjects">
            <SettingsBehavior AllowSelectByRowClick="true" AllowFocusedRow="true" />  

            <Columns>      
                <dx:GridViewDataCheckColumn PropertiesCheckEdit-CheckBoxFocusedStyle-BackColor="YellowGreen" Width="30px" Settings-AllowAutoFilter="True" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" >
                    <DataItemTemplate>
                        <td><input type="checkbox" name="name1" />&nbsp;</td>
                        <td><input type="checkbox" name="name2" />&nbsp;</td>
                    </DataItemTemplate>
                </dx:GridViewDataCheckColumn>                                                       
                <dx:GridViewDataTextColumn FieldName= "STT" Settings-AllowAutoFilter="True" Caption="STT" Width="50px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="MA_UNG_VIEN" Settings-AllowAutoFilter="True" Caption="Mã ứng viên" Width="100px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="TEN_UNG_VIEN" Caption="Tên ứng viên" Width="200px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="SDT" Caption="SĐT" Width="150px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="EMAIL" Caption="Email" Width="200px"  Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="MA_BAI_THI" Caption="Mã bài thi" Width="80px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="DIEM_TN" Caption="Điểm trắc nghiệm" Width="80px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="SO_CAU_TL" Caption="Số câu tự luận" Width="80px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="TRANG_THAI" Caption="Trạng thái" Width="150px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                
                

                <dx:GridViewDataColumn Settings-AutoFilterCondition="Contains" width="150px" Caption="Hành động" HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Left" VisibleIndex="3">
                    <DataItemTemplate>                                              
                        <a href="javascript:viewObject('<%# Eval("ID") %>')"><%=CPanel.Commons.TitleConst.getTitleConst("XEM")%></a>
                        <a href="javascript:deleteObject('<%# Eval("ID") %>')"><%=CPanel.Commons.TitleConst.getTitleConst("XOA")%></a>
                    </DataItemTemplate>
                </dx:GridViewDataColumn>
            </Columns>
            <SettingsPager PageSize="20">
                <PageSizeItemSettings Visible="true" ShowAllItem="true" />
            </SettingsPager>
            <Settings ShowFilterRow="true" AutoFilterCondition="Contains"/>                
        </dx:ASPxGridView>

    
    <style>
        #chonthang{
            margin-bottom:50px;
        }
        /*#btn_guimail{
            margin-left:50px;
        }*/
        #txt_title{
            text-align:center;
            font-size:18px;
            font-weight:bold;
        }
        #modal_body{
            width: 200px;
            height:200px;    
        }
    </style>

    
</asp:Content>

