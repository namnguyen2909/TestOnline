<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="MenuChon.aspx.cs" Inherits="CPanel.Modules.QuanLyBaiThi.MenuChon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    </style>

    <div class="col-xs-12">
        <ul class="nav nav-tabs">
            <li><a href="ChonLoaiCauHoi.aspx">Tạo câu hỏi</a></li>
            <li><a href="TaoBaiThi.aspx">Tạo bài thi</a></li>
            <li><a href="XemUngVien.aspx">Quản lý bài thi</a></li>
            <li><a href="DsUvDaThi.aspx">Gửi bài</a></li>
        </ul>
    </div>

    <div class="col-xs-12">
        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 100%; height: 500px;">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="../../Templates/images/aits1.jpg" alt="">
                </div>

                <div class="item">
                    <img src="../../Templates/images/aits2.jpg" alt="">
                </div>

                <div class="item">
                    <img src="../../Templates/images/aits3.jpg" alt="">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</asp:Content>
