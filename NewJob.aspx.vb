Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        ' Code used to insert all field data into the jobs table as a new job.

        Dim AccessConnectionString As New Data.OleDb.OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("App_Data\database.mdb"))

        Dim AccessCommand As New Data.OleDb.OleDbCommand("InsertNewRecord", AccessConnectionString)

        AccessCommand.CommandText = "INSERT INTO tbl_jobs (job_reference, job_start_date, job_completion_date, job_description, job_status, job_search_field) VALUES (@p1, @p2, @p3, @p4, @p5, @p6)"

        AccessCommand.Parameters.Add(New Data.OleDb.OleDbParameter("@p1", Data.SqlDbType.VarChar)).Value = TextBox1.Text.ToString + " " + Now.ToShortDateString + " " + Now.ToShortTimeString
        AccessCommand.Parameters.Add(New Data.OleDb.OleDbParameter("@p2", Data.SqlDbType.VarChar)).Value = TextBox3.Text.ToString
        AccessCommand.Parameters.Add(New Data.OleDb.OleDbParameter("@p3", Data.SqlDbType.VarChar)).Value = TextBox4.Text.ToString
        AccessCommand.Parameters.Add(New Data.OleDb.OleDbParameter("@p4", Data.SqlDbType.VarChar)).Value = TextBox5.Text.ToString
        AccessCommand.Parameters.Add(New Data.OleDb.OleDbParameter("@p5", Data.SqlDbType.VarChar)).Value = DropDownList2.SelectedValue.ToString
        AccessCommand.Parameters.Add(New Data.OleDb.OleDbParameter("@p6", Data.SqlDbType.VarChar)).Value = "Search Field"

        'TextBox1.Text.ToString & TextBox3.Text.ToString & TextBox4.Text.ToString & TextBox5.Text.ToString & DropDownList2.SelectedValue.ToString
        Try

            AccessConnectionString.Open()

            AccessCommand.ExecuteNonQuery()

            AccessConnectionString.Close()

        Catch ex As Exception

            ResetControls("Error - Please ensure Database is connected")

        End Try

        ResetControls("New Job Saved!")

        GridView1.DataBind()

    End Sub


    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click

        'Used to enter selected date in start date field

        TextBox3.Text = Calendar1.SelectedDate.ToShortDateString

    End Sub

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs) Handles Button3.Click

        'Used to enter selected date in completion date field

        TextBox4.Text = Calendar1.SelectedDate.ToShortDateString

    End Sub


    Private Sub ResetControls(ByVal message As String)

        'Resets all fields when new data is saved

        TextBox1.Text = message.ToString
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        DropDownList2.SelectedIndex = -1

    End Sub

   

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        'Loads page and sets calendar on current days date.

        If Not Page.IsPostBack Then

            Calendar1.SelectedDate = Today

        End If

    End Sub


End Class
