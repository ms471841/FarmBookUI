import 'package:flutter/material.dart';

class Helper {
  Widget listview(String name, String image) {
    return Column(
      children: <Widget>[
        Container(
          width: 65.0,
          height: 65.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill, image: new NetworkImage("$image"))),
        ),
        Text("$name"),
      ],
    );
  }

  Widget listhori() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        listview("Patato",
            "https://images.creativemarket.com/0.1.0/ps/6210357/1820/1238/m1/fpnw/wm1/j8ybsjrhgkxpomcm0anliljtyvrwlxkl1gkals2o33yrzg59ugowutfpmzckxx0k-.jpg?1554562750&s=d8b2dcac8586dd49b4d69613b16b62a5"),
        SizedBox(
          width: 10,
        ),
        listview("Carrot",
            "https://media.istockphoto.com/photos/carrot-vegetable-grows-in-the-garden-in-the-soil-organic-background-picture-id940433038?k=20&m=940433038&s=612x612&w=0&h=9Qs29TNpIfkOyaMW_NKwr4euOnzys7p6h9F0prA2g8E="),
        SizedBox(
          width: 10,
        ),
        listview("Wheat",
            "https://media.architecturaldigest.com/photos/5dc1f5bb461852000839070b/16:9/w_2560%2Cc_limit/One_AD_Absolutes_Intermediates_2019.jpg"),
        SizedBox(
          width: 10,
        ),
        listview("Pulses",
            "http://www.isaaa.org/kc/cropbiotechupdate/files/images/9102019112512PM.jpg"),
        SizedBox(
          width: 10,
        ),
        listview("Oil",
            "https://ftalawfirm.com/wp-content/uploads/2017/11/common-oilfield-injuries.jpg"),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
