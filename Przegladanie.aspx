<%@ Page Title="" Language="C#" MasterPageFile="~/StronaWzorcowa.Master" AutoEventWireup="true" CodeBehind="Przegladanie.aspx.cs" Inherits="RejestracjaWalidacja.Przegladanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h5><span class="tekstbanner">Przeglądanie linków:
        </span>
        </h5>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pd3308ConnectionString %>" SelectCommand="SELECT [Id_linku], [link], [tytul], [opis] FROM [Link_ksiazka] WHERE (([czy_ksiazka] = @czy_ksiazka) AND ([czy_zatwierdzony] = @czy_zatwierdzony))">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="czy_ksiazka" Type="String" />
            <asp:Parameter DefaultValue="1" Name="czy_zatwierdzony" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_linku" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id_linku" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
            <asp:HyperLinkField DataNavigateUrlFields="link" DataNavigateUrlFormatString="{0}" DataTextField="tytul" HeaderText="Link" />
            <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <div>
        <h5><span class="tekstbanner">Szczegóły:
        </span>
        </h5>
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pd3308ConnectionString %>" SelectCommand="SELECT Link_ksiazka.Id_linku, Link_ksiazka.link, Link_ksiazka.tytul, Link_ksiazka.opis, Link_ksiazka.data_dodania, Kategoria1.kategoria1, Osoba1.imie + ' ' + Osoba1.nazwisko AS Osoba FROM Link_ksiazka INNER JOIN Kategoria1 ON Link_ksiazka.Id_kategorii = Kategoria1.Id_kategorii INNER JOIN Osoba1 ON Link_ksiazka.Id_dodajacego = Osoba1.Id_osoby WHERE (Link_ksiazka.czy_ksiazka = @czy_ksiazka)
and (Link_ksiazka.czy_zatwierdzony =@czy_zatwierdzony)
and (Link_ksiazka.Id_linku =@Id_linku)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="czy_ksiazka" />
            <asp:Parameter DefaultValue="1" Name="czy_zatwierdzony" />
            <asp:ControlParameter ControlID="GridView1" Name="Id_linku" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id_linku" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Style="margin-right: 9px" Width="515px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Id_linku" HeaderText="Id linku" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
            <asp:HyperLinkField DataNavigateUrlFields="Link" DataNavigateUrlFormatString="{0}" DataTextField="link" HeaderText="Link" />
            <asp:BoundField DataField="tytul" HeaderText="Tytuł" SortExpression="tytul" />
            <asp:BoundField DataField="kategoria1" HeaderText="Kategoria" SortExpression="kategoria1" />
            <asp:BoundField DataField="opis" HeaderText="Opis" SortExpression="opis" />
            <asp:BoundField DataField="data_dodania" DataFormatString="{0:D}" HeaderText="Data_dodania" SortExpression="data_dodania" />
            <asp:BoundField DataField="Osoba" HeaderText="Osoba" ReadOnly="True" SortExpression="Osoba" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>

</asp:Content>
