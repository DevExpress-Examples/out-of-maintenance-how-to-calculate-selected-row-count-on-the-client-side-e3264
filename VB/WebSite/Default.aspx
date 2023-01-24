<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script language="javascript" type="text/javascript">
		function OnSelectionChanged(s, e) {            
			RecalculateCount(e.isSelected ? 1 : -1);
		}
		function RecalculateCount(incrementValue, e) {            
			var currentValueText = selectedRowCount.GetText();
			var currentValue = (currentValueText.length > 0)
				? eval(currentValueText)
				: 0;
			currentValue += incrementValue;
			selectedRowCount.SetText(currentValue);

			var displayContorls = currentValue > 0;
			selectedRowCount.SetVisible(displayContorls);
			selectedRowCountText.SetVisible(displayContorls);
		}

		function OnEndCallback(s, e) {            
			var currentValueText = selectedRowCount.GetText();
			var displayContorls = currentValueText.length > 0;

			selectedRowCount.SetVisible(displayContorls);
			selectedRowCountText.SetVisible(displayContorls);                
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" ClientIDMode="AutoID"
			DataSourceID="dsProducts" KeyFieldName="ProductID">
			<ClientSideEvents SelectionChanged="OnSelectionChanged" EndCallback="OnEndCallback" />
			<Columns>
				<dx:GridViewCommandColumn VisibleIndex="0" ShowSelectCheckbox="True">
				</dx:GridViewCommandColumn>
				<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="3">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="5">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="6">
				</dx:GridViewDataTextColumn>
			</Columns>
			<Settings ShowFooter="True" />
			<Templates>
				<FooterRow>
					<dx:ASPxLabel ID="selectedRowCountText" runat="server" ClientInstanceName="selectedRowCountText"
						Text="Selected row count: " EnableClientSideAPI="true" ClientVisible="false">
					</dx:ASPxLabel>
					<dx:ASPxLabel ID="selectedRowCount" runat="server" 
						ClientInstanceName="selectedRowCount" EnableClientSideAPI="true" 
						onload="selectedRowCount_Load">
					</dx:ASPxLabel>
				</FooterRow>
			</Templates>
		</dx:ASPxGridView>
		<asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
			SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder] FROM [Alphabetical list of products]">
		</asp:SqlDataSource>
		<asp:SqlDataSource ID="dsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
			SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
	</div>
	</form>
</body>
</html>
