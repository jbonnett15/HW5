<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    John's Mortgage Calculator
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <asp:Label ID="lbl_LoanError" runat="server"></asp:Label>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <asp:Label ID="lbl_InterestError" runat="server"></asp:Label>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <asp:Label ID="lbl_TermError" runat="server"></asp:Label>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BTN_clear" runat="server" Text="Clear" />
        
        <br />
        <% If Not IsPostBack Then%>
        <!-- this is the first time the page has loaded. There is nothing to display. -->
        <p> Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule
            calculated for you
        </p>
        <% Else %>
        <!-- Then this page is in postback to show the monthly payment and payment schedule.-->
        <br />
                
        Monthly Payment: &nbsp; <span class="bold"><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br />
        <br />
        
        <asp:GridView ID="loanGridView" runat="server" CSSClass="cssgridview" Font-Bold="True" ForeColor="Black">

            <AlternatingRowStyle CssClass="alt"/>    
            </asp:GridView>
        <% End IF %>
                </div>
    </form>
</body>
</html>
