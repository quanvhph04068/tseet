
Partial Class shop
    Inherits System.Web.UI.Page

    Protected Sub myRepeater_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        If e.CommandName = "DeleteRow" Then
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            ' find the item index 
            Dim rItem As RepeaterItem Repeater1.Items(index)
            Dim lblID As Label = CType(rItem.FindControl("ms"), Label)
            ' delete from the database and reload 
            '' Dim StrSQL As String = "DELETE FROM myTable WHERE ID=" & lblID.Text & ""
        End If
    End Sub
End Class
