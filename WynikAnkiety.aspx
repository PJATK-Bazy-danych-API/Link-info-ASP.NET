<%@ Page Title="" Language="C#" MasterPageFile="~/StronaWzorcowa.Master" AutoEventWireup="true" CodeBehind="WynikAnkiety.aspx.cs" Inherits="RejestracjaWalidacja.WynikAnkiety" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="text-align: left; width: 60%; margin: 0px auto;">

        <h1 style="text-align: center">Podsumowanie Ankiety</h1>
        <h2 style="text-align: center">
            <asp:Label ID="LabelOsoba" runat="server"></asp:Label>
        </h2>
        <p style="text-align: left">Wybrane pozycje to:</p>
        <p style="text-align: left">
            <asp:Label ID="LabelASP" runat="server"></asp:Label>
        </p>
        <p style="text-align: left">
            <asp:Label ID="LabelSQL" runat="server"></asp:Label>
        </p>
        <p style="text-align: left">
            <asp:Label ID="LabelJP" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;
        </p>
        <a id="HyperLinkPowrot" href="Ankieta.aspx">Powrót do ANKIETY</a>
    </div>
</asp:Content>
