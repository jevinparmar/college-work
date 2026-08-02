using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_4
{
    public partial class EmployeeRecruitment : Page
    {
        private string connStr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEmployeeGrid();
            }
        }

        private void LoadEmployeeGrid()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "SELECT EmployeeId, EmployeeName, Email, Mobile, Gender, Department, Qualification, Experience, City FROM Employees";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            DataTable dt = new DataTable();
                            dt.Load(reader); // Populates DataTable directly using SqlDataReader
                            gvEmployees.DataSource = dt;
                            gvEmployees.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error loading employee data: " + ex.Message;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtEmail.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Employee Name and Email are required.";
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = @"INSERT INTO Employees (EmployeeName, Email, Mobile, Gender, Department, Qualification, Experience, City)
                                     VALUES (@Name, @Email, @Mobile, @Gender, @Dept, @Qual, @Exp, @City)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text.Trim());
                        cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                        cmd.Parameters.AddWithValue("@Dept", txtDept.Text.Trim());
                        cmd.Parameters.AddWithValue("@Qual", txtQualification.Text.Trim());
                        cmd.Parameters.AddWithValue("@Exp", txtExperience.Text.Trim());
                        cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Employee record added successfully.";
                ClearForm();
                LoadEmployeeGrid();
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error adding record: " + ex.Message;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtEmployeeId.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please enter an Employee ID to search.";
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "SELECT EmployeeId, EmployeeName, Email, Mobile, Gender, Department, Qualification, Experience, City FROM Employees WHERE EmployeeId = @EmpId";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@EmpId", txtEmployeeId.Text.Trim());
                        con.Open();

                        // Using SqlDataReader to populate form fields line by line
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                txtName.Text = reader["EmployeeName"].ToString();
                                txtEmail.Text = reader["Email"].ToString();
                                txtMobile.Text = reader["Mobile"].ToString();
                                ddlGender.SelectedValue = reader["Gender"].ToString();
                                txtDept.Text = reader["Department"].ToString();
                                txtQualification.Text = reader["Qualification"].ToString();
                                txtExperience.Text = reader["Experience"].ToString();
                                txtCity.Text = reader["City"].ToString();

                                lblMessage.ForeColor = System.Drawing.Color.Green;
                                lblMessage.Text = "Employee found using SqlDataReader!";
                            }
                            else
                            {
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                                lblMessage.Text = "No employee found with ID: " + txtEmployeeId.Text;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error searching employee: " + ex.Message;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtEmployeeId.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Employee ID is required to update.";
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = @"UPDATE Employees 
                                     SET EmployeeName=@Name, Email=@Email, Mobile=@Mobile, Gender=@Gender, Department=@Dept, Qualification=@Qual, Experience=@Exp, City=@City 
                                     WHERE EmployeeId=@EmpId";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@EmpId", txtEmployeeId.Text.Trim());
                        cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text.Trim());
                        cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                        cmd.Parameters.AddWithValue("@Dept", txtDept.Text.Trim());
                        cmd.Parameters.AddWithValue("@Qual", txtQualification.Text.Trim());
                        cmd.Parameters.AddWithValue("@Exp", txtExperience.Text.Trim());
                        cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());

                        con.Open();
                        int rows = cmd.ExecuteNonQuery();
                        if (rows > 0)
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Employee record updated successfully.";
                            ClearForm();
                            LoadEmployeeGrid();
                        }
                        else
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Text = "Employee ID not found.";
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
            if (string.IsNullOrEmpty(txtEmployeeId.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Employee ID is required to delete.";
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "DELETE FROM Employees WHERE EmployeeId = @EmpId";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@EmpId", txtEmployeeId.Text.Trim());
                        con.Open();
                        int rows = cmd.ExecuteNonQuery();
                        if (rows > 0)
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Employee record deleted successfully.";
                            ClearForm();
                            LoadEmployeeGrid();
                        }
                        else
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Text = "Employee ID not found.";
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

        private void ClearForm()
        {
            txtEmployeeId.Text = "";
            txtName.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtDept.Text = "";
            txtQualification.Text = "";
            txtExperience.Text = "";
            txtCity.Text = "";
            ddlGender.SelectedIndex = 0;
        }
    }
}
