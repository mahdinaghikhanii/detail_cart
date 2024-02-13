import 'package:detail_cart/common/widgets/cart_item.dart';
import 'package:detail_cart/common/widgets/price_item.dart';
import 'package:flutter/material.dart';

class CartPages extends StatefulWidget {
  const CartPages({Key? key}) : super(key: key);

  @override
  State<CartPages> createState() => _CartPagesState();
}

class _CartPagesState extends State<CartPages> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      setState(() {
        laoding = true;
      });
    });
  }

  bool laoding = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: Colors.grey)),
                  ),
                  const Text(
                    "My Cart",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                  )
                ])),
        body: laoding == true
            ? Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: ListView(
                      children: [
                        ...List.generate(
                            2,
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
                              icon: Icon(Icons.add,
                                  color: Colors.orange.shade700),
                              label: Text(
                                "Add more items",
                                style: TextStyle(color: Colors.orange.shade700),
                              ),
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
                    const Padding(
                      padding: EdgeInsets.only(bottom: 30.0),
                      child: Row(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\$78.96",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Colors.black),
                          child: const Text(
                            "Checkout",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )

                    // CART ITEMS TOTAL
                  ],
                ),
              )
            : Center(
                child:
                    CircularProgressIndicator(color: Colors.orange.shade700)));
  }
}
