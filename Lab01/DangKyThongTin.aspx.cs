using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                NhapDuLieu();
            }
        }

        private void NhapDuLieu()
        {
            ddlTrinhDo.Items.Add(new ListItem("Trung cấp", "01"));
            ddlTrinhDo.Items.Add(new ListItem("Cao đẳng", "02"));
            ddlTrinhDo.Items.Add(new ListItem("Đại học", "03"));

            lbNgheNghiep.Items.Add(new ListItem("Sinh viên", "01"));
            lbNgheNghiep.Items.Add(new ListItem("Công nhân", "02"));
            lbNgheNghiep.Items.Add(new ListItem("Kỹ sư", "03"));
            lbNgheNghiep.Items.Add(new ListItem("Luật sư", "04"));
            lbNgheNghiep.Items.Add(new ListItem("Học sinh", "05"));
            lbNgheNghiep.Items.Add(new ListItem("Lập trình viên", "06"));

            cbSoThich.Items.Add(new ListItem("Nghe nhạc", "01"));
            cbSoThich.Items.Add(new ListItem("Chơi game", "02"));
            cbSoThich.Items.Add(new ListItem("Xem phim", "03"));
            cbSoThich.Items.Add(new ListItem("Chạy bộ", "04"));
            cbSoThich.Items.Add(new ListItem("Ngủ", "05"));
            cbSoThich.Items.Add(new ListItem("Đọc sách", "06"));
        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += string.Format("<h2 class='text-center fs-2 bg-info text-white py-2'>KẾT QUẢ ĐĂNG KÝ</h2>");
            kq += string.Format("<li>Họ và tên: <b>{0}</b></li>", txtHoTen.Text);
            kq += string.Format("<li>Ngày sinh: <b>{0}</b></li>", txtNgaySinh.Text);
            kq += string.Format("<li>Giới tính: <b>{0}</b></li>", (radNam.Checked ? radNam.Text : radNu.Text));
            kq += string.Format("<li>Trình độ: <b>{0}</b></li>", ddlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li>Nghề nghiệp: <b>{0}</b></li>", lbNgheNghiep.SelectedItem.Text);
            if (fileHinh.HasFile)
            {
                string path = Server.MapPath("~/uploads");
                string filename = fileHinh.FileName;
                fileHinh.SaveAs(path + "/" + filename);
                kq += string.Format("<li>Hình ảnh: <img src='/uploads/{0}' width='200px'></li>", filename);
            }
            string sothich = "";
            foreach (ListItem item in cbSoThich.Items)
            {
                if (item.Selected)
                {
                    sothich += item.Text + "; ";
                }
            }
            kq += string.Format("<li>Sở thích: <b>{0}</b></li>", sothich);
            kq += "</ul>";
            lbKq.Text = kq;
        }

        protected void btnLamLai_Click(object sender, EventArgs e)
        {
            txtHoTen.Text = "";
            txtNgaySinh.Text = "";
            ddlTrinhDo.SelectedIndex = 0;
            lbNgheNghiep.SelectedIndex = -1;
            foreach (ListItem item in cbSoThich.Items)
            {
                item.Selected = false;
            }
            lbKq.Text = "";
        }
    }
}