<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="netcoreasp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        
        .auto-style2 {
            height: 29px;
        }
        
    </style>
    <link rel ="stylesheet" href ="StyleSheet1.css" /> 
     <script src="JavaScript.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
    <section id ="LoginSection">
            <h3>Zaloguj sie: </h3>
            
        Email:<asp:TextBox ID="EmailLoginTextBox" runat="server"></asp:TextBox>
        
            Haslo:<asp:TextBox ID="PasswordLoginTextBox" runat ="server"></asp:TextBox>
                     
    
        <p>
            <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Zaloguj!" Width ="200px" />
        </p>
    </section>
            <h3>Usun kontakt po ID:</h3>  
             <asp:TextBox ID="deleteIdTextBox" runat="server" CssClass="auto-style3"></asp:TextBox>
        <p>
            <asp:Button ID="DeleteContactButton" runat="server" OnClick="DeleteContactButton_Click" Text="Usun kontakt" Width="200px" />
        </p>                                
            <h3>Dodaj Kontakt </h3>      
    <table class="auto-style1">       
        <tr>
            <td>
                 <span>ID: </span>
               <asp:TextBox ID="TextBox0" runat="server" CssClass="auto-style3"></asp:TextBox>
            </td>
        </tr> 
        <tr>        
         <td>
             <span>Imie: </span>
             <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
         </td>         
        </tr>
        <tr>
            <td>
                <span>Nazwisko: </span>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>            
        </tr>
        <tr>
            <td>
                <span>Email: </span>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>           
        </tr>

        <tr>
            <td>
                <span>Haslo: </span>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>           
            </td>        
        </tr>
        <tr>
            <td>
                <span>Kategoria: </span>
                <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Slużbowy</asp:ListItem>
                <asp:ListItem>Prywatny</asp:ListItem>
                </asp:DropDownList>
               </td>         
        </tr>

        <tr>
           <td>
               <span>Telefon: </span>
               <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
           </td>
            
        </tr>
        <tr>
            <td>
                <span>Data urodzenia: </span>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td><span><span>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj kontakt" Width="200px" />
                </span></span></td>
           
        </tr>
        <tr>
            <td class="auto-style2">Kontakty: </td>
        
        </tr>
        <tr>
           
        </tr>
    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
