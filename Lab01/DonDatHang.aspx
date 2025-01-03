<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 181px;
        }
        .auto-style3 {
            width: 123%;
            height: 278px;
            margin-right: 0px;
        }
        .auto-style4 {
            margin-left: 13;
        }
        table{
            border: 1px solid green;
        }
        .auto-style7 {
            width: 193px;
        }
        #btnInDH{
            background-color: forestgreen;
            border: 1px solid black;
            color: white;
            font-size: 18px;
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <table class="auto-style1 w-50">
                <tr>
                    <td colspan="2"><h2 class="text-center bg-primary text-white py-1">ĐƠN ĐẶT HÀNG</h2></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Khách hàng"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtKhachhang" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Địa chỉ"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDiachi" runat="server" CssClass="auto-style4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Mã số thuế"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtMsThue" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Chọn các loại bánh sau: "></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Danh sách bánh được đặt: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddLoaiBanhs" runat="server" CssClass="form-select"></asp:DropDownList><br />
                        <asp:Label ID="Label6" runat="server" Text="Số lượng: "></asp:Label><asp:TextBox ID="txtSoLuongDat" runat="server"></asp:TextBox><asp:Label ID="Label7" runat="server" Text=" cái"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:ListBox ID="lbLoaiBanhs" runat="server" Width="349px" SelectionMode="Multiple"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnThem" runat="server" Text=">" OnClick="btnThem_Click"/>
                    </td>
                    <td class="auto-style7">
                        <asp:ImageButton ID="btnXoa" runat="server" ImageUrl="~/Images/delete.gif" OnClick="btnXoa_Click"/></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center">
                        <asp:Button ID="btnInDH" runat="server" Text="In đơn đặt hàng" OnClick="btnInDH_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Label ID="lbKq" runat="server" ForeColor="#FF3300"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
