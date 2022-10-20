using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MetroSet_UI.Forms;
using MetroSet_UI.Controls;
using System.IO;
using System.Linq;

namespace CienAppWF
{
    public partial class SurveyMetro : BaseForm
    {
        public SurveyMetro()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
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

        }
    }
}
