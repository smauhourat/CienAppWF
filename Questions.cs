using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;

namespace CienAppWF
{
    public partial class Questions : Form
    {
        public int _idSurvey;

        private readonly string CONN_STR = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Projects\\cienargentinosapp\\CienAppWF\\Database1.mdf;Integrated Security=True";
        private SqlConnection dbConnection;

        public Questions(int idSurvey)
        {
            InitializeComponent();
            this._idSurvey = idSurvey;
        }

        private void Questions_Load(object sender, EventArgs e)
        {
            dbConnection = new SqlConnection(CONN_STR);
            dbConnection.Open();
            GetAllQuestions(this._idSurvey);
        }

        private void GetAllQuestions(int IdSurvey)
        {
            SqlCommand dbCommand = new SqlCommand("SELECT Id, Pregunta FROM Question WHERE IdSurvey = " + IdSurvey.ToString(), dbConnection);
            dbCommand.CommandType = CommandType.Text;

            SqlDataAdapter dbAdapter = new SqlDataAdapter(dbCommand);
            DataTable dt = new DataTable();
            dbAdapter.Fill(dt);

            dataGridView1.DataSource = dt;
            dataGridView1.Columns[0].Visible = false;
            dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
        }

        private void Questions_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (dbConnection != null)
            {
                dbConnection.Close();
            }
        }
    }
}
