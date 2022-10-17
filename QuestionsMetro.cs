using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MetroSet_UI.Forms;
using Microsoft.Data.SqlClient;
using MetroSet_UI.Controls;

namespace CienAppWF
{
    public partial class QuestionsMetro : MetroSetForm
    {
        private readonly string CONN_STR = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Projects\\cienargentinosapp\\CienAppWF\\Database1.mdf;Integrated Security=True";
        private SqlConnection dbConnection;

        private int _idSurvey;
        private string _surveyName;

        public QuestionsMetro(int idSurvey, string surveyName)
        {
            InitializeComponent();
            _idSurvey = idSurvey;
            _surveyName = surveyName;
        }

        private void QuestionsMetro_Load(object sender, EventArgs e)
        {
            this.Text += " " + this._surveyName;
        }

        private void QuestionsMetro_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (dbConnection != null)
            {
                dbConnection.Close();
            }
        }

        private void btnRespuesta_1_Click(object sender, EventArgs e)
        {
            btnRespuesta_1.NormalColor = Color.FromName("Green");
            btnRespuesta_1.Text = "Usar el celular";
        }
    }
}
