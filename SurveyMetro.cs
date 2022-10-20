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
using System.IO;
using System.Linq;

namespace CienAppWF
{
    public partial class SurveyMetro : BaseForm
    {
        private SqlConnection dbConnection;

        public SurveyMetro()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            dbConnection = new SqlConnection(this._connStr);
            dbConnection.Open();
            //GetAllSurveys();
            GetAllSurveysJson();
        }

        private int GetIdFromName(string name)
        {
            var nro = name.Substring(name.LastIndexOf("_") + 1, name.Length - name.LastIndexOf("_") - 1);
            return int.Parse(nro);
        }

        private void btnClickEvent(Object sender, EventArgs e)
        {
            int idSurvey = GetIdFromName(((MetroSetButton)sender).Name);

            QuestionsMetro questionsForm = new QuestionsMetro(idSurvey, ((MetroSetButton)sender).Text);
            
            questionsForm.ShowDialog(this);
        }

        private void GetAllSurveys()
        {
            SqlCommand dbCommand = new SqlCommand("SELECT Id, Encuesta FROM Survey", dbConnection);
            dbCommand.CommandType = CommandType.Text;

            SqlDataAdapter dbAdapter = new SqlDataAdapter(dbCommand);
            DataTable dt = new DataTable();
            dbAdapter.Fill(dt);

            foreach (DataRow e in dt.Rows)
            {
                MetroSetButton ctrl = (MetroSetButton)this.Controls.Find("btnEncuesta_" + e["Id"].ToString(), true)[0];
                ctrl.Text = e["Encuesta"].ToString();

                ctrl.Click += btnClickEvent;
            }
        }

        private void GetAllSurveysJson()
        {
            foreach (Survey s in base._listSurvey)
            {
                MetroSetButton ctrl = (MetroSetButton)this.Controls.Find("btnEncuesta_" + s.Id, true)[0];
                ctrl.Text = s.Encuesta.ToString();

                ctrl.Click += btnClickEvent;
            }
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (dbConnection != null)
            {
                dbConnection.Close();
            }
        }
    }
}
