import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_screen/theme.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

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
                  fit: BoxFit.cover,
                )),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text("Sign Up"))
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Your Wolf",
                                    icon: Icon(
                                      Icons.email_outlined,
                                      color: Primarycolor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: TextField(
                                  decoration: InputDecoration(
                                hintText: "Password",
                                icon: Icon(
                                  Icons.lock,
                                  color: Primarycolor,
                                ),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.2))),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.android)),
                        ),
                        Container(
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.2))),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.facebook),
                            )),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Primarycolor,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_right_alt_rounded),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
