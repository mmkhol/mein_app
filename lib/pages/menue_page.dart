import 'package:flutter/material.dart';
import 'package:meine_app/components/button.dart';
import 'package:meine_app/components/event_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    List EventList = [
      EventTile(
        name: "Festival",
        imagePath: "lib/images/japan3.png",
        prices: "49€",
        rating: "5",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      EventTile(
        name: "Noodle",
        imagePath: "lib/images/japan4.png",
        prices: "18€",
        rating: "4",
        details: () => Navigator.pushNamed(context, '/nudelpage'),
      ),
      EventTile(
        name: "another festival",
        imagePath: "lib/images/japan5.png",
        prices: "20€",
        rating: "3",
        details: () {},
      ),
      EventTile(
        name: "somthing else",
        imagePath: "lib/images/japan6.png",
        prices: "100€",
        rating: "4",
        details: () {},
      ),
    ];

    return Scaffold(
      backgroundColor:
          isDarkMode ? Colors.black : Color.fromARGB(255, 216, 225, 217),
      appBar: AppBar(
        title: Text("Hello"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              icon:
                  isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode)),
          Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => Navigator.pushNamed(context, '/cartpage'),
              ))
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(horizontal: 25),
            height: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 64, 97, 65),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("32% Nachlass"),
                    SizedBox(height: 15),
                    Mybutton(mytext: "Buchen", event: () {})
                  ],
                ),
                Image.asset(
                  "lib/images/japan6.png",
                  height: 135,
                )
              ],
            )),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Suche Event",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => EventList[index],
          scrollDirection: Axis.horizontal,
          itemCount: EventList.length,
        )),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Derzeit beliebt",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 205, 153, 149),
              borderRadius: BorderRadius.circular(20)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset(
              "lib/images/japan2.png",
              height: 115,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kimono Kultur",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "45€",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            )
          ]),
        ),
        SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
