<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/Main.Master" CodeBehind="AddTeam.aspx.cs" Inherits="SE_Project_Web_Final.AddTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="uk-grid uk-grid-width-large-1-8 uk-grid-width-medium-1-12 uk-grid-medium uk-sortable sortable-handler" data-uk-sortable="" data-uk-grid-margin="">
	<div style="">
	<div class="md-card">
	<div class="md-card-content">

		<table class="uk-table uk-text">
				
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Team Name</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="TeamNameTxt" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>		
			
	
			<tr>
				<td>
					<span class="uk-input-group-addon">
						<asp:Button class="md-btn" ID="SubmitTeam" Text="Submit" OnClick="btnAddTeam_Click" runat="server" />
						<asp:Label ID="Label3" runat="server"></asp:Label>
					  
								   
					
 
					</span>
				</td>
			</tr>
			

		</table> 
	   
		</div>
		</div>
		</div>
		</div>
</asp:Content>