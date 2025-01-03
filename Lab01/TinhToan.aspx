<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="Lab01.BaiTap01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            justify-content: center;
            align-content: center;
            text-align: center;
            border: solid 1px Highlight;
        }
        .auto-style2 {
            color: black;
            background-color: darkturquoise;
            font-size: 40px;
            font-family: sans-serif;
            font-weight: 600;
            padding: 5px 0;
        }
        .btn{
            margin: 10px 1px;
            padding: 8px 15px;
            border: solid 1px grey;
            border-radius: 5px;
            font-size: 18px;
        }
        .btnCong{
            color: white;
            background-color: Highlight;
        }
        .btnTru{
            color: white;
            background-color: orangered;
        }
        .btnNhan{
            color: white;
            background-color: orange;
        }
        .btnChia{
            color: white;
            background-color: gray;
        }
        .auto-style4 {
            width: 389px;
            height: 26px;
            text-align: right;
        }
        .auto-style5 {
            height: 26px;
            text-align: left;
        }
        .auto-style6 {
            width: 389px;
            text-align: right;
        }
        .auto-style7 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">Tính toán đơn giản</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="Nhập số 1:" style="text-align: right; font-size: 18px;" CssClass="txtSo1"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtSo1" runat="server" Width="189px" Height="27px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Nhập số 2:" style="text-align: right; font-size: 18px;"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtSo2" runat="server" Width="189px" Height="27px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Cộng" CssClass="btn btnCong" OnClick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="Trừ" CssClass="btn btnTru" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Nhân" CssClass="btn btnNhan" OnClick="Button3_Click"/>
                    <asp:Button ID="Button4" runat="server" Text="Chia" CssClass="btn btnChia" OnClick="Button4_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="Kết quả" style="text-align: center; color: red; font-size: 18px;"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtKetqua" runat="server" Width="189px" ReadOnly="True" Height="27px"></asp:TextBox>
                </td>
            </tr>
        </table>
       
    </form>
</body>
</html>
