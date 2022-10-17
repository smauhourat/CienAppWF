using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;
using System.Data.Sql;
using MetroSet_UI.Forms;

namespace CienAppWF
{
    public partial class Encuestas : MetroSetForm
    {
        private readonly string CONN_STR = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Projects\\cienargentinosapp\\CienAppWF\\Database1.mdf;Integrated Security=True";
        private SqlConnection dbConnection;

        public Encuestas()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            dbConnection = new SqlConnection(CONN_STR);
            dbConnection.Open();
            GetAllSurveys();
        }

        private void GetAllSurveys()
        {
            SqlCommand dbCommand = new SqlCommand("SELECT Id, Encuesta FROM Survey", dbConnection);
            dbCommand.CommandType = CommandType.Text;

            SqlDataAdapter dbAdapter = new SqlDataAdapter(dbCommand);
            DataTable dt = new DataTable();
            dbAdapter.Fill(dt);

            dataGridView1.DataSource = dt;
            dataGridView1.Columns[0].Visible = false;
            dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (dbConnection != null)
            {
                dbConnection.Close();
            }
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            Questions questionsForm = new Questions(int.Parse(dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString()));

            questionsForm.ShowDialog();
        }
    }
}
