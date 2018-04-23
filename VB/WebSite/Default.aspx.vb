Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic

Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxEditors
Imports DevExpress.Web.ASPxGridView

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub cbEditCategories_TextChanged(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub selectedRowCount_Load(ByVal sender As Object, ByVal e As EventArgs)
		Dim l As ASPxLabel = TryCast(sender, ASPxLabel)

		If grid.Selection.Count > 0 Then
			l.Text = grid.Selection.Count.ToString()
			l.ClientVisible = True
		Else
			l.ClientVisible = False
		End If

	End Sub
End Class