<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThongTinChiTietUV.aspx.cs" Inherits="CPanel.Modules.UngVien.ThongTinChiTietUV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12">
        <div class="col-xs-4">
            <label style="font-size:16px">Họ và tên: </label>
            <asp:Label ID="lblTen" runat="server"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label style="font-size:16px">Ngày sinh: </label>
            <asp:Label ID="lblNgaySinh" runat="server"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label style="font-size:16px">Email: </label>
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="col-xs-4">
            <label style="font-size:16px">Số điện thoại: </label>
            <asp:Label ID="lblSDT" runat="server"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label style="font-size:16px">Vị trí tuyển dụng: </label>
            <asp:Label ID="lblViTri" runat="server"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label style="font-size:16px">Thời gian làm bài: </label>
            <asp:Label ID="lblThoiGian" runat="server"></asp:Label>
        </div>
    </div>

    <div class="col-xs-12 text-center">
        <h3 style="font-weight: bold; font-size: 22px; margin-top:40px">GIỚI THIỆU VỀ CÔNG TY</h3>
    </div>

    <div class="col-xs-12">
        <p style="font-size: 16px; text-align: justify">Nằm trong chủ trương chung về phát triển Vietnam Airlines (VNA) thành một Tập đoàn Kinh tế mạnh, các cấp Lãnh đạo của VNA đã nhìn nhận Công nghệ Thông tin - Viễn thông (CNTT-VT) là một trong những trọng tâm phát triển trong giai đoạn mở cửa bầu trời và cạnh tranh trong Thương mại Điện tử toàn cầu. Việc thành lập Công ty Cổ phần Tin học - Viễn thông Hàng không (AITS) được triển khai theo định hướng của Đảng và Nhà nước trong giai đoạn hội nhập nền Kinh tế, mở rộng quan hệ trên thương trường và nâng cao năng lực cạnh tranh với các Hãng hàng không trên thế giới và trong khu vực.</p>
        <br />
        <p style="font-size: 16px; text-align: justify">AITS được thành lập ngày 11/11/2008 và đi vào hoạt động chính thức từ ngày 01/01/2009 với mô hình Công ty Cổ phần hoạt động trong lĩnh vực CNTT-VT, xử lý dữ liệu với sự tham gia của các cổ đông sáng lập là Tổng Công ty Hàng không Việt Nam (VNA), Tập đoàn Bưu chính Viễn thông Việt Nam (VNPT) và Công ty cổ phần Tập đoàn HiPT (HiPT).</p>
        <br />
        <p style="font-size: 16px; text-align: justify">Nhân sự của AITS ban đầu gồm hơn 200 lao động tiếp nhận từ Trung tâm Thống kê - Tin học Hàng không thuộc VNA. Sau hơn 10 năm hoạt động, hiện nay Công ty có đội ngũ lao động 350 người trong đó có các chuyên gia hàng đầu về CNTT-VT. Với đội ngũ nhân sự này, thế mạnh nổi trội của AITS là kinh nghiệm hoạt động trong lĩnh vực Hàng không dân dụng, hiểu biết về yêu cầu và nghiệp vụ của ngành hàng không, nắm rõ về công nghệ, quy trình hoạt động, sản xuất Kinh doanh của Vietnam Airlines nói riêng và ngành Hàng không dân dụng Việt Nam cũng như trên thế giới nói chung.</p>
    </div>

    <div class="col-xs-12 text-center">
        <label style="font-weight: bold; font-size: 22px; color: red; margin-top:40px">BẠN CÓ CHẮC CHẮN MUỐN LÀM BÀI THI KHÔNG?</label>
    </div>

    <div class="col-xs-12 text-center" style="margin-top:30px">
        <asp:Button ID="btnNext" Text="Next" OnClick="btnNext_Click" CssClass="btn btn-warning"  Font-Size="Small" runat="server"
            style="
            background-image: linear-gradient(to right, #ef32d9 0%, #89fffd  51%, #ef32d9  100%);
            margin-left:910px;
            padding: 5px 10px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;"
            ></asp:Button>
    </div>
</asp:Content>

        