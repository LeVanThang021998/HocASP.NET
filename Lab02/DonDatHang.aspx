<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="WebApplication.DonDatHang" %>

<!DOCTYPE html>
<html>
<head>
    <title>Đơn Đặt Hàng</title>
    <style>
        body {
            background-color: #e8f5e9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            max-width: 700px;
            margin: 30px auto;
            background-color: #ffffff;
            border: 2px solid #4caf50;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        .header {
            background-color: #4caf50;
            color: white;
            text-align: center;
            padding: 15px;
            font-size: 24px;
            font-weight: bold;
            border-radius: 8px 8px 0 0;
        }
        .form-section {
            padding: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
            width: 871px;
        }
        input[type="text"], select {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }
        .btn {
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            font-size: 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .list-box {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            overflow-y: auto;
            background-color: #f9fbe7;
        }
        .invoice {
            margin-top: 20px;
            padding: 20px;
            border: 2px solid #f44336;
            background-color: #ffebee;
            border-radius: 10px;
        }
        .invoice-header {
            text-align: center;
            color: #d32f2f;
            font-size: 20px;
            font-weight: bold;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th {
            background-color: #f1f8e9;
            padding: 10px;
            font-weight: bold;
            text-align: center;
        }
        td {
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Header -->
            <div class="header">ĐƠN ĐẶT HÀNG</div>

            <!-- Form Section -->
            <div class="form-section">
                <div class="form-group">
                    <label for="txtKhachHang">Khách hàng:</label>
                    <asp:TextBox ID="txtKhachHang" runat="server" placeholder="Nhập tên khách hàng" Width="655px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtDiaChi">Địa chỉ:</label>
                    <asp:TextBox ID="txtDiaChi" runat="server" placeholder="Nhập địa chỉ" Width="655px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtMaSoThue">Mã số thuế:</label>
                    <asp:TextBox ID="txtMaSoThue" runat="server" placeholder="Nhập mã số thuế" Width="655px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="ddlLoaiBanh">Chọn loại bánh:</label>
                    <asp:DropDownList ID="ddlLoaiBanh" runat="server" Width="677px">
                        <asp:ListItem Text="Bánh Croissant bơ" Value="250"></asp:ListItem>
                        <asp:ListItem Text="Bánh bò nướng" Value="123"></asp:ListItem>
                        <asp:ListItem Text="Patés chauds" Value="50"></asp:ListItem>
                        <asp:ListItem Text="Hamburger" Value="1500"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="txtSoLuong">Số lượng:</label>
                    <asp:TextBox ID="txtSoLuong" runat="server" placeholder="Nhập số lượng" Width="654px"></asp:TextBox>
                </div>
                <asp:Button ID="btnThem" runat="server" Text="Thêm" CssClass="btn" OnClick="btnThem_Click" />
                <asp:Button ID="btnInDon" runat="server" Text="In Đơn Đặt Hàng" CssClass="btn" OnClick="btnInDon_Click" />
            </div>

            <!-- List Section -->
            <div class="form-section">
                <label for="lstDanhSach">Danh sách bánh được đặt:</label>
                <asp:ListBox ID="lstDanhSach" runat="server" CssClass="list-box" Height="126px" Width="282px"></asp:ListBox>
            </div>

            <!-- Invoice -->
            <asp:Panel ID="pnlHoaDon" runat="server" Visible="false" CssClass="invoice">
                <div class="invoice-header">HÓA ĐƠN ĐẶT HÀNG</div>
                <p><strong>Khách hàng:</strong> <asp:Literal ID="litKhachHang" runat="server"></asp:Literal></p>
                <p><strong>Địa chỉ:</strong> <asp:Literal ID="litDiaChi" runat="server"></asp:Literal></p>
                <p><strong>Mã số thuế:</strong> <asp:Literal ID="litMaSoThue" runat="server"></asp:Literal></p>
                <table>
                    <thead>
                        <tr>
                            <th>Tên bánh</th>
                            <th>Số lượng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptHoaDon" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("TenBanh") %></td>
                                    <td><%# Eval("SoLuong") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
