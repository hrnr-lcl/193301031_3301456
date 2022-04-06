import 'package:flutter/material.dart';
import 'package:views/categories.dart';
import 'package:views/favorities.dart';
import 'package:views/popular.dart';
import 'package:views/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffe6e6fa),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(children: [
            //baslık
            buildBaslik(),
            //Banner
            buildBanner(),
            //buttons
            Padding(
              padding: EdgeInsets.only(top: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildNavigation(text: "Kategoriler", icon: Icons.menu_open, widget: CategoriesPage(), context: context),
                  buildNavigation(text: "Favoriler", icon: Icons.stars_sharp, widget: FavoritiesPage(), context: context),
                  buildNavigation(text: "Temalar", icon: Icons.color_lens_outlined, widget: ThemesPage(), context: context),
                  buildNavigation(text: "En beğenilenler", icon: Icons.favorite, widget: PopularPage(), context: context),
                ],
              ),
            ),
            SizedBox(height: 40),
            //anasayfa için örenk manzara görselleri
            Center(
              child: Text(
                "Göz At",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 16),
            //resimler
            Column(children: [
              buildResimler(
                photoUrl: "assets/images/manzara1.jpg",
                text: "Dağ Manzarası",
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 4,
              ),
              buildResimler(
                photoUrl: "assets/images/manzara2.jpg",
                text: "Göl Manzarası",
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 4,
              ),
              buildResimler(
                photoUrl: "assets/images/manzara3.jpg",
                text: "Peri Bacaları",
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 4,
              ),
              buildResimler(
                photoUrl: "assets/images/manzara4.jpg",
                text: "Japon Kiraz Çiçekleri",
                screenWidth: screenWidth,
              )
            ]),
          ]),
        ),
      ),
    );
  }
}

Widget buildBaslik() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      "ANASAYFA",
      style: TextStyle(fontSize: 24, color: Color(0xFF2d2b6f), fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: EdgeInsets.only(top: 24.0),
    child: Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 14, right: 14, top: 14, bottom: 14),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "EN GÜZEL MANZARALAR ",
            style: TextStyle(fontStyle: FontStyle.italic, color: Color(0xFF2d2b6f), fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Image.asset(
            "assets/images/manzara.png",
            width: 130,
            height: 100,
          ),
        ],
      ),
    ),
  );
}

Widget buildNavigation({required String text, required IconData icon, required Widget widget, required BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 20),
          decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xffFFDBFD)),
          child: Icon(
            icon,
            color: Color(0xffFFA3C3),
            size: 18,
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(color: Color(0xff2d2b6f), fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget buildResimler({required String photoUrl, required String text, required double screenWidth}) {
  return Container(
    width: (screenWidth - 60) * 0.5,
    padding: EdgeInsets.all(16),
    child: Column(children: [
      Container(
        child: Image.asset(
          photoUrl,
          fit: BoxFit.fill,
        ),
      ),
      SizedBox(height: 22),
      Text(
        text,
        style: TextStyle(fontSize: 16, color: Color(0xff2d2b6f)),
      )
    ]),
  );
}
