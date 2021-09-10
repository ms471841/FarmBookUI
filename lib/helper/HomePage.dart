import 'package:farm/helper/dropdown.dart';
import 'package:farm/helper/listview.dart';
import 'package:farm/helper/view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Helper helper = new Helper();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trending",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 100,
              child: helper.listhori(),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Dropdown(),
                SizedBox(
                  width: 150,
                ),
                Dropdown(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            View().card(
                "https://www.256businessnews.com/wp-content/uploads/2019/04/maize2.jpg",
                "Maize",
                40000),
            SizedBox(
              height: 20,
            ),
            View().card(
                "https://cdn.pixabay.com/photo/2017/08/25/05/30/in-rice-field-2679155_960_720.jpg",
                "Rice",
                45000),
            View().card(
                "https://www.bejo.com/sites/default/files/media-content/tps_gz_015569_t-p-s-_potatoes_1.jpg",
                "Patato",
                50000),
          ],
        ),
      ),
    );
  }
}
