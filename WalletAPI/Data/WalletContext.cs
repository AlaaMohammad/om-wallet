using Microsoft.EntityFrameworkCore;
using WalletAPI.Models;

namespace WalletAPI.Data
{
    public class WalletContext : DbContext
    {
        public WalletContext(DbContextOptions<WalletContext> options) : base(options) { }

        public DbSet<Wallet> Wallets { get; set; }
    }
}
