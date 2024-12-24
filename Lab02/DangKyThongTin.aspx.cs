using System;
using System.Web.UI;

namespace Lab02
{
    public partial class DangKyThongTin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                resultContainer.Visible = false; // Ẩn kết quả ban đầu
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Lấy thông tin từ form
            string hoVaTen = txtHoVaTen.Value;
            string ngaySinh = txtNgaySinh.Value;
            string gioiTinh = rdoNam.Checked ? "Nam" : "Nữ";
            string trinhDo = ddlTrinhDo.Value;
            string ngheNghiep = ddlNgheNghiep.Value;

            // Xử lý sở thích
            string soThich = "";
            if (chkChoiGame.Checked) soThich += "Chơi game, ";
            if (chkNgheNhac.Checked) soThich += "Nghe nhạc, ";
            if (chkXemPhim.Checked) soThich += "Xem phim, ";
            if (chkDuLich.Checked) soThich += "Du lịch, ";
            if (chkMuaSam.Checked) soThich += "Mua sắm, ";

            // Loại bỏ dấu phẩy cuối
            if (soThich.EndsWith(", "))
                soThich = soThich.Substring(0, soThich.Length - 2);

            // Gán dữ liệu vào các thẻ hiển thị kết quả
            lblHoVaTen.InnerText = hoVaTen;
            lblNgaySinh.InnerText = ngaySinh;
            lblGioiTinh.InnerText = gioiTinh;
            lblTrinhDo.InnerText = trinhDo;
            lblNgheNghiep.InnerText = ngheNghiep;
            lblSoThich.InnerText = soThich;

            // Hiển thị container kết quả
            resultContainer.Visible = true;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            // Xóa toàn bộ form
            txtHoVaTen.Value = "";
            txtNgaySinh.Value = "";
            rdoNam.Checked = false;
            rdoNu.Checked = false;
            ddlTrinhDo.SelectedIndex = 0;
            ddlNgheNghiep.SelectedIndex = 0;
            chkChoiGame.Checked = false;
            chkNgheNhac.Checked = false;
            chkXemPhim.Checked = false;
            chkDuLich.Checked = false;
            chkMuaSam.Checked = false;

            // Ẩn phần kết quả
            resultContainer.Visible = false;
        }
    }
}
