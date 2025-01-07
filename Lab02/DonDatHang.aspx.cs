using System;
using System.Collections.Generic;

namespace WebApplication
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void btnThem_Click(object sender, EventArgs e)
        {
            string loaiBanh = ddlLoaiBanh.SelectedItem.Text;
            string soLuong = txtSoLuong.Text;

            if (!string.IsNullOrEmpty(soLuong))
            {
                lstDanhSach.Items.Add($"{loaiBanh} ({soLuong})");
            }
        }

        protected void btnInDon_Click(object sender, EventArgs e)
        {
            pnlHoaDon.Visible = true;

            litKhachHang.Text = txtKhachHang.Text;
            litDiaChi.Text = txtDiaChi.Text;
            litMaSoThue.Text = txtMaSoThue.Text;

            var danhSachBanh = new List<object>();
            foreach (var item in lstDanhSach.Items)
            {
                string[] parts = item.ToString().Split('(');
                danhSachBanh.Add(new
                {
                    TenBanh = parts[0].Trim(),
                    SoLuong = parts[1].Replace(")", "").Trim()
                });
            }

            rptHoaDon.DataSource = danhSachBanh;
            rptHoaDon.DataBind();
        }
    }
}
