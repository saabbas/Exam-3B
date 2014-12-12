<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="auto:en-US" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam 3B</title>
    <link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <h1> 
                <asp:Label ID="welcomeLabel" runat="server" meta:resourcekey="welcomeLabel"></asp:Label>
                &nbsp;MSCI:3300</h1>
            <h2>
                <asp:Label ID="classNameLabel" runat="server" meta:resourcekey="classNameLabel"></asp:Label>
            </h2>
            <hr />
        </div>
        <div>
            <table class="table">
                <tr>
                    <td class="leftColumn">
            <asp:Label ID="selectLanguageLabel" runat="server" meta:resourcekey="selectLanguageLabel"></asp:Label>
            <br />
            <asp:DropDownList ID="languageList1" runat="server" AutoPostBack="true">
                <asp:ListItem Value="en-US">English</asp:ListItem>
                <asp:ListItem Value="ar-IQ">Arabic</asp:ListItem>
                <asp:ListItem Value="zh-CN">Chinese</asp:ListItem>                
                <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />

            <asp:DropDownList ID="languageList2" runat="server" AutoPostBack="true">
                <asp:ListItem Value="en-US">English</asp:ListItem>
                <asp:ListItem Value="ar-IQ">Arabic</asp:ListItem>
                <asp:ListItem Value="zh-CN">Chinese</asp:ListItem>              
                <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td class="rightCoumn">
                    <br />
                        <!-- Before submit -->
                        &nbsp;&nbsp;<asp:Label ID="myNameIsLabel" runat="server" meta:resourcekey="myNameIsLabel"></asp:Label>&nbsp;
                        <asp:TextBox ID="myNameIsTextBox" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <!-- After submit -->
                        &nbsp;&nbsp;<asp:Label ID="helloLabel" runat="server" meta:resourcekey="helloLabel"></asp:Label>
                        &nbsp;&nbsp;<asp:Label ID="mrMrsLabel" runat="server" meta:resourcekey="mrMrsLabel"></asp:Label>&nbsp;
                        &nbsp;&nbsp;<asp:Label ID="nameLabel" runat="server"></asp:Label>
                        
                        <!-- Before submit -->
                        &nbsp;&nbsp;<asp:Label ID="iAmLabel" runat="server" meta:resourcekey="iAmLabel"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="femaleRadioButton" runat="server" />
                        <asp:Label ID="femaleLabel" runat="server" meta:resourcekey="femaleLabel"></asp:Label>&nbsp;
                        <asp:RadioButton ID="maleRadioButton" runat="server" />
                        <asp:Label ID="maleLabel" runat="server" meta:resourcekey="maleLabel"></asp:Label>
                        <br />
                        <br />
                        <!-- After submit -->
                        &nbsp;&nbsp;<asp:Label ID="graduateLabel" runat="server" meta:resourcekey="graduateLabel"></asp:Label>
                        <asp:Label ID="dateLabel" runat="server" meta:resourcekey="dateLabel"></asp:Label>
                        <br />
                        <!-- Before submit -->
                        &nbsp;&nbsp;<asp:Label ID="planLabel" runat="server" meta:resourcekey="planLabel"></asp:Label>
                        <br />
                        <!-- After submit -->
                        &nbsp;&nbsp;<asp:Label ID="wishLabel" runat="server" meta:resourcekey="wishLabel"></asp:Label>
                        &nbsp;<asp:Label ID="currencyLabel" runat="server" meta:resourcekey="currencyLabel"></asp:Label>
                        &nbsp;<asp:Label ID="moneyLabel" runat="server" meta:resourcekey="moneyLabel"></asp:Label>
                        &nbsp;&nbsp;<asp:Label ID="salaryLabel" runat="server" meta:resourcekey="salaryLabel"></asp:Label>
                        
                        <!-- Before submit -->
                        &nbsp;&nbsp;<asp:Calendar ID="Calendar" runat="server" Width="250px"></asp:Calendar>
                        <br />
                        &nbsp;&nbsp;<asp:Label ID="hopeLabel" runat="server" meta:resourcekey="hopeLabel"></asp:Label>&nbsp;
                        <asp:TextBox ID="salaryTextBox" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TextBox>
                        <asp:RegularExpressionValidator ID="currencyValidator" runat="server" 
                        ControlToValidate="salaryTextBox" ValidationExpression="\d+" Display="Static"
                        EnableClientScript="True" ErrorMessage="Please enter only numbers">
                        </asp:RegularExpressionValidator>
                        <br />
                        <!-- After submit -->
                        &nbsp;&nbsp;<asp:Label ID="visitLabel" runat="server" meta:resourcekey="visitLabel"></asp:Label>
                        <asp:HyperLink ID="githubHyperlink" runat="server" NavigateUrl="https://github.com/saabbas">GitHub</asp:HyperLink>
                        <br />
                        <br />
                        &nbsp;&nbsp;<asp:Button ID="submitButton" runat="server" meta:resourcekey="submitButton"/>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
