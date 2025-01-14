<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangKyThanhVien.aspx.cs" Inherits="DangKyThanhVien" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hồ Sơ Đăng Ký</title>
    <style>
        /* Tổng quan trang */
        body {
            /*font-family: Arial, sans-serif;*/
            background-color: #f3f4f6;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        /* Hàng và cột */
        .form-section {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .form-column {
            flex: 1;
            min-width: 45%;
            background: #f7f9fc;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 8px;
        }

        /* Các phần tiêu đề */
        .form-column h3 {
            font-size: 18px;
            color: #444;
            margin-bottom: 15px;
            border-bottom: 2px solid #ccc;
            padding-bottom: 5px;
        }

        /* Cách căn chỉnh bảng */
        table {
            width: 100%;
        }
        table td {
            padding: 10px 5px;
        }
        table td:first-child {
            text-align: right;
            font-weight: bold;
            color: #555;
            width: 35%;
        }
        table input[type="text"],
        table input[type="password"],
        table input[type="email"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        /* Nút đăng ký */
        .btn {
            text-align: center;
            margin-top: 20px;
        }
        .btn input {
            padding: 10px 20px;
            background: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn input:hover {
            background: #0056b3;
        }

        /* Thông báo lỗi */
        .error-list {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
        .success {
            color: green;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="title">Hồ Sơ Đăng Ký</div>
            <div class="form-section">
                <!-- Cột trái: Thông tin đăng nhập -->
                <div class="form-column">
                    <h3>Thông Tin Đăng Nhập</h3>
                    <table>
                        <tr>
                            <td>Tên đăng nhập:</td>
                            <td><asp:TextBox ID="txtTenDangNhap" runat="server" placeholder="Nhập tên đăng nhập"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Mật khẩu:</td>
                            <td><asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" placeholder="Nhập mật khẩu"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Nhập lại mật khẩu:</td>
                            <td><asp:TextBox ID="txtNhapLaiMatKhau" runat="server" TextMode="Password" placeholder="Nhập lại mật khẩu"></asp:TextBox></td>
                        </tr>
                    </table>
                    <h3>Thông Tin Cá Nhân</h3>
                    <table>
                        <tr>
                            <td>Họ tên:</td>
                            <td><asp:TextBox ID="txtHoTen" runat="server" placeholder="Nhập họ tên"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Ngày sinh:</td>
                            <td><asp:TextBox ID="txtNgaySinh" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><asp:TextBox ID="txtEmail" runat="server" placeholder="Nhập email"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Địa chỉ:</td>
                            <td><asp:TextBox ID="txtDiaChi" runat="server" placeholder="Nhập địa chỉ"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Điện thoại:</td>
                            <td><asp:TextBox ID="txtDienThoai" runat="server" placeholder="Nhập số điện thoại"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>

                <!-- Cột phải: Danh sách lỗi -->
                <div class="form-column">
                    <h3>Danh Sách Lỗi</h3>
                    <asp:Label ID="lblDanhSachLoi" runat="server" CssClass="error-list"></asp:Label>
                </div>
            </div>

            <!-- Nút đăng ký -->
            <div class="btn">
                <asp:Button ID="btnDangKy" runat="server" Text="Đăng Ký" OnClick="btnDangKy_Click" />
            </div>
        </div>
    </form>
</body>
</html>
