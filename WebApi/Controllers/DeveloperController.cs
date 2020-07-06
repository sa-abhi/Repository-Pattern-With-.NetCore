using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Domain.Entities;
using Domain.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DeveloperController : ControllerBase
    {
        private readonly IUnitOfWork _unitOfWork;

        public DeveloperController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        [HttpGet]
        public IActionResult GetPopularDevelopers([FromQuery] int count)
        {
            var popularDevelopers = _unitOfWork.Developers.GetAllPopularDevelopers(count);
            return Ok(popularDevelopers);
        }

        [HttpPost]
        public IActionResult AddDeveloperAndProject()
        {
            var developer = new Developer()
            {
                Followers = 3700,
                Name = "Abhi"
            };

            var project = new Project()
            {
                Name = "Agent Banking System"
            };

            _unitOfWork.Developers.Add(developer);
            _unitOfWork.Projects.Add(project);
            _unitOfWork.Complete();
            return Ok();
        }
    }
}