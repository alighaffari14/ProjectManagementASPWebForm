<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/Main.Master" CodeBehind="AssignTaskToProject.aspx.cs" Inherits="SE_Project_Web_Final.AssignTaskToProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
	<table class="uk-table uk-text">
				
		
			
		<tr>					 
			<td>
				<div class="uk-input-group">
					<h5>Task</h5>
					<span class="uk-input-group-addon"></span>
					<asp:DropDownList ID="LoadTaskDDLforproject" CssClass="md-input" runat="server"></asp:DropDownList>
						
				</div>
			</td>				
		</tr>
			
		<tr>					 
			<td>
				<div class="uk-input-group">
					<h5>Project</h5>
					<span class="uk-input-group-addon"></span>
					<asp:DropDownList ID="ProjectDDL" CssClass="md-input" runat="server" ></asp:DropDownList>
						
				</div>
			</td>				
		</tr>
			
		<tr>
			<td>
				<span class="uk-input-group-addon">
					<asp:Button class="md-btn" ID="btnassigntasktoproject" Text="Submit" OnClick="btnassigntasktoproject_Click" runat="server" />
				 
					  
								   
					
 
				</span>
			</td>
		</tr>
			
			
			

	</table> 

</asp:Content>