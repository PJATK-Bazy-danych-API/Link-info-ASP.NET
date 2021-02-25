<%@ Page Title="" Language="C#" MasterPageFile="~/StronaWzorcowa.Master" AutoEventWireup="true" CodeBehind="EdycjaLinkow.aspx.cs" Inherits="RejestracjaWalidacja.EdycjaLinkow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><h4><span class="tekstbanner">Edycja linków
                    </span>
                    </h4>
        <h5><span class="tekstbanner">Wybór elementu do edycji
                    </span>
                    </h5>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pd3308ConnectionString %>" 
        DeleteCommand="DELETE FROM [Link_ksiazka] WHERE [Id_linku] = @Id_linku" 
        InsertCommand="INSERT INTO [Link_ksiazka] ([link], [tytul], [opis]) VALUES (@link, @tytul, @opis)" 
        SelectCommand="SELECT [Id_linku], [link], [tytul], [opis] FROM [Link_ksiazka] WHERE ([czy_ksiazka] = @czy_ksiazka)" 
        UpdateCommand="UPDATE [Link_ksiazka] SET [link] = @link, [tytul] = @tytul, [opis] = @opis WHERE [Id_linku] = @Id_linku">
        <DeleteParameters>
            <asp:Parameter Name="Id_linku" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="link" Type="String" />
            <asp:Parameter Name="tytul" Type="String" />
            <asp:Parameter Name="opis" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="czy_ksiazka" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="link" Type="String" />
            <asp:Parameter Name="tytul" Type="String" />
            <asp:Parameter Name="opis" Type="String" />
            <asp:Parameter Name="Id_linku" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_linku" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="637px" EnableViewState="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id_linku" HeaderText="Id linku" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
            <asp:HyperLinkField DataNavigateUrlFields="link" DataNavigateUrlFormatString="{0}" DataTextField="tytul" HeaderText="Link" />
            <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
            <asp:CommandField ShowDeleteButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pd3308ConnectionString %>" 
        DeleteCommand="DELETE FROM [Link_ksiazka] WHERE [Id_linku] = @Id_linku" 
        InsertCommand="INSERT INTO [Link_ksiazka] ([link], [tytul], [autor], [okladka], [opis], [Id_kategorii], [Id_dodajacego], [czy_zatwierdzony], [czy_ksiazka]) VALUES (@link, @tytul, @autor, @okladka, @opis, @Id_kategorii, @Id_dodajacego, @czy_zatwierdzony, @czy_ksiazka)" 
        SelectCommand="SELECT [Id_linku], [link], [tytul], [autor], [okladka], [opis], [Id_kategorii], [Id_dodajacego], [data_dodania], [czy_zatwierdzony], [czy_ksiazka] FROM [Link_ksiazka] WHERE ([Id_linku] = @Id_linku)" 
        UpdateCommand="UPDATE [Link_ksiazka] SET [link] = @link, [tytul] = @tytul, [autor] = @autor, [okladka] = @okladka, [opis] = @opis, [Id_kategorii] = @Id_kategorii, [Id_dodajacego] = @Id_dodajacego, [data_dodania] = @data_dodania, [czy_zatwierdzony] = @czy_zatwierdzony, [czy_ksiazka] = @czy_ksiazka 
        WHERE [Id_linku] = @Id_linku">
        <DeleteParameters>
            <asp:Parameter Name="Id_linku" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="link" Type="String" />
            <asp:Parameter Name="tytul" Type="String" />
            <asp:Parameter Name="autor" Type="String" />
            <asp:Parameter Name="okladka" Type="String" />
            <asp:Parameter Name="opis" Type="String" />
            <asp:Parameter Name="Id_kategorii" Type="Int32" />
            <asp:Parameter Name="Id_dodajacego" Type="Int32" />
            <asp:Parameter Name="czy_zatwierdzony" Type="String" />
            <asp:Parameter Name="czy_ksiazka" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Id_linku" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="link" Type="String" />
            <asp:Parameter Name="tytul" Type="String" />
            <asp:Parameter Name="autor" Type="String" />
            <asp:Parameter Name="okladka" Type="String" />
            <asp:Parameter Name="opis" Type="String" />
            <asp:Parameter Name="Id_kategorii" Type="Int32" />
            <asp:Parameter Name="Id_dodajacego" Type="Int32" />
            <asp:Parameter Name="data_dodania" Type="DateTime" />
            <asp:Parameter Name="czy_zatwierdzony" Type="String" />
            <asp:Parameter Name="czy_ksiazka" Type="String" />
            <asp:Parameter Name="Id_linku" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pd3308ConnectionString %>" SelectCommand="SELECT [Id_kategorii], [kategoria1] FROM [kategoria1]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:pd3308ConnectionString %>" SelectCommand="SELECT DISTINCT (osoba1.imie + ' ' + osoba1.nazwisko) as dodajacy, osoba1.Id_osoby, Link_ksiazka.Id_dodajacego  FROM Link_ksiazka RIGHT OUTER JOIN osoba1 ON Link_ksiazka.Id_dodajacego = osoba1.Id_osoby"></asp:SqlDataSource>
   <div>
        <h5><span class="tekstbanner">Szczegóły:
                    </span>
                    </h5>
    </div>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id_linku" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="635px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Id_linku" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
            <asp:TemplateField HeaderText="Tytuł" SortExpression="tytul">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" Text='<%# Bind("tytul") %>' Width="438px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Podaj tytuł linku">Podaj tytuł linku</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" Text='<%# Bind("tytul") %>' Width="433px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Podaj tytuł linku">Podaj tytuł linku</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("tytul") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Link" SortExpression="link">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("link") %>' Width="428px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj adres">Podaj adres</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("link") %>' Height="16px" Width="422px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj adres">Podaj adres</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("link") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Kategoria" SortExpression="Id_kategorii">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="kategoria1" DataValueField="Id_kategorii" SelectedValue='<%# Bind("Id_kategorii") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="kategoria1" DataValueField="Id_kategorii" SelectedValue='<%# Bind("Id_kategorii") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:pd3308ConnectionString %>" SelectCommand="SELECT kategoria1.Id_kategorii, kategoria1.kategoria1, Link_ksiazka.Id_linku FROM kategoria1 INNER JOIN Link_ksiazka ON kategoria1.Id_kategorii = Link_ksiazka.Id_kategorii WHERE (Link_ksiazka.Id_linku = @Id_linku)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Id_linku" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource4">
                        <ItemTemplate>
                            <span style="color:red"><%# Eval("kategoria1") %></span>
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="autor" HeaderText="Autor" SortExpression="autor" />
            <asp:BoundField DataField="okladka" HeaderText="Okładka" SortExpression="okladka" />
            <asp:TemplateField HeaderText="Opis" SortExpression="opis">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Height="58px" Text='<%# Bind("opis") %>' TextMode="MultiLine" Width="578px"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Height="61px" Text='<%# Bind("opis") %>' TextMode="MultiLine" Width="574px"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("opis") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Dodany przez" SortExpression="Id_dodajacego">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource5" DataTextField="dodajacy" DataValueField="Id_osoby" SelectedValue='<%# Bind("Id_dodajacego") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="dodajacy" DataValueField="Id_osoby" SelectedValue='<%# Bind("Id_dodajacego") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:pd3308ConnectionString %>" 
                        SelectCommand="SELECT DISTINCT (osoba1.imie + ' ' + osoba1.nazwisko) as dodajacy, osoba1.Id_osoby, Link_ksiazka.Id_linku FROM osoba1 INNER JOIN Link_ksiazka ON osoba1.Id_osoby = Link_ksiazka.Id_dodajacego
