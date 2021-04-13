﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TaoDeBai.aspx.cs" Inherits="CPanel.Modules.Admin.TaoDeBai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12">
        <div class="col-xs-6 text-center">
            <label style="font-size:16px">Loại bài thi: </label>
            <asp:Label ID="lblLoaiBT" runat="server"></asp:Label>
        </div>

        <div class="col-xs-6 text-center">
            <label style="font-size:16px">Mức độ:</label>
            <asp:Label ID="lblMucDo" runat="server"></asp:Label>
        </div>
    </div>

    <div class="text-center" style="font-weight: bold; font-size: 25px; color:red">
        <label style="margin-top:40px">ĐỀ BÀI</label>
    </div>

    <div class="col-xs-12">
        <div class="col-xs-6" style="margin-top:25px">
            <label style="font-size:16px">Câu 1: </label>
            <asp:Label ID="lblCauHoi1" runat="server"></asp:Label>
            <div style="margin-top:15px;margin-bottom:15px">
               <asp:RadioButton ID="RadioButton1" style="margin:10px 0px 10px 0px" runat="server"></asp:RadioButton>
                 
            </div>
            <div style="margin-top:15px;margin-bottom:15px">   
                <asp:RadioButton ID="RadioButton2" runat="server"></asp:RadioButton>
                    
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton3" runat="server"></asp:RadioButton>

            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton4" runat="server"></asp:RadioButton>
            </div>
        </div>
        <div class="col-xs-6"  style="margin-top:25px">
            <label style="font-size:16px">Câu 2: </label>
            <asp:Label ID="lblCauHoi2" runat="server"></asp:Label>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton5" runat="server"></asp:RadioButton>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton6" runat="server"></asp:RadioButton>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton7" runat="server"></asp:RadioButton>
            </div>
            <div style="margin-top:15px;margin-bottom:15    px">
                <asp:RadioButton ID="RadioButton8" runat="server"></asp:RadioButton>
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="col-xs-6">
            <label style="font-size:16px">Câu 3: </label>
            <asp:Label ID="lblCauHoi3" runat="server"></asp:Label>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton9" runat="server"></asp:RadioButton>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton10" runat="server"></asp:RadioButton>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton11" runat="server"></asp:RadioButton>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton12" runat="server"></asp:RadioButton>
            </div>
        </div>
        <div class="col-xs-6">
            <label style="font-size:16px">Câu 4: </label>
            <asp:Label ID="lblCauHoi4" runat="server"></asp:Label>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton13" runat="server"></asp:RadioButton>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton14" runat="server"></asp:RadioButton>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton15" runat="server"></asp:RadioButton>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:RadioButton ID="RadioButton16" runat="server"></asp:RadioButton>
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="col-xs-6">
            <label style="font-size:16px">Câu 5: </label>
            <asp:Label ID="lblCauHoi5" runat="server"></asp:Label>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:CheckBox ID="Checkbox1" runat="server"></asp:CheckBox>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:CheckBox ID="Checkbox2" runat="server"></asp:CheckBox>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:CheckBox ID="Checkbox3" runat="server"></asp:CheckBox>
            </div>
            <div style="margin-top:15px;margin-bottom:15px">
                <asp:CheckBox ID="Checkbox4" runat="server"></asp:CheckBox>
            </div>
        </div>
        <div class="col-xs-6">
            <label style="font-size:16px">Câu 6: </label>
            <asp:Label ID="lblCauHoi6" runat="server"></asp:Label>
            <div style="margin-top:15px;margin-bottom:15px">
                <textarea style="width:800px;height:130px"></textarea>
            </div>
        </div>
            
         <div class="col-xs-12">
            <asp:Button ID="Button1" Text="Save"
                OnClick="Button1_Click"
                CssClass="btn btn-success center_css"
                style="margin-top:20px;
                       margin-left:885px;
                background-image: linear-gradient(to right, #cb2d3e 0%, #ef473a  51%, #cb2d3e  100%);
                padding: 10px 20px;
                text-transform: uppercase;
                transition: 0.5s;
                background-size: 200% auto;
                color: white;            
                box-shadow: 0 0 20px #eee;
                border-radius: 10px;
                display: block;" 
                Width="100px" Height="40px" Font-Size=16px runat="server">
            </asp:Button>
        </div>
    </div>
   

    <style>
</style>
</asp:Content>
