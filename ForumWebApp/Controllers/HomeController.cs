using ForumWebApp.Data;
using ForumWebApp.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace ForumWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public HomeController(ApplicationDbContext context, UserManager<IdentityUser> userManager, ILogger<HomeController> logger)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult SuccessMessage()
        {
            return View();
        }

        public IActionResult GiveSuggestions()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> GiveSuggestions([Bind("SuggestionID,Name,EmailID,SuggestionText")] Suggestion suggestion)
        {
            ModelState.Remove("SuggestionDate");
            if (ModelState.IsValid)
            {
                suggestion.SuggestionDate = DateTime.Now;
                _context.Add(suggestion);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(SuccessMessage));
            }
            return View(suggestion);
        }

        public async Task<IActionResult> AllQuestions()
        {
            var applicationDbContext = _context.Questions.OrderByDescending(q => q.QuestionID);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> QuestionDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var question = await _context.Questions
                .Include(p => p.Answers)
                .FirstOrDefaultAsync(m => m.QuestionID == id);
            if (question == null)
            {
                return NotFound();
            }

            return View(question);
        }

        [Authorize]
        public async Task<IActionResult> GiveAnswer(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var question = await _context.Questions                
                .FirstOrDefaultAsync(m => m.QuestionID == id);
            if (question == null)
            {
                return NotFound();
            }
            ViewData["QuestionID"] = question.QuestionID;
            ViewData["QuestionTitle"] = question.QuestionTitle;
            return View();
        }

        [Authorize]
        public IActionResult AskQuestion()
        {
            ViewData["SubjectID"] = new SelectList(_context.Subjects, "SubjectID", "SubjectName");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AskQuestion([Bind("QuestionID,QuestionTitle,QuestionText,SubjectID")] Question question)
        {
            ModelState.Remove("UserName");
            ModelState.Remove("PostDate");
            if (ModelState.IsValid)
            {
                question.PostDate = DateTime.Now;
                question.UserName = _userManager.GetUserName(this.User);
                _context.Add(question);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(AllQuestions));
            }
            ViewData["SubjectID"] = new SelectList(_context.Subjects, "SubjectID", "SubjectName", question.SubjectID);
            return View(question);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> GiveAnswer([Bind("AnswerID,AnswerText,QuestionID")] Answer answer)
        {
            ModelState.Remove("UserName");
            ModelState.Remove("AnswerDate");
            if (ModelState.IsValid)
            {
                answer.AnswerDate = DateTime.Now;
                answer.UserName = _userManager.GetUserName(this.User);
                _context.Add(answer);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(AllQuestions));
            }
            var question = await _context.Questions
                .FirstOrDefaultAsync(m => m.QuestionID == answer.QuestionID);
            if (question == null)
            {
                return NotFound();
            }
            ViewData["QuestionID"] = question.QuestionID;
            ViewData["QuestionTitle"] = question.QuestionTitle;
            return View(answer);
        }


        [Authorize]
        public async Task<IActionResult> MyQuestions()
        {
            string userid = _userManager.GetUserName(this.User);
            var questions = _context.Questions
                .Where(m => m.UserName == userid);
            return View(await questions.OrderByDescending(m => m.QuestionID).ToListAsync());
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
