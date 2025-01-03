using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class BaiTap01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtSo1.Text);
            double num2 = Convert.ToDouble(txtSo2.Text);

            txtKetqua.Text = (num1 + num2).ToString(); 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtSo1.Text);
            double num2 = Convert.ToDouble(txtSo2.Text);

            txtKetqua.Text = (num1 - num2).ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtSo1.Text);
            double num2 = Convert.ToDouble(txtSo2.Text);

            txtKetqua.Text = (num1 * num2).ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtSo1.Text);
            double num2 = Convert.ToDouble(txtSo2.Text);

            txtKetqua.Text = (num1 / num2).ToString();
        }
    }
}