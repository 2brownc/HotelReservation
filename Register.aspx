<%@ Page Title="Registration Page" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HotelReservation.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="CphBody" runat="server">
    <div>
        <h2>Registration</h2>
        <form runat="server">
            <div id="registrationPanel">
                <div class="instruction">Please enter your information to register your account!</div>
                <div class="input-grid">
                    <div>First Name: </div>
                    <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill in first name." ControlToValidate="firstName"></asp:RequiredFieldValidator>

                    <div>Last Name: </div>
                    <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fill in last name." ControlToValidate="lastName"></asp:RequiredFieldValidator>


                    <div>Username: </div>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fill in username." ControlToValidate="username"></asp:RequiredFieldValidator>

                    <div>Gender: </div>
                    <div>
                        <asp:RadioButton Text="Male" ID="male" runat="server" GroupName="gender" />
                        <asp:RadioButton Text="Female" ID="female" runat="server" GroupName="gender" />
                    </div>
                    <div></div>

                    <div>Password: </div>
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter the password." ControlToValidate="password"></asp:RequiredFieldValidator>

                    <div>Confirm Password: </div>
                    <asp:TextBox ID="confirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Retype the password." ControlToValidate="confirmPassword"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match." ControlToCompare="password" ControlToValidate="confirmPassword"></asp:CompareValidator>
                    </span>

                    <div>Email: </div>
                    <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not a valid email address." ValidationExpression="^[_a-z0-9-]+(.[a-z0-9-]+)@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$" ControlToValidate="email"></asp:RegularExpressionValidator>

                    <div>Phone: </div>
                    <asp:TextBox ID="phone" runat="server" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Phone no is required" ControlToValidate="phone"></asp:RequiredFieldValidator>

                    <div>Address: </div>
                    <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="address"></asp:RequiredFieldValidator>

                    <div>Age: </div>
                    <asp:TextBox ID="age" runat="server" TextMode="Number"></asp:TextBox>
                    <div></div>

                    <div>Languages Known: </div>
                    <div>
                        <asp:CheckBox Text="English" ID="LangEnglish" runat="server"/>
                        <asp:CheckBox Text="Telugu" ID="LangTelugu" runat="server" />
                        <asp:CheckBox Text="Hindi" ID="LangHindi" runat="server" />
                    </div>
                    <div></div>

                    <div>Country: </div>
                    <asp:DropDownList ID="country" runat="server">
                        <asp:ListItem Selected="True" Text="India" Value="india"></asp:ListItem>
                        <asp:ListItem Text="Bangladesh" Value="bangladesh"></asp:ListItem>
                        <asp:ListItem Text="Sri Lanka" Value="srilanka"></asp:ListItem>
                        <asp:ListItem Text="Russia" Value="russia"></asp:ListItem>
                        <asp:ListItem Text="Nepal" Value="nepal"></asp:ListItem>
                    </asp:DropDownList>
                    <div></div>

                </div>
                <div class="controls">
                    <asp:Button ID="SubmitRegistration" runat="server" Text="Register" OnClick="SubmitRegistration_Click" />
                </div>
            </div>
        </form>

        <div class="instruction">
            If you already have an account, please <a href="Login.aspx"> login here.</a>
        </div>

        <div class="instruction errorMessage">
            <asp:Label ID="ErrorMessage" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
