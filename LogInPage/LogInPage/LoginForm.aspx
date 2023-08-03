<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="LogInPage.LoginForm" %>


<!DOCTYPE html>
<html>
    <head>
        <title>
            LogIn Page
        </title>
        <link rel="icon" type="image/x-icon" href="Techvision_Logo.png">
        <style>
           

            form{
                fill: antiquewhite;
                margin-top: 15%;
                margin-left: 70%;
                font-size: 1.05em;
            }
            #uid{
                font:100;
            }
            #le{
                font-family: Arial, Helvetica, sans-serif;
                font-size: 20px;
                border: 4px;
            }
            body {
                background-image: url('Finger.jpeg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
                color:white;
            }
            fieldset {
                width:fit-content;
                height: auto;
                display: block;
                margin-left: 2px;
                margin-right: 2px;
                padding-top: 0.35em;
                padding-bottom: 0.625em;
                padding-left: 0.75em;
                padding-right: 0.75em;
                border: 2px groove (internal value);
            }

            table{
                padding: 0%;
            }
            legend{
                font-size: 2em;
            }
            #Role{
                width: 100%;
            }
            #Submit,#Reset{
                margin-left:5%;
            }
        </style>
    </head>
    <body>
        <br>
        <br>
        <br>
        <form id="loginfrm" runat="server">
        <fieldset>
            <legend>LogIn Form</legend>
        <table>
            <tr>
                <td id="lab"> <label for="role"> Role: </label></td>
                <td>
                    <asp:DropDownList ID="Role" runat="server" required="">
                        <asp:ListItem>Select Role</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Config</asp:ListItem>
                        <asp:ListItem>Tester</asp:ListItem>
                    
                      
                    </asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td id="lab1"><label for="Uid">User Id:</label></td>
                <td>
                    <%--<input type="text" id="uidtext" name="UserId" placeholder="User Name" required="required">--%>
                    <asp:TextBox ID="uidtext" runat="server" name="UserId" placeholder="User Name" required=""></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="lab2"><label for="Pass">Password:</label></td>
                <td>
                    <%--<input type="password" id="passtext" name="Password" placeholder="Password" required="required">--%>
                    <asp:TextBox ID="passtext" TextMode="Password" runat="server" name="Password" placeholder="Password" required=""></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><br><br>
                    <asp:Button ID="Submit" runat="server" Text="LogIn" Width="62px" OnClick="Submit_Click" />
                    <%--<input type="submit" value="Submit" id="Submit">--%>
                    <br><br></td>
                <td><br>
                 <asp:Button id="Reset" runat="server" Text="Clear" OnClientClick="this.form.reset();return false;" CausesValidation="false" />

                    
            </tr>
        </table>
        
    </fieldset>
   </form>

    </body>
</html>
