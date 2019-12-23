<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPages/Main.Master" CodeBehind="AssignTaskTeam.aspx.cs" Inherits="SE_Project_Web_Final.AssignTaskTeam" %>

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
					
					
					<asp:DropDownList ID="teamddl" CssClass="md-input" runat="server"></asp:DropDownList>
				</div>
				
			</td>				
		</tr>	
			
		 
			
			
		<tr>					 
			<td>
				<div class="uk-input-group">
					<h5>Task</h5>
					<span class="uk-input-group-addon"></span>
					<asp:DropDownList class="md-input"  ID="taskddl" runat="server" ></asp:DropDownList>
				</div>
			</td>				
		</tr>	
			
		   
			
	
		<tr>
			<td>
				   
				<span class="uk-input-group-addon">
					<asp:Button class="md-btn" ID="btnAssignTaskTeam" Text="Submit" OnClick="btnAssignTaskTeam_Click" runat="server" />
 
				</span>
			</td>
		</tr>
			

	</table>
		</div>
		</div>
		</div>
		</div>
</asp:Content>