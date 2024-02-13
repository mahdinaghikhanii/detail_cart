import 'package:detail_cart/common/widgets/cart_item.dart';
import 'package:detail_cart/common/widgets/price_item.dart';
import 'package:flutter/material.dart';

class CartPages extends StatelessWidget {
  const CartPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("My Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                child: ListView(
              children: [
                ...List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: CartItem(index: index),
                        )),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text("Add more items"),
                    ),
                  ),
                ),
              ],
            )),

            const Padding(
                padding: EdgeInsets.only(bottom: 14.0),
                child: PriceItem(
                  subTitle: "Sub total",
                  value: "63.97",
                )),

            const Padding(
                padding: EdgeInsets.only(bottom: 14.0),
                child: PriceItem(
                  subTitle: "Taxes and Fees",
                  value: "10.00",
                )),
            const Padding(
                padding: EdgeInsets.only(bottom: 14.0),
                child: PriceItem(
                  subTitle: "Delivery Fee",
                  value: "5.00",
                )),

            // DOTTED DIVIDER LINES
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Row(
                children: List.generate(
                  40,
                  (index) => Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 2,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$78.96",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: SizedBox(
                width: double.maxFinite,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Checkout"),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                  ),
                ),
              ),
            )

            // CART ITEMS TOTAL
          ],
        ),
      ),
    );
  }
}
