<%@ Page Language="C#" MasterPageFile="~/StronaWzorcowa.master" AutoEventWireup="true" CodeFile="Wyszukiwanie.aspx.cs" Inherits="RejestracjaWalidacja.Wyszukiwanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h1 style="text-align: center">Wyszukiwanie</h1>
        <h3>Witaj&nbsp
            <asp:Label ID="LabelImie" runat="server"></asp:Label>
        </h3>
        <p><a id="HyperLinkPowrot" href="Rejestracja.aspx">Powrót do rejestracju</a></p>
    </div>
</asp:Content>
