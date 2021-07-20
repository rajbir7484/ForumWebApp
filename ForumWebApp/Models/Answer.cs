using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ForumWebApp.Models
{
    public class Answer
    {
        [Key]
        public int AnswerID { get; set; }

        [Required]
        [StringLength(2000)]
        public string AnswerText { get; set; }

        [StringLength(100)]
        public string UserName { get; set; }

        public DateTime AnswerDate { get; set; }

        [Required]
        public int QuestionID { get; set; }

        [ForeignKey("QuestionID")]
        [InverseProperty("Answers")]
        public Question Question { get; set; }
    }
}
