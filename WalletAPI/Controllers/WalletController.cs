using Microsoft.AspNetCore.Mvc;
using WalletAPI.Data;
using WalletAPI.Models;
using System.Collections.Generic;
using System.Linq;

[Route("api/[controller]")]
[ApiController]
public class WalletController : ControllerBase
{
    private readonly WalletContext _context;

    public WalletController(WalletContext context)
    {
        _context = context;

        // Seed data if empty
        if (!_context.Wallets.Any())
        {
            _context.Wallets.Add(new Wallet { Id = 1, UserName = "JohnDoe", Balance = 100 });
            _context.SaveChanges();
        }
    }

    [HttpGet]
    public ActionResult<IEnumerable<Wallet>> GetAllWallets()
    {
        return _context.Wallets.ToList();
    }

    [HttpGet("{id}")]
    public ActionResult<Wallet> GetWalletById(int id)
    {
        var wallet = _context.Wallets.Find(id);
        if (wallet == null)
        {
            return NotFound();
        }
        return wallet;
    }

    [HttpPost]
    public ActionResult<Wallet> CreateWallet(Wallet wallet)
    {
        _context.Wallets.Add(wallet);
        _context.SaveChanges();
        return CreatedAtAction(nameof(GetWalletById), new { id = wallet.Id }, wallet);
    }

    [HttpPut("{id}")]
    public IActionResult UpdateWallet(int id, Wallet wallet)
    {
        var existingWallet = _context.Wallets.Find(id);
        if (existingWallet == null)
        {
            return NotFound();
        }

        existingWallet.UserName = wallet.UserName;
        existingWallet.Balance = wallet.Balance;

        _context.SaveChanges();
        return NoContent();
    }

    [HttpDelete("{id}")]
    public IActionResult DeleteWallet(int id)
    {
        var wallet = _context.Wallets.Find(id);
        if (wallet == null)
        {
            return NotFound();
        }

        _context.Wallets.Remove(wallet);
        _context.SaveChanges();
        return NoContent();
    }
}
