import 'package:flutter/material.dart';
import 'package:meine_app/models/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text("Hello"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            Expanded(
                child: ListView(
              children: [
                if (cartModel.nudelsuppe > 0)
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        title: Text(
                          "Nuddlesuppe",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "18€",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartModel.nudelsuppe.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Nuddlesuppe",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: cartModel.clearNudlesuppe,
                                icon: Icon(Icons.delete, color: Colors.white))
                          ],
                        ),
                      )),
                SizedBox(
                  height: 15,
                ),
                if (cartModel.festival > 0)
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        title: Text(
                          "Festival",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "45€",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartModel.festival.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Festival",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: cartModel.clearFestival,
                                icon: Icon(Icons.delete, color: Colors.white))
                          ],
                        ),
                      )),
                SizedBox(
                  height: 50,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      title: Text(
                        "Total",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Menge:    " + cartModel.totalItem.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Gesamt Preis:  " + cartModel.totalPreis.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
