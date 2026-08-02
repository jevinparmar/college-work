using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_4
{
    public partial class StudentMarksheet : Page
    {
        private string connStr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Security check: Protect page for Admin only
            if (Session["AdminUser"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                lblAdminName.Text = Session["AdminUser"].ToString();
                LoadMarksheetGrid();
            }
        }

        private void LoadMarksheetGrid()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "SELECT Id, StudentName, RollNumber, Subject1, Subject2, Subject3, Total, Percentage, Grade FROM StudentMarks";
                    using (SqlDataAdapter da = new SqlDataAdapter(query, con))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvMarksheet.DataSource = dt;
                        gvMarksheet.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error loading marksheet grid: " + ex.Message;
            }
        }

        private bool CalculateMarks(out int s1, out int s2, out int s3, out int total, out double percentage, out string grade)
        {
            s1 = s2 = s3 = total = 0;
            percentage = 0;
            grade = "F";

            if (!int.TryParse(txtSub1.Text.Trim(), out s1) ||
                !int.TryParse(txtSub2.Text.Trim(), out s2) ||
                !int.TryParse(txtSub3.Text.Trim(), out s3))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please enter valid numeric marks for all subjects.";
                return false;
            }

            if (s1 < 0 || s1 > 100 || s2 < 0 || s2 > 100 || s3 < 0 || s3 > 100)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Subject marks must be between 0 and 100.";
                return false;
            }

            total = s1 + s2 + s3;
            percentage = (total / 300.0) * 100.0;

            if (s1 >= 35 && s2 >= 35 && s3 >= 35)
            {
                if (percentage >= 75) grade = "Distinction";
                else if (percentage >= 60) grade = "First Class";
                else if (percentage >= 50) grade = "Second Class";
                else grade = "Pass";
            }
            else
            {
                grade = "Fail";
            }

            return true;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtRollNumber.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Student Name and Roll Number are required.";
                return;
            }

            int s1, s2, s3, total;
            double percentage;
            string grade;

            if (!CalculateMarks(out s1, out s2, out s3, out total, out percentage, out grade))
            {
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = @"INSERT INTO StudentMarks (StudentName, RollNumber, Subject1, Subject2, Subject3, Total, Percentage, Grade)
                                     VALUES (@Name, @Roll, @S1, @S2, @S3, @Total, @Percentage, @Grade)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Roll", txtRollNumber.Text.Trim());
                        cmd.Parameters.AddWithValue("@S1", s1);
                        cmd.Parameters.AddWithValue("@S2", s2);
                        cmd.Parameters.AddWithValue("@S3", s3);
                        cmd.Parameters.AddWithValue("@Total", total);
                        cmd.Parameters.AddWithValue("@Percentage", percentage);
                        cmd.Parameters.AddWithValue("@Grade", grade);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Student marksheet record added successfully!";
                ClearForm();
                LoadMarksheetGrid();
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error adding marksheet: " + ex.Message;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtId.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please enter Marksheet ID to search.";
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "SELECT StudentName, RollNumber, Subject1, Subject2, Subject3 FROM StudentMarks WHERE Id = @Id";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Id", txtId.Text.Trim());
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                txtName.Text = reader["StudentName"].ToString();
                                txtRollNumber.Text = reader["RollNumber"].ToString();
                                txtSub1.Text = reader["Subject1"].ToString();
                                txtSub2.Text = reader["Subject2"].ToString();
                                txtSub3.Text = reader["Subject3"].ToString();

                                lblMessage.ForeColor = System.Drawing.Color.Green;
                                lblMessage.Text = "Marksheet record found.";
                            }
                            else
                            {
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                                lblMessage.Text = "No record found with ID: " + txtId.Text;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error searching record: " + ex.Message;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtId.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Marksheet ID is required to update.";
                return;
            }

            int s1, s2, s3, total;
            double percentage;
            string grade;

            if (!CalculateMarks(out s1, out s2, out s3, out total, out percentage, out grade))
            {
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = @"UPDATE StudentMarks 
                                     SET StudentName=@Name, RollNumber=@Roll, Subject1=@S1, Subject2=@S2, Subject3=@S3, Total=@Total, Percentage=@Percentage, Grade=@Grade 
                                     WHERE Id=@Id";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Id", txtId.Text.Trim());
                        cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Roll", txtRollNumber.Text.Trim());
                        cmd.Parameters.AddWithValue("@S1", s1);
                        cmd.Parameters.AddWithValue("@S2", s2);
                        cmd.Parameters.AddWithValue("@S3", s3);
                        cmd.Parameters.AddWithValue("@Total", total);
                        cmd.Parameters.AddWithValue("@Percentage", percentage);
                        cmd.Parameters.AddWithValue("@Grade", grade);

                        con.Open();
                        int rows = cmd.ExecuteNonQuery();
                        if (rows > 0)
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Marksheet record updated successfully!";
                            ClearForm();
                            LoadMarksheetGrid();
                        }
                        else
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Text = "Marksheet ID not found.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error updating record: " + ex.Message;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtId.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Marksheet ID is required to delete.";
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "DELETE FROM StudentMarks WHERE Id = @Id";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Id", txtId.Text.Trim());
                        con.Open();
                        int rows = cmd.ExecuteNonQuery();
                        if (rows > 0)
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Marksheet record deleted successfully.";
                            ClearForm();
                            LoadMarksheetGrid();
                        }
                        else
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Text = "Marksheet ID not found.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error deleting record: " + ex.Message;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearForm();
            lblMessage.Text = "";
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminLogin.aspx");
        }

        private void ClearForm()
        {
            txtId.Text = "";
            txtName.Text = "";
            txtRollNumber.Text = "";
            txtSub1.Text = "";
            txtSub2.Text = "";
            txtSub3.Text = "";
        }
    }
}
