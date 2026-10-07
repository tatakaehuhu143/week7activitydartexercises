void main() {
  String customerName = "Shena";
  int coffeePrice = 120;
  int pastryPrice = 85;
  int coffeeQuantity = 2;
  int pastryQuantity = 3;

  int coffeeTotal = coffeePrice * coffeeQuantity;
  int pastryTotal = pastryPrice * pastryQuantity;
  int subtotal = coffeeTotal + pastryTotal;

  double discountRate = 0.10;
  double discountAmount = subtotal * discountRate;
  double grandTotal = subtotal - discountAmount;

  int rewardPoints = grandTotal ~/ 50;

  bool qualifiesForFreeShipping = grandTotal >= 300;

  print("========================================");
  print("        COFFEE SHOP RECEIPT             ");
  print("========================================");
  print("Customer: $customerName");
  print("----------------------------------------");
  print("Items:");
  print("  Coffee  x$coffeeQuantity @ ₱$coffeePrice = ₱$coffeeTotal");
  print("  Pastry  x$pastryQuantity @ ₱$pastryPrice = ₱$pastryTotal");
  print("----------------------------------------");
  print("Subtotal:         ₱$subtotal");
  print("Loyalty Discount: -₱${discountAmount.toStringAsFixed(2)}");
  print("GRAND TOTAL:      ₱${grandTotal.toStringAsFixed(2)}");
  print("----------------------------------------");
  print("Reward Points Earned: $rewardPoints pts");
  print("Free Shipping: ${qualifiesForFreeShipping ? 'YES' : 'NO'}");
  print("========================================");
}