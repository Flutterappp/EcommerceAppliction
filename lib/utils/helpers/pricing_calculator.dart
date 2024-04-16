class TpricingCalculator{
  ///Calculater price based on tex and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice+taxAmount+ shippingCost;
    return totalPrice;
  }

  ///CalculateShippingCost
  static String calaulateShippingCost(double productPrice,String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }
  // calculate TAX
  static String calaulteTax(double productPrice,String location) {
    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrice*taxRate;
    return taxAmount.toStringAsFixed(2);
  }
  static double getTaxRateForLocation(String location) {
    //Lookup the tax rate for the given location from a tax rate DATABASE OR API
    //Return the appropriati tax of 10%
    return 0.10;
  }
  static double getShippingCost(String location) {
    //Lookup the shipping cost for the given location from a Shipping API or Database
    //Calculate the shipping cost based on varous factors like distance, width, height,etc
    return 5.00;
  }
  //Sum all cart value and return total amount
  //ststic double calculaterCartTotal(CartModel cart){
  //return cart.items.map((e)=>e.price).fold(0,(previous, currentPrice)=>previousPrice+(currentPrice??0));
//}
}