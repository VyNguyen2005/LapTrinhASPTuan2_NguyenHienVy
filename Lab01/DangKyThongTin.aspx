<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="Lab01.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 class="text-center fs-2 bg-info text-white py-2" colspan="2"><strong>ĐĂNG KÍ THÔNG TIN&nbsp;</strong></h2>
            <table align="center" cellpadding="4" cellspacing="0" class="w-50">
                <tr>
                    <td class="auto-style1">Họ và tên</td>
                    <td>
                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control" required="" autofocus=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Ngày sinh</td>
                    <td>
                        <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Giới tính</td>
                    <td>
                        <asp:RadioButton ID="radNam" runat="server" Text="Nam" GroupName="namnu" Checked="true" CssClass="form-check-inline" />
                        <asp:RadioButton ID="radNu" runat="server" Text="Nữ" GroupName="namnu" CssClass="form-check-inline"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Trình dộ</td>
                    <td>
                        <asp:DropDownList ID="ddlTrinhDo" runat="server" CssClass="form-select">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Nghề nghiệp</td>
                    <td>
                        <asp:ListBox ID="lbNgheNghiep" runat="server" required="" Width="100%"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Hình</td>
                    <td>
                        <asp:FileUpload ID="fileHinh" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Sở thích</td>
                    <td>
                        <asp:CheckBoxList ID="cbSoThich" runat="server" CssClass="form-check">
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGui" runat="server" Text="Gửi" CssClass="btn btn-success" OnClick="btnGui_Click"/>
                        <asp:Button ID="btnLamLai" runat="server" Text="Làm lại" CssClass="btn btn-danger" OnClick="btnLamLai_Click"/>
                    </td>
                </tr>         
            </table>
            <asp:Label ID="lbKq" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
