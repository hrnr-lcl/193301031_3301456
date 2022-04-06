import 'package:flutter/material.dart';
import 'package:views/components/header.dart';

class CategoryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe6e6fa),
        body: SafeArea(
            child: Stack(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:ListView(
                  children: [
                //header
                header("Dağ Manzaraları", context),
                //içerikler
                    buildContent(photoUrl: "assets\images\dag1.jpg",
                        )
                  ],

              )
          )]
            )
        )
    );
  }
}

Widget buildContent({ required String photoUrl,}) {
  return Container(
    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6.0)),

    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 16),
    child: Column(children: [
      SizedBox(height: 16),
     Image.asset(photoUrl),
  ]));
}