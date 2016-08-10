Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub Button4_Click(sender As Object, e As System.EventArgs) Handles Button4.Click

        'Code to retrieve information within reference text box

        Get_Jobs_By_Job_Ref(TextBox1.Text.ToString)

    End Sub


    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles GridView1.SelectedIndexChanged

        'Code to display reference on grid view

        jobPrimaryKey.Value = GridView1.SelectedDataKey.Value.ToString

        Get_Jobs_By_Job_ID(GridView1.SelectedDataKey.Value)


    End Sub

    Private Sub Get_Jobs_By_Job_ID(ByVal job_id As String)

        'Accesses the database to retrieve job ID

        Dim recordDS As New DataSet

        Dim recordDA As New Data.OleDb.OleDbDataAdapter

        Dim AccessConnectionString As New Data.OleDb.OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("App_Data\database.mdb"))

        Dim AccessCommand As New Data.OleDb.OleDbCommand("GetJobsByID", AccessConnectionString)

        AccessCommand.CommandText = "SELECT * FROM tbl_jobs WHERE job_id = " & job_id.ToString

        Using AccessConnectionString

            recordDA.SelectCommand = AccessCommand

            recordDA.Fill(recordDS)

        End Using

        TextBox1.Text = recordDS.Tables(0).Rows(0).Item(1).ToString
        TextBox3.Text = recordDS.Tables(0).Rows(0).Item(2).ToString
        TextBox4.Text = recordDS.Tables(0).Rows(0).Item(3).ToString
        TextBox5.Text = recordDS.Tables(0).Rows(0).Item(4).ToString
        DropDownList2.SelectedIndex = DropDownList2.Items.IndexOf(DropDownList2.Items.FindByValue(recordDS.Tables(0).Rows(0).Item(5).ToString))


    End Sub

    Private Sub Get_Jobs_By_Job_Ref(ByVal job_ref As String)

        'Displays all accessed job information in each field depending on selected job reference

        Dim recordDS As New DataSet

        Dim recordDA As New Data.OleDb.OleDbDataAdapter

        Dim AccessConnectionString As New Data.OleDb.OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("App_Data\database.mdb"))

        Dim AccessCommand As New Data.OleDb.OleDbCommand("GetJobsByRef", AccessConnectionString)

        AccessCommand.CommandText = "SELECT * FROM tbl_jobs WHERE (job_reference = @p1)"

        AccessCommand.Parameters.Add(New Data.OleDb.OleDbParameter("@p1", Data.SqlDbType.VarChar)).Value = job_ref.ToString

        Try

            Using AccessConnectionString

                recordDA.SelectCommand = AccessCommand

                recordDA.Fill(recordDS)

            End Using

            jobPrimaryKey.Value = recordDS.Tables(0).Rows(0).Item(0).ToString

            TextBox1.Text = recordDS.Tables(0).Rows(0).Item(1).ToString
            TextBox3.Text = recordDS.Tables(0).Rows(0).Item(2).ToString
            TextBox4.Text = recordDS.Tables(0).Rows(0).Item(3).ToString
            TextBox5.Text = recordDS.Tables(0).Rows(0).Item(4).ToString
            DropDownList2.SelectedIndex = DropDownList2.Items.IndexOf(DropDownList2.Items.FindByValue(recordDS.Tables(0).Rows(0).Item(5).ToString))

        Catch ex As Exception

            ResetControls("Cannot locate Job")

        End Try


    End Sub


    Private Sub ResetControls(ByVal message As String)

        'Changes all fields when reference is located

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
