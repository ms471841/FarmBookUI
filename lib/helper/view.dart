import 'package:flutter/material.dart';

class View {
  Widget card(String image, String name, int rate) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Image.network("$image"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "$name",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Organic",
                      style: TextStyle(color: Colors.lightGreen),
                    ),
                    SizedBox(width: 80),
                    Icon(
                      Icons.star,
                      color: Colors.lightGreen,
                      size: 20,
                    ),
                    Text("3.5 (20 review)"),
                  ],
                ),
                Divider(
                  thickness: 2,
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("50 Tons Available"),
                        Text("Rs. $rate / Ton"),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("KNOW MORE"),
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
