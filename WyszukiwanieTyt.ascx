<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WyszukiwanieTyt.ascx.cs" Inherits="RejestracjaWalidacja.WyszukiwanieTyt" %>
<p>
    Podaj fragment tytułu:</p>
<p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Okienko nie może być puste"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Szukaj" />
</p>

