import 'package:flutter/material.dart';
import 'package:login_screen/screen/signin_screen.dart';
import 'package:login_screen/theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Dark.jpg"),
                      fit: BoxFit.cover)),
            )),
        Expanded(
            child: Column(
          children: [
            Text(
              "Always be a Night",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white),
            ),
            const Text("Like a wolf in Jungle",
                style: TextStyle(
                    color: Primarycolor, fontWeight: FontWeight.bold)),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SigninScreen();
                    }));
                  },
                  child: Text("Start Your Journey",
                      style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black))),
            )
          ],
        ))
      ],
    ));
  }
}
