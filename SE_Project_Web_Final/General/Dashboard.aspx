<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SE_Project_Web_Final.General.Dashboard" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	
	<br />
	
	
	<%-- Here Repeater for Owner of Project--%>
	<asp:Label ID="lablelsessionnameshow" Style="color:red" runat="server"/> 's Projects
	<hr />

<div class="uk-grid uk-grid-medium uk-grid-width-medium-1-2 uk-grid-width-large-1-4" data-uk-grid-margin="" data-uk-grid-match="{target:'.md-card-content'}">
		

	<asp:Repeater ID="Repeater1" runat="server">  
		<ItemTemplate>
			<div>
				<div class="md-card">
					<div class="md-card-head head_blue">
						<div class="md-card-head-menu" data-uk-dropdown="">
								
								
						</div>
						   
						<%-- 
							<div class="uk-text-center">
								<img class="md-card-head-avatar" src="assets/img/avatars/avatar_11.png" alt="">
							</div>
							--%>
						<a href="../projectdetail.aspx?Project_Id=<%# Eval("Project_Id")%>">
							<h3 class="md-card-head-text uk-text-center">
								<%#Eval("project_name")%>
								<hr />
							</h3>
						</a>
						<br/>
						<br/>
					</div>
					<div class="md-card-content" style="min-height: 215px;">
						<ul class="md-list md-list-addon">
							<li>
								<div class="md-list-addon-element">
										
								</div>
								<div class="md-list-content">
									<span class="md-list-heading">Project Description</span>
									<span class="uk-text-small uk-text-muted"> <%#Eval("project_description")%></span>
								</div>

							</li>
								
						</ul>
					</div>
				</div>
			</div>
		
		
		</ItemTemplate>  
	</asp:Repeater> 
	<div>
					
	</div>
			   
</div>
	
	
	<br/>
	<br />
	

<%-- here Repeater for Employee of Project --%>
<asp:Label ID="workingsessionlabel" style="color: green" runat="server"/>'s Work Projects
<hr/>
  
<div class="uk-grid uk-grid-medium uk-grid-width-medium-1-2 uk-grid-width-large-1-4" data-uk-grid-margin="" data-uk-grid-match="{target:'.md-card-content'}">
		

	<asp:Repeater ID="Repeater2" runat="server">  
		<ItemTemplate>
			<div>
				<div class="md-card">
					<div class="md-card-head head_blue">
						<div class="md-card-head-menu" data-uk-dropdown="">
								
								
						</div>
						   
						<%-- 
							<div class="uk-text-center">
								<img class="md-card-head-avatar" src="assets/img/avatars/avatar_11.png" alt="">
							</div>
							--%>
						<a href="../projectdetail.aspx?Project_Id=<%# Eval("Project_Id")%>">
							<h3 class="md-card-head-text uk-text-center">
								<%#Eval("project_name")%>
								<hr />
							</h3>
						</a>
						<br/>
						<br/>
					</div>
					<div class="md-card-content" style="min-height: 215px;">
						<ul class="md-list md-list-addon">
							<li>
								<div class="md-list-addon-element">
										
								</div>
								<div class="md-list-content">
									<span class="md-list-heading">Project Description</span>
									<span class="uk-text-small uk-text-muted"> <%#Eval("project_description")%></span>
								</div>

							</li>
								
						</ul>
					</div>
				</div>
			</div>
		
		
		</ItemTemplate>  
	</asp:Repeater> 
	<div>
					
	</div>
			   
</div>

	
	
	
	

	
</asp:Content>
