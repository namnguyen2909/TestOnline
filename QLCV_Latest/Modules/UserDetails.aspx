﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="UserDetails.aspx.cs" Inherits="CPanel.Modules.Admin.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">    
    

    <div class="main_contain_css main_contain_css_1">

        <div class="bg_100pecents_css bg_button_css">
            <asp:Button ID="btnBack" runat="server" CssClass="btn btn-default" OnClick="btnBack_Click" Text="Back"/>                                     
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-warning" OnClick="btnSubmit_Click" Text="Submit"/>                         
        </div>

        <div class="page-header"><h1 class="panel-title">Account information</h1></div>


        
        <div style="padding-top: 20px;"><font style="color: red">
            <asp:Label ID="lbMessage" runat="server"></asp:Label>
        </font></div>
              
        <div class="bg_100pecents_css">            
            <div class="col-md-6">
                <label class="control-label line_lb_css">User Name<span class="mandatory__css">(*)</span></label>
                <asp:TextBox ID="txtUsername" CssClass="form-control remove_special_characters" runat="server"></asp:TextBox>
            </div>            
            <div class="col-md-6">                    
                <label class="control-label line_lb_css">Full Name<span class="mandatory__css">(*)</span></label>
                <asp:TextBox ID="txtFullName" CssClass="form-control remove_special_characters"  runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="bg_100pecents_css">            
            <div class="col-md-6">
                <label class="control-label line_lb_css">Password<span class="mandatory__css">(*)</span></label>
                <asp:TextBox TextMode="Password" ID="txtPassword_1" CssClass="form-control remove_special_characters" runat="server"></asp:TextBox>
            </div>            
            <div class="col-md-6">                    
                <label class="control-label line_lb_css">Password (Retype)<span class="mandatory__css">(*)</span></label>
                <asp:TextBox  TextMode="Password" ID="txtPassword_2" CssClass="form-control remove_special_characters"  runat="server"></asp:TextBox>
            </div>
        </div>
        
        <div class="bg_100pecents_css">                        
            <div class="col-md-6">                    
                <label class="control-label line_lb_css">Email</label>
                <asp:TextBox ID="txtEmail" CssClass="email form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6">                    
                <label class="control-label line_lb_css">Active Status</label><br />
                <asp:CheckBox ID="cbActiveSatus" runat="server"  CssClass="form-control"/>
            </div>                         
        </div>

        <div class="bg_100pecents_css">               
            <div class="col-md-6">
                <label class="control-label line_lb_css">Groups</label><br />     
                                
                <dx:ASPxGridView ID="grvObj" Width="100%" runat="server" KeyFieldName="Id" OnDataBinding="grvObj_DataBinding"
                    AutoGenerateColumns="False" EnableRowsCache="False" EnableCallBacks="false" SettingsEditing-Mode="Inline" SettingsPager-Mode="ShowAllRecords"
                    ClientInstanceName="grvObj">
            
            
                    <Columns>                        
                        <dx:GridViewCommandColumn ShowSelectCheckbox="true" VisibleIndex="0" HeaderStyle-HorizontalAlign="Center">
                            <HeaderTemplate>
                                <dx:ASPxCheckBox ID="SelectAllCheckBox" runat="server"
                                    ClientSideEvents-CheckedChanged="function(s, e) {grvObj.SelectAllRowsOnPage(s.GetChecked()); }" />
                            </HeaderTemplate>
                        </dx:GridViewCommandColumn>

                        <dx:GridViewDataTextColumn FieldName="DepartmentName" Caption="NAME" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />              

                    </Columns>
                </dx:ASPxGridView>     
            </div>
       </div>

        <asp:TextBox ID="txtUserID" runat="server" CssClass="invisible_css"></asp:TextBox>
        
    </div>

    
    
</asp:Content>

