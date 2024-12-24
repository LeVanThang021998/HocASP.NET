<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="Lab02.DangKyThongTin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký Thông Tin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .form-container, .result-container {
            width: 600px;
            margin: 20px auto;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 8px;
            background-color: #f9f9f9;
        }
        .form-container h2, .result-container h2 {
            text-align: center;
            color: teal;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
        }
        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        .form-buttons {
            text-align: center;
        }
        .form-buttons button {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-submit {
            background-color: green;
            color: white;
        }
        .btn-reset {
            background-color: red;
            color: white;
        }
        .result-item {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Form đăng ký thông tin -->
        <div class="form-container">
            <h2>ĐĂNG KÝ THÔNG TIN</h2>

            <!-- Họ và tên -->
            <div class="form-group">
                <label for="txtHoVaTen">Họ và tên:</label>
                <input type="text" id="txtHoVaTen" runat="server" required />
            </div>

            <!-- Ngày sinh -->
            <div class="form-group">
                <label for="txtNgaySinh">Ngày sinh:</label>
                <input type="date" id="txtNgaySinh" runat="server" required />
            </div>

            <!-- Giới tính -->
            <div class="form-group">
                <label>Giới tính:</label>
                <input type="radio" id="rdoNam" name="gioiTinh" value="Nam" runat="server" /> Nam
                <input type="radio" id="rdoNu" name="gioiTinh" value="Nữ" runat="server" /> Nữ
            </div>

            <!-- Trình độ -->
            <div class="form-group">
                <label for="ddlTrinhDo">Trình độ:</label>
                <select id="ddlTrinhDo" runat="server">
                    <option value="Trung cấp">Trung cấp</option>
                    <option value="Cao đẳng">Cao đẳng</option>
                    <option value="Đại học">Đại học</option>
                    <option value="Sau đại học">Sau đại học</option>
                </select>
            </div>

            <!-- Nghề nghiệp -->
            <div class="form-group">
                <label for="ddlNgheNghiep">Nghề nghiệp:</label>
                <select id="ddlNgheNghiep" runat="server">
                    <option value="Kỹ sư">Kỹ sư</option>
                    <option value="Bác sĩ">Bác sĩ</option>
                    <option value="Công nhân">Công nhân</option>
                    <option value="Lập trình viên">Lập trình viên</option>
                </select>
            </div>

            <!-- Hình -->
            <div class="form-group">
                <label for="fileHinh">Hình:</label>
                <input type="file" id="fileHinh" runat="server" />
            </div>

            <!-- Sở thích -->
            <div class="form-group">
                <label>Sở thích:</label>
                <input type="checkbox" id="chkChoiGame" runat="server" /> Chơi game
                <input type="checkbox" id="chkNgheNhac" runat="server" /> Nghe nhạc
                <input type="checkbox" id="chkXemPhim" runat="server" /> Xem phim
                <input type="checkbox" id="chkDuLich" runat="server" /> Du lịch
                <input type="checkbox" id="chkMuaSam" runat="server" /> Mua sắm
            </div>

            <!-- Nút xử lý -->
            <div class="form-buttons">
                <button type="submit" class="btn-submit" onserverclick="btnSubmit_Click" runat="server">Gửi</button>
                <button type="button" class="btn-reset" onserverclick="btnReset_Click" runat="server">Làm lại</button>
            </div>
        </div>

        <!-- Phần hiển thị kết quả -->
        <div class="result-container" id="resultContainer" runat="server" visible="false">
            <h2>KẾT QUẢ ĐĂNG KÝ</h2>
            <div class="result-item"><strong>Họ và tên:</strong> <span id="lblHoVaTen" runat="server"></span></div>
            <div class="result-item"><strong>Ngày sinh:</strong> <span id="lblNgaySinh" runat="server"></span></div>
            <div class="result-item"><strong>Giới tính:</strong> <span id="lblGioiTinh" runat="server"></span></div>
            <div class="result-item"><strong>Trình độ:</strong> <span id="lblTrinhDo" runat="server"></span></div>
            <div class="result-item"><strong>Nghề nghiệp:</strong> <span id="lblNgheNghiep" runat="server"></span></div>
            <div class="result-item"><strong>Sở thích:</strong> <span id="lblSoThich" runat="server"></span></div>
        </div>
    </form>
</body>
</html>
