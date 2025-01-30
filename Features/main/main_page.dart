import 'package:flutter/material.dart';
import 'package:teamapp/Features/main/back_ground.dart';
import 'package:teamapp/Features/main/card_widet.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              BackGround(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 150),
                  CardWidget(
                    urlImage: Image(
                      width: 200,
                      height: 130,
                      image: AssetImage("assets/images/1.png"),
                    ),
                    textOfBottom: "Your team",
                    pageShuoldGoTo: "1",
                  ),
                  SizedBox(height: 35),
                  CardWidget(
                    urlImage: Image(
                      width: 200,
                      height: 150,
                      image: AssetImage("assets/images/2.png"),
                    ),
                    textOfBottom: "Profile",
                    pageShuoldGoTo: "2",
                  ),
                  SizedBox(height: 35),
                  CardWidget(
                    urlImage: Image(
                      width: 200,
                      height: 134,
                      image: AssetImage("assets/images/3.png"),
                    ),
                    textOfBottom: "Join",
                    pageShuoldGoTo: "3",
                  ),
                  SizedBox(height: 35),
                  CardWidget(
                    urlImage: Image(
                      width: 200,
                      height: 152,
                      image: AssetImage("assets/images/4.png"),
                    ),
                    textOfBottom: "Create",
                    pageShuoldGoTo: "4",
                  ),
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Team App",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Divider()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
