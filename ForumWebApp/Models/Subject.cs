using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ForumWebApp.Models
{
    public class Subject
    {
        [Key]
        public int SubjectID { get; set; }

        [Required]
        [StringLength(100)]
        public string SubjectName { get; set; }

        public ICollection<Question> Questions { get; set; }
    }
}
