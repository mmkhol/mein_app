import 'package:flutter/material.dart';
import 'package:meine_app/components/button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 122, 201, 125),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 15),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("JAPAN",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              SizedBox(width: 10),
              Image.asset(
                "lib/images/japan1.png",
                height: 30,
              ),
            ]),
            Center(
              child: Image.asset(
                "lib/images/japan2.png",
                height: 350,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("Erleben Sie Japan ein!"),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Mybutton(
                mytext: "Reise Starten",
                event: () => Navigator.pushNamed(context, '/menupage'),
              ),
            ),
          ]),
        ));
  }
}
