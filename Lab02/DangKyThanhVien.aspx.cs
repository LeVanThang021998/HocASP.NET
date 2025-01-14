using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DangKyThongTin
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Chỉ khởi tạo dữ liệu khi trang được tải lần đầu
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            // Khởi tạo dữ liệu cho ddlNgaySinh (1-31)
            ddlNgaySinh.Items.Add(new ListItem("--Chọn ngày--", ""));
            for (int i = 1; i <= 31; i++)
            {
                ddlNgaySinh.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            // Khởi tạo dữ liệu cho ddlThangSinh (1-12)
            ddlThangSinh.Items.Add(new ListItem("--Chọn tháng--", ""));
            for (int i = 1; i <= 12; i++)
            {
                ddlThangSinh.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            // Khởi tạo dữ liệu cho ddlNamSinh (1900 - Năm hiện tại)
            ddlNamSinh.Items.Add(new ListItem("--Chọn năm--", ""));
            int currentYear = DateTime.Now.Year;
            for (int i = 2000; i <= currentYear; i++)
            {
                ddlNamSinh.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += $"<li>Họ tên :<i>{txtTenKhachHang.Text}</i></li>";
            kq += "</ul>";

            lblKetQua.Text = kq;
        }
    }
}