WHERE ( Link_ksiazka.Id_linku = @Id_linku)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DetailsView1" Name="Id_linku" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource6">
                        <ItemTemplate>
                            <span style="color:red"><%# Eval("dodajacy") %></span>
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Data dodania" InsertVisible="False" SortExpression="data_dodania">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("data_dodania") %>' Height="18px" Width="215px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("data_dodania") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Czy zatwierdzony" SortExpression="czy_zatwierdzony">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server" SelectedValue='<%# Bind("czy_zatwierdzony") %>'>
                        <asp:ListItem Value="0">NIE</asp:ListItem>
                        <asp:ListItem Value="1">TAK</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList6" runat="server" SelectedValue='<%# Bind("czy_zatwierdzony") %>'>
                        <asp:ListItem Value="0">NIE</asp:ListItem>
                        <asp:ListItem Value="0">TAK</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("czy_zatwierdzony") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Czy książka" SortExpression="czy_ksiazka">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList7" runat="server" SelectedValue='<%# Bind("czy_ksiazka") %>'>
                        <asp:ListItem Value="0">NIE</asp:ListItem>
                        <asp:ListItem Value="1">TAK</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList8" runat="server" SelectedValue='<%# Bind("czy_ksiazka") %>'>
                        <asp:ListItem Value="0">NIE</asp:ListItem>
                        <asp:ListItem Value="1">TAK</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("czy_ksiazka") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
</asp:Content>
