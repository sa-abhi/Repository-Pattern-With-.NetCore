using Domain.Entities;
using Domain.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccess.EFCore.Repositories
{
    public class DeveloperRepository : GenericRepository<Developer>, IDeveloperRepository
    {
        public DeveloperRepository(ApplicationDbContext context):base(context)
        {

        }
        public IEnumerable<Developer> GetAllPopularDevelopers(int count)
        {
            return _context.Developers.OrderByDescending(x => x.Followers).Take(count).ToList();
        }
    }
}
