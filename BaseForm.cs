using System;
using System.Collections.Generic;
using System.Text;
using MetroSet_UI.Forms;
using System.IO;
using System.Text.Json;

namespace CienAppWF
{
    public partial class BaseForm : MetroSetForm
    {
        protected string _connStr = "";
        protected List<Survey> _listSurvey;
        protected List<Question> _listQuestion;
        protected List<Answer> _listAnswer;

        public BaseForm()
        {
            var database = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Database1.mdf");
            _connStr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename="+database+";Integrated Security=True";

            using (StreamReader r = new StreamReader("survey.json"))
            {
                var options = new JsonSerializerOptions
                {
                    ReadCommentHandling = JsonCommentHandling.Skip,
                    AllowTrailingCommas = true,
                };
                string json = r.ReadToEnd();
                _listSurvey = JsonSerializer.Deserialize<List<Survey>>(json, options);
            }

            using (StreamReader r = new StreamReader("question.json"))
            {
                var options = new JsonSerializerOptions
                {
                    ReadCommentHandling = JsonCommentHandling.Skip,
                    AllowTrailingCommas = true,
                };
                string json = r.ReadToEnd();
                _listQuestion = JsonSerializer.Deserialize<List<Question>>(json, options);
            }

            using (StreamReader r = new StreamReader("answer.json"))
            {
                var options = new JsonSerializerOptions
                {
                    ReadCommentHandling = JsonCommentHandling.Skip,
                    AllowTrailingCommas = true,
                };
                string json = r.ReadToEnd();
                _listAnswer = JsonSerializer.Deserialize<List<Answer>>(json, options);
            }
        }

    }
}
