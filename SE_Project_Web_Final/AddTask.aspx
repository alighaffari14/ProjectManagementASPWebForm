<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/Main.Master" CodeBehind="AddTask.aspx.cs" Inherits="SE_Project_Web_Final.AddTask" %>



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
						<h5>Name</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="TaskName" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>		
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Instructions</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="Instructions" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Status</h5>
						<span class="uk-input-group-addon"></span>
						<asp:DropDownList ID="StatusDDL" CssClass="md-input" runat="server" ></asp:DropDownList>
						
					</div>
				</td>				
			</tr>
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Expected Hours</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="ExpectedHours" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>	
			
			<tr>
				<td>
					<h5> Task Date</h5>
				</td>
			</tr>
			<tr>
				<td>
					<div class="uk-input-group">
									   
						<span class="uk-input-group-addon">Start From <i class="uk-input-group-icon uk-icon-calendar"></i></span>
									   
						<asp:TextBox ID="TxtdateFrom" CssClass="md-input" TextMode="Date" runat="server" Text='<%= new DateTime() %>'></asp:TextBox>
									
								 
									   
						<span class="uk-input-group-addon">Due <i class="uk-input-group-icon uk-icon-calendar"></i></span>
									   
						<asp:TextBox ID="TxtpostingDateTo" CssClass="md-input" TextMode="Date" runat="server" Text='<%= new DateTime() %>'></asp:TextBox>
					</div>
				</td>
			</tr>


			<tr>
				<td>
					<span class="uk-input-group-addon">
						<asp:Button class="md-btn" ID="btnAddTask" Text="Submit" OnClick="btnAddTask_Click" runat="server" />
						<asp:Label ID="Label1" runat="server"></asp:Label>
					  
								   
					
 
					</span>
				</td>
			</tr>
			

		</table>    
        </div>
        </div>
        </div>
        </div>   
</asp:Content>