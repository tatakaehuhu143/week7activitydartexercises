void main() {
  // 1. Order details and pricing
  String customerName = "Shena";
  int coffeePrice = 120;
  int pastryPrice = 85;
  int coffeeQuantity = 2;
  int pastryQuantity = 3;

  // 2. Calculations using operators
  int coffeeTotal = coffeePrice * coffeeQuantity;
  int pastryTotal = pastryPrice * pastryQuantity;
  int subtotal = coffeeTotal + pastryTotal;

  // Loyalty discount (10%)
  double discountRate = 0.10;
  double discountAmount = subtotal * discountRate;
  double grandTotal = subtotal - discountAmount;

  // Reward points calculation using ~/ (integer division)
  int rewardPoints = grandTotal ~/ 50;

  // Free shipping eligibility (orders over 300)
  bool qualifiesForFreeShipping = grandTotal >= 300;

  // 3. Print Receipt
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