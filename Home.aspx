<%@ Page Title="" Language="C#" MasterPageFile="~/StronaWzorcowa.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RejestracjaWalidacja.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Witamy w:
    </p>
    <h3><span class="tekstbanner">Link-Info - ASP.NET PJATK</span></h3>
    <p>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    </p>
    <p>Mapa witryny:</p>
    <p>
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ShowLines="True">
        </asp:TreeView>
    </p>
</asp:Content>
