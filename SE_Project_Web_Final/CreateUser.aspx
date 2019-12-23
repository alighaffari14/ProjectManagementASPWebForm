<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="SE_Project_Web_Final.CreateUser" %>



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
						<h5>UserName</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="username" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>		
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Password</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="password" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>	
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>E-Mail</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="email" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>	
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>First Name</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="first_name" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>	
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Last Name</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="last_name" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>	
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Gender</h5>
						<span class="uk-input-group-addon"></span>
						<asp:DropDownList CssClass="md-input" ID="GenderDDL" runat="server">
							<asp:ListItem>Male</asp:ListItem>
							<asp:ListItem>Female</asp:ListItem>
						</asp:DropDownList>
					</div>
				</td>				
			</tr>	
			
			<tr>					 
				<td>
					<div class="uk-input-group">
						<h5>Contact</h5>
						<span class="uk-input-group-addon"></span>
						<asp:TextBox ID="Contact" Width="292px" CssClass="md-input"  runat="server" ></asp:TextBox>
					</div>
				</td>				
			</tr>	
			
			<tr>
				<td>
					<div class="uk-input-group">
									   
						<span class="uk-input-group-addon">Date Of Birth <i class="uk-input-group-icon uk-icon-calendar"></i></span>
									   
						<asp:TextBox ID="DOB" CssClass="md-input" TextMode="Date" runat="server" Text='<%= new DateTime() %>'></asp:TextBox>
									
								 
					
					</div>
				</td>
			</tr>
			
			<tr>
				<td>
					<div class="uk-input-group">
									   
						<span class="uk-input-group-addon">Created On <i class="uk-input-group-icon uk-icon-calendar"></i></span>
									   
						<asp:TextBox ID="CreatedOn" CssClass="md-input" TextMode="Date" runat="server" Text='<%= new DateTime() %>'></asp:TextBox>
									
								 
					
					</div>
				</td>
			</tr>
			

			<tr>
				<td>
					<span class="uk-input-group-addon">
						<asp:Button class="md-btn" ID="btnRegisterUser" Text="Submit" OnClick="btnRegisterUser_Click" runat="server" />
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
