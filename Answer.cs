using System;
using System.Collections.Generic;
using System.Text;

namespace CienAppWF
{
    public class Answer
    {
        public int Id { get; set; }
        public int IdQuestion { get; set; }
        public string Respuesta { get; set; }
        public int Puntaje { get; set; }

        public Answer()
        { 
        }
    }
}
