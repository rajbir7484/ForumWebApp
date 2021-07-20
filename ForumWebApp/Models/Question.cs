using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ForumWebApp.Models
{
    public class Question
    {
        [Key]
        public int QuestionID { get; set; }

        [Required]
        [StringLength(500)]
        public string QuestionTitle { get; set; }

        [Required]
        [StringLength(2000)]
        public string QuestionText { get; set; }

        [StringLength(100)]
        public string UserName { get; set; }
        
        public DateTime PostDate { get; set; }

        [Required]
        public int SubjectID { get; set; }

        [ForeignKey("SubjectID")]
        [InverseProperty("Questions")]
        public Subject Subject { get; set; }

        public ICollection<Answer> Answers { get; set; }
    }
}
