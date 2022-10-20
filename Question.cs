using System;
using System.Collections.Generic;
using System.Text;

namespace CienAppWF
{
    public class Question
    {
        public int Id { get; set; }
        public int IdSurvey { get; set; }
        public string Pregunta { get; set; }

        public Question()
        { 
        }
    }
}
