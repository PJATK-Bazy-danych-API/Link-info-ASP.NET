<%@ Page Title="" Language="C#" MasterPageFile="~/StronaWzorcowa.Master" AutoEventWireup="true" CodeBehind="Ankieta.aspx.cs" Inherits="RejestracjaWalidacja.Ankieta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="text-align: left; width: 60%; margin: 0px auto;">
        <h3 style="text-align: center">Określenie zainteresowań - Ankieta</h3>
        <p style="text-align: center">
            Imię:<asp:TextBox ID="TextBoxImie" runat="server"></asp:TextBox>
            &nbsp;&nbsp;i nazwisko:
            <asp:TextBox ID="TextBoxNazwisko" runat="server"></asp:TextBox>

        </p>

        <table>
            <tr>
                <td>Kategoria</td>
                <td>
                    <asp:Label ID="LabelPodkategorie" runat="server" Text="Podkategorie" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="ASP.NET" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxListASP" runat="server" AutoPostBack="True" Visible="False">
                        <asp:ListItem>Podstawy</asp:ListItem>
                        <asp:ListItem>Master Page</asp:ListItem>
                        <asp:ListItem>Dostęp do BD</asp:ListItem>
                        <asp:ListItem>Ajax</asp:ListItem>
                        <asp:ListItem>Bezpieczeństwo</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="MS SQLServer" OnCheckedChanged="CheckBox2_CheckedChanged" AutoPostBack="True" />
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxListSQL" runat="server" AutoPostBack="True" Visible="False">
                        <asp:ListItem>DDL</asp:ListItem>
                        <asp:ListItem>DML</asp:ListItem>
                        <asp:ListItem>SQL</asp:ListItem>
                        <asp:ListItem>T-SQL</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Języki programowania" OnCheckedChanged="CheckBox3_CheckedChanged" AutoPostBack="True" />
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxListJP" runat="server" AutoPostBack="True" Visible="False">
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>VB</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButtonPodsumowanie" runat="server" Text="Podsumowanie" OnClick="ButtonPodsumowanie_Click" />
                </td>
                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>
