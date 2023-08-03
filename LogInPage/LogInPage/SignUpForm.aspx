 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="LogInPage.SignUpForm" %>

<!DOCTYPE html>
<html>
<head>
    <title>SignUp Page</title>
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
            border:groove;
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
        #Submit{
                margin-left: 40%;
            }
        .input{
            width:98%;
        }
    </style>
</head>
<body>
    <form method="post" runat="server" action="https://www.google.com/search?q=w3school+html&rlz=1C1ONGR_enIN1069&oq=w3&aqs=chrome.2.69i57j69i59l3j0i271j69i60l3.16212123j0j15&sourceid=chrome&ie=UTF-8">
        <fieldset>
            <legend>SignUp Form</legend>
        <table>
            <tr>
                <td id="Roles"> <label for="role"> Role: </label></td>
                <td>
                    <asp:DropDownList ID="Role" runat="server" required="" Width="100%">
                        <asp:ListItem>Select Role</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Config</asp:ListItem>
                        <asp:ListItem>Tester</asp:ListItem>
                    
                      
                    </asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td class="lab"><label for="Uid">First Name:</label></td>
                <td>
                    <%--<input type="text" id="uid" name="UserId" placeholder="User Name">--%>
                    <asp:TextBox Class="input" ID="FN" runat="server" name="FirstName" placeholder="First Name" required="" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lab"><label for="Uid">Last Name:</label></td>
                <td>
                    <%--<input type="text" id="uid" name="UserId" placeholder="User Name">--%>
                    <asp:TextBox Class="input" ID="LN" runat="server" name="LastName" placeholder="Last Name" required="" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lab"><label for="Uid">E-mail Id:</label></td>
                <td>
                    <%--<input type="email" id="uid" name="E-Mai" placeholder="E-Mail Address">--%>
                    <asp:TextBox Class="input" TextMode="Email" ID="email" runat="server" placeholder="E-Mail Address" required="" Width="100%"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="lab"><label >Contact No:</label></td>
                <td>
                    <%--<input type="text" name="country_code" title="Error Message" placeholder="Mobile Number" pattern="[1-9]{1}[0-9]{9}">--%>
                    <asp:TextBox ID="txtMobileNumber" runat="server" placeholder="Mobile Phone Number" required="" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lab"><label >User Id:</label></td>
                <td>
                    <%--<input type="text" id="uid" name="UserId" placeholder="User Name">--%>
                    <asp:TextBox Class="input" ID="u_id" runat="server" placeholder="User ID" required="" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lab"><label for="Password">Password:</label></td>
                <td>
                    <%--<input type="password" id="Password" placeholder="Password" required>--%>
                    <asp:TextBox Class="input"  ID="Password" TextMode="Password" runat="server" name="Password" placeholder="Password" required="" Width="100%"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="lab"><label for="confirm_password">Confirm Password:</label></td>
                <td> 
                    <%--<input type="password" id="confirm_password" placeholder="Confirm Password" required>--%>
                    <asp:TextBox Class="input"  ID="confirm_password" TextMode="Password" runat="server" name="Password" placeholder="Password" required="" Width="100%"></asp:TextBox>

                </td>
            </tr>
            <tr>
               <td><br><br>
                    <asp:Button ID="Submit" runat="server" Text="SignUp" Width="62px" OnClick="Submit_Click" OnClientClick="return validateMobileNumber();" />
                    <%--<input type="submit" value="Submit" id="Submit">--%>
                    <br><br></td>
                <td><br>
                 <asp:Button ID="Reset" runat="server" Text="Clear" OnClientClick="this.form.reset();return false;" CausesValidation="false" />

                           </tr>
        </table>
        
    </fieldset>
       
    </form>

    <script>
        document.querySelector('form').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form submission for this example

            var password = document.getElementById('Password').value;
            var confirmPassword = document.getElementById('confirm_password').value;

            if (password !== confirmPassword) {
                alert('Password does not match, please try again.');
            } else {
                alert('Password is valid. Form can be submitted.');
                // Uncomment the following line to allow form submission
                // event.target.submit();
            }
        });
        function validateMobileNumber() {
            var mobileNumber = document.getElementById('<%=txtMobileNumber.ClientID %>').value;
            var pattern = /^\d{10}$/;
            if (!pattern.test(mobileNumber)) {
                alert("Please enter a valid 10-digit mobile number.");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
