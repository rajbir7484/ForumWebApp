using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ForumWebApp.Models
{
    public class Suggestion
    {
        [Key]
        public int SuggestionID { get; set; }

        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        [StringLength(200)]
        public string EmailID { get; set; }

        public DateTime SuggestionDate { get; set; }

        [Required]
        [StringLength(2000)]
        public string SuggestionText { get; set; }
    }
}
