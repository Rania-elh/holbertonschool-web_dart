import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // 1. Get user data
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);

    // 2. Get user ID
    String id = user['id'];

    // 3. Get user orders
    String ordersData = await fetchUserOrders(id);
    List<dynamic> orders = jsonDecode(ordersData);

    // 4. Calculate total price
    double total = 0;

    for (String product in orders) {
      String priceData = await fetchProductPrice(product);
      double price = jsonDecode(priceData);

      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}