<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="projectdetail.aspx.cs" Inherits="SE_Project_Web_Final.projectdetail" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
	<%-- here GridView for Owner of Project--%>
	<div class="md-card">

		<div class="md-card-content">
			<asp:UpdatePanel ID="UpdatePanel2" runat="server">
				<ContentTemplate>
					<div class="uk-overflow-container" style="overflow-y: scroll; max-height: 500px;">
						<asp:GridView ID="gvprojectdetail" AutoGenerateColumns="true" class="uk-table uk-text-nowrap" GridLines="None" Style="overflow-y: scroll; max-height: 1000px;" runat="server" >
						</asp:GridView>
					</div>
				</ContentTemplate>
				<Triggers>
							 

				</Triggers>
			</asp:UpdatePanel>
		</div>




	</div>
	
	
	<%-- here GridView for Report of Project --%>
	<div class="md-card">

		<div class="md-card-content">
			<asp:UpdatePanel ID="UpdatePanel1" runat="server">
				<ContentTemplate>
					<div class="uk-overflow-container" style="overflow-y: scroll; max-height: 500px;">
						<asp:GridView ID="gvreport" AutoGenerateColumns="true" class="uk-table uk-text-nowrap" GridLines="None" Style="overflow-y: scroll; max-height: 1000px;" runat="server" >
						</asp:GridView>
					</div>
				</ContentTemplate>
				<Triggers>
							 

				</Triggers>
			</asp:UpdatePanel>
		</div>




	</div>
</asp:Content>