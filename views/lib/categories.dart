import 'package:flutter/material.dart';

import 'category.dart';
import 'components/header.dart';

class CategoriesPage extends StatelessWidget {
  List<String> kategoriler = [
    "Dağ Manzaraları",
    "Ağaç Manzaraları",
    "Deniz Manzaraları",
    "Doğal Güzellikler",
    "Yapay Mimariler",
    "Tarihi Eserler",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe6e6fa),
        body: SafeArea(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //header
                children: [
                  header("kategoriler",context),
                  SizedBox(height: 16),
                  //kategoriler
                  Expanded(child: ListView(
                      children: kategoriler
                          .map((String title) => buildKategori(title,context)).toList()),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}

Widget buildKategori(String title, context,) {
  return GestureDetector(
      onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)
    {
      return CategoryPage();
        }));
      },

    child: Container(
    padding: EdgeInsets.all(24),
    margin: EdgeInsets.only(bottom: 16),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 4, offset: Offset(0, 4)),
        ],
        color: Colors.white),
    child: Text(
      title,
      style: TextStyle(fontSize: 24, color: const Color(0xff2d2b6f), fontWeight: FontWeight.w600),
    ),
  ));
}
