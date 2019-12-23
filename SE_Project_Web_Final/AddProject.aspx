<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="SE_Project_Web_Final.AddProject" %>


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
						<h5>Project Name</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox Id="project_name" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>		
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						
						<span class="uk-input-group-addon">Planned Start Date <i class="uk-input-group-icon uk-icon-calendar"></i></span>
									   
						<asp:TextBox ID="planned_start_date" CssClass="md-input" TextMode="Date" runat="server" Text='<%= new DateTime() %>'></asp:TextBox>
					</div>
				</td>				
			</tr>
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						
						<span class="uk-input-group-addon">Planned End Date <i class="uk-input-group-icon uk-icon-calendar"></i></span>
									   
						<asp:TextBox ID="planned_end_date" CssClass="md-input" TextMode="Date" runat="server" Text='<%= new DateTime() %>'></asp:TextBox>
					</div>
				</td>				
			</tr>
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						
						<span class="uk-input-group-addon">Actual Start Date <i class="uk-input-group-icon uk-icon-calendar"></i></span>
									   
						<asp:TextBox ID="actual_start_date" CssClass="md-input" TextMode="Date" runat="server" Text='<%= new DateTime() %>'></asp:TextBox>
					</div>
				</td>				
			</tr>
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						
						<span class="uk-input-group-addon">Actual End Date <i class="uk-input-group-icon uk-icon-calendar"></i></span>
									   
						<asp:TextBox ID="actual_end_date" CssClass="md-input" TextMode="Date" runat="server" Text='<%= new DateTime() %>'></asp:TextBox>
					</div>
				</td>				
			</tr>
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Project's Description</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="project_description" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>	
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Hourly Rate</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="hourly_rate" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>		
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Budget</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="budget" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>		
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Active</h5>
						<span class="uk-input-group-addon"></span>
						<asp:CheckBox CssClass="md-input" ID="Active" runat="server" />
					</div>
				</td>				
			</tr>		
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Total Hours</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="Total_Hours" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>	
			
		<tr>					 
			<td>
				<div class="uk-input-group">
					<h5>Labor Cost</h5>
					<span class="uk-input-group-addon"></span>
					<asp:TextBox ID="Labour_Cost" Width="292px"   CssClass="md-input"  runat="server" ></asp:TextBox>
				</div>
			</td>				
		</tr>
			
		<tr>					 
			<td>
				<div class="uk-input-group">
					<h5>Material Cost</h5>
					<span class="uk-input-group-addon"></span>
					<asp:TextBox ID="Material_Cost"  Width="292px"   CssClass="md-input"  runat="server" ></asp:TextBox>
				</div>
			</td>				
		</tr>
			
		<tr>					 
			<td>
				<div class="uk-input-group">
					<h5>Total Cost</h5>
					<span class="uk-input-group-addon"></span>
					<asp:TextBox ID="Total_Cost"  Width="292px" CssClass="md-input"   runat="server" ></asp:TextBox>
				</div>
			</td>				
		</tr>
			
			

			<tr>
				<td>
					<span class="uk-input-group-addon">
						<asp:Button class="md-btn" Id="AddProjectbtn" Text="Submit" OnClick="btnAddProject_Click" runat="server" />
						<asp:Label ID="Label2" runat="server"></asp:Label>
					  
								   
					
 
					</span>
				</td>
			</tr>
			

		</table> 
		</div>
		</div>
		</div>
		</div>
</asp:Content>