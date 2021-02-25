<%@ Page Language="C#" MasterPageFile="~/StronaWzorcowa.Master" AutoEventWireup="true" CodeFile="Rejestracja.aspx.cs" Inherits="RejestracjaWalidacja.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="myDiv">
            <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                    <table>
                        <tr>
                            <td>Imię:</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Nick:</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Wybierz</asp:ListItem>
                                    <asp:ListItem Value="PJATK">Student lub pracownik PJATK</asp:ListItem>
                                    <asp:ListItem Value="Gosc">Gość</asp:ListItem>
                                </asp:DropDownList></td>
                            <td></td>

                        </tr>

                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table>
                        <tr><td></td><td>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td><td></td></tr>
                        <tr>
                            <td>Imię:</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Podaj imię">!!!</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Nick:</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Podaj nick">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Nazwisko:</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Podaj nazwisko">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>E-mail:</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Podaj e-mail">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Niepoprawny format e-mail" ControlToValidate="TextBox6" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Nr studenta/login:</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Podaj nr studenta/login">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Hasło:</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Wpisz hasło">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Powtórz hasło:</td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="Powtórz hasło">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Hasła nie są jednakowe " ControlToCompare="TextBox8" ControlToValidate="TextBox9">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />&nbsp
                                <asp:Button ID="Button2" runat="server" Text="Przejście do wyszukiwania" OnClick="Button2_Click" />
                            </td>
                            <td></td>
                            </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Zauważone błędy:" />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table>
                        <tr><td></td><td>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td><td></td></tr>
                        <tr>
                            <td>Imię:</td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" ErrorMessage="Podaj imię">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                         <tr>
                            <td>Nick:</td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" ErrorMessage="Podaj nick">*</asp:RequiredFieldValidator>
                             </td>
                        </tr>
                         <tr>
                            <td colspan="2">Dane statystyczne</td>
                            <td></td>
                             </tr>
                         <tr>
                            <td>Rok urodzenia:</td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox12" ErrorMessage="Wpisz rok urodzenia">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Rok urodzenia poza zakresem" ControlToValidate="TextBox12" MaximumValue="2010" MinimumValue="1900" Type="Integer">*</asp:RangeValidator>
                             </td>
                        </tr>
                         <tr>
                            <td>Grupa statystyczna:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Student</asp:ListItem>
                                    <asp:ListItem>Informatyk</asp:ListItem>
                                    <asp:ListItem Value="Poczatkujący">Początkujący</asp:ListItem>
                                </asp:DropDownList></td>
                            <td></td>
                        </tr>
                         <tr>
                            <td>Czy chcesz się zarejestrować</td>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="Tak/Nie" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" /></td>
                            <td></td>
                        </tr>
                         <tr>
                            <td>Nazwisko:</td>
                            <td>
                                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td>E-mail:</td>
                            <td>
                                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Niepoprawny format e-mail" ControlToValidate="TextBox14">*</asp:RegularExpressionValidator>
                             </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="OK" OnClick="Button3_Click" /></td>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="Wyczyść" OnClick="Button4_Click" /></td>
                            <td></td>
                        </tr>
                         <tr>
                            <td colspan="2">
                                <asp:Button ID="Button5" runat="server" Text="Przejście do wyszukiwania" OnClick="Button5_Click" /></td>
                            <td></td>
                            
                        </tr>

                    </table>
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" HeaderText="Zauważone błędy:" ShowMessageBox="True" />
                </asp:View>
            </asp:MultiView>
        </div>
    </asp:Content>
