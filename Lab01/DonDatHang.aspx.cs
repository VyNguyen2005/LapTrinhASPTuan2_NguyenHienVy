using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
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
            ddLoaiBanhs.Items.Add(new ListItem("Chicken Burger", "01"));
            ddLoaiBanhs.Items.Add(new ListItem("Cheese Burger", "02"));
            ddLoaiBanhs.Items.Add(new ListItem("Mozzarella Burger", "03"));
            ddLoaiBanhs.Items.Add(new ListItem("Double Double Burger", "04"));
            ddLoaiBanhs.Items.Add(new ListItem("Shrimp Burger", "05"));
            ddLoaiBanhs.Items.Add(new ListItem("Bulgogi Burger", "06"));
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                string loaibanh = ddLoaiBanhs.SelectedItem.Text;
                int soluong = int.Parse(txtSoLuongDat.Text);
                bool find = false;
                foreach (ListItem item in lbLoaiBanhs.Items)
                {
                    if (item.Text.StartsWith(loaibanh))
                    {
                        string[] arr = item.Text.Split(new char[] { '(', ')' });
                        soluong += int.Parse(arr[1]);
                        item.Text = $"{loaibanh} ({soluong})";
                        find = true;
                    }
                }
                if (!find)
                {
                    lbLoaiBanhs.Items.Add($"{loaibanh} ({soluong})");
                }
            }
            catch (Exception)
            {

            }
        }

        protected void btnXoa_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = lbLoaiBanhs.Items.Count - 1; i >= 0; i--)
            {
                if (lbLoaiBanhs.Items[i].Selected)
                {
                    lbLoaiBanhs.Items.RemoveAt(i);
                }
            }
        }

        protected void btnInDH_Click(object sender, EventArgs e)
        {
            string kq = "";
            kq += string.Format("<h3 class='bg-danger text-center text-white py-1 border-1'>HOÁ ĐƠN ĐẶT HÀNG</h3>");
            kq += string.Format("<b><label>Khách hàng: {0}</label></b><br>", txtKhachhang.Text);
            kq += string.Format("<b><label>Địa chỉ: {0}</label></b><br>", txtDiachi.Text);
            kq += string.Format("<b><label>Mã số thuế: {0}</label></b><br>", txtMsThue.Text);
            kq += string.Format("<b><label>Đặt các loại bánh sau:</label></b><br>");
            kq += "<table class='table table-bordered'>";
            foreach (ListItem item in lbLoaiBanhs.Items)
            {
                string data = item.Text;
                string[] arr = data.Split(new char[] { '(', ')' });
                kq += $"<tr><td class='text-danger'>{arr[0]}</td><td class='text-danger'>{arr[1]}</td></tr>";
            }
            kq += "</table>";
            lbKq.Text = kq;
        }
    }
}