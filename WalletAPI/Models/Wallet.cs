namespace WalletAPI.Models
{
    public class Wallet
    {
        public int Id { get; set; }
        public required string UserName { get; set; }
        public decimal Balance { get; set; }
    }
}
