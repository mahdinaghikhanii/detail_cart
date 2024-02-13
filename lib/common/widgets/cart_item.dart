import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Container(
            width: 130,
            height: double.infinity,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                    index == 0 ? "assets/burger.jpg" : "assets/pizza.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    index == 0 ? "Cheese Hot\nHamburger" : "Italian Hot\nPizza",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  index == 0 ? "\$22.99" : "\$15.02",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      child: const Icon(
                        Icons.remove,
                        size: 20,
                      ),
                    ),
                    const Text(
                      "1",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.close,
                      color: Colors.grey.shade500,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
