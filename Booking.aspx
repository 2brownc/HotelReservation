<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="HotelReservation.Booking" %>

<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" runat="server">
    <div>
    <h2>Room Reservation</h2>
    <form runat="server">
        <div id="bookingPanel">
            <div class="instruction">Please select the desired room type.</div>
            <div class="input-grid">
                <div>Username:</div>
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter username" ControlToValidate="username"></asp:RequiredFieldValidator>

                <div>Amenities:</div>
                <div>
                    <asp:CheckBox Text="A/C" ID="AmenitiesAC" runat="server" Checked="True" />
                    <asp:CheckBox Text="Computer" ID="AmenitiesComputer" runat="server" />
                </div>
                <div></div>

                <div>Room Type:</div>
                <div>
                    <asp:RadioButton Text="Delux" ID="RoomDelux" runat="server" GroupName="RoomType" Checked="True" />
                    <asp:RadioButton Text="Ordinary" ID="RoomOrdinary" runat="server" GroupName="RoomType" />
                </div>
                <div></div>
            </div>
            <div class="controls">
                <asp:Button ID="BookRoom" runat="server" Text="Book Room" OnClick="BookRoom_Click" />
            </div>
        </div>
    </form>
        <div class="instruction errorMessage">
            <asp:Label ID="ErrorMessage" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
