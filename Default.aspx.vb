Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page
    'Added code from video
    Protected Overrides Sub InitializeCulture()
        Dim lang As String = Request("languageList1")

        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)
        End If

        Dim lang2 As String = Request("languageList2")

        If lang2 IsNot Nothing Or lang2 <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang2)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang2)
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'Hide post-submit elements
        helloLabel.Visible = False
        mrMrsLabel.Visible = False
        nameLabel.Visible = False
        graduateLabel.Visible = False
        dateLabel.Visible = False
        wishLabel.Visible = False
        currencyLabel.Visible = False
        moneyLabel.Visible = False
        salaryLabel.Visible = False
        visitLabel.Visible = False
        githubHyperlink.Visible = False
        languageList2.Visible = False
    End Sub


    Protected Sub submitButton_Click(sender As Object, e As EventArgs) Handles submitButton.Click

        'Hiding pre-submit elements & enabling post-submit elements
        helloLabel.Visible = True
        mrMrsLabel.Visible = True
        nameLabel.Visible = True
        graduateLabel.Visible = True
        dateLabel.Visible = True
        wishLabel.Visible = True
        currencyLabel.Visible = True
        moneyLabel.Visible = True
        salaryLabel.Visible = True
        visitLabel.Visible = True
        githubHyperlink.Visible = True
        languageList2.Visible = True

        submitButton.Visible = False
        languageList1.Visible = False

        myNameIsLabel.Visible = False
        myNameIsTextBox.Visible = False
        iAmLabel.Visible = False
        femaleRadioButton.Visible = False
        maleRadioButton.Visible = False
        femaleLabel.Visible = False
        maleLabel.Visible = False
        planLabel.Visible = False
        Calendar.Visible = False
        hopeLabel.Visible = False
        salaryTextBox.Visible = False
        currencyValidator.Visible = False

        'Converting the earnings textbox to currency format
        Dim salary As String = salaryTextBox.Text
        moneyLabel.Text = String.Format("{0:C}", salary)

        'Sending Male-Female data to textboxes
        If femaleRadioButton.Checked = True Then
            maleRadioButton.Checked = False
            mrMrsLabel.Text = "Ms."
        End If

        If maleRadioButton.Checked = True Then
            femaleRadioButton.Checked = False
            mrMrsLabel.Text = "Mr."
        End If

        'Sending name data from textbox to label
        Dim name As String = myNameIsTextBox.Text
        nameLabel.Text = name

        'Sending date data from calendar to label
        Dim dateSelected As Date = Calendar.SelectedDate
        dateLabel.Text = dateSelected.ToString("MMMM dd, yyyy")
    End Sub


End Class
