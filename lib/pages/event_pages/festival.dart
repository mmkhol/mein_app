import 'package:flutter/material.dart';
import 'package:meine_app/components/button.dart';
import 'package:meine_app/models/cart_model.dart';
import 'package:provider/provider.dart';

class FestivalPage extends StatelessWidget {
  const FestivalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 225, 217),
        appBar: AppBar(
          title: Text("Hello"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode)),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.shopping_cart),
            )
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset("lib/images/japan7.png", height: 300),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
                Text(
                  "5",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Mitma Mastsuri Festival",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Das erwarten Sie",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "irgendwas............................................................................................................HA Ha...........................................................................................................................................",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5),
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.blue,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("€ 49,00",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: IconButton(
                                onPressed: cartModel.removeFestival,
                                icon: Icon(Icons.remove),
                              ),
                            ),
                            Text(
                              cartModel.festival.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  height: 1.5),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: IconButton(
                                onPressed: cartModel.addFestival,
                                icon: Icon(Icons.add),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Mybutton(
                      mytext: "Zum Einkaufswagen",
                      event: () => Navigator.pushNamed(context, '/cartpage'),
                    )
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
