<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" Inherits="Rock.Web.UI.RockPage" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
<script>
    var isLoggedIn = <%= (CurrentPerson != null).ToString().ToLower() %>;
    var currentPersonId = <%= (CurrentPerson != null) ? CurrentPerson.Id.ToString() : "null" %>;
    console.log("Is logged in (inline CurrentPerson):", isLoggedIn, currentPersonId);
</script>
</asp:Content>


<asp:Content ID="ctMain" ContentPlaceHolderID="main" runat="server">

    <Rock:Zone Name="Navbar" runat="server" /> 

    <div class="hero-main">
        <Rock:Zone Name="Hero" runat="server" />
    </div>

	<main class="content-main content-hompage">

        <div class="alert alert-danger ajax-error no-index" style="display:none">
            <p><strong>Error</strong></p>
            <span class="ajax-error-message"></span>
        </div>

        <div class="content-feature">
            <Rock:Zone Name="Feature" runat="server" />
        </div>

        <div class="content-section-a">
            <Rock:Zone Name="Section A" runat="server" />
        </div>

        <div class="content-section-b">
            <Rock:Zone Name="Section B" runat="server" />
        </div>

        <div class="content-section-c">
            <Rock:Zone Name="Section C" runat="server" />
        </div>

	</main>

</asp:Content>