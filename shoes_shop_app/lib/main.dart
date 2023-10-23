import 'package:flutter/material.dart';
import 'package:shoes_shop_app/animations/fade_animation.dart';
import 'package:shoes_shop_app/shoes.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Shoes",
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        delay: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: const Center(
                            child: Text(
                              "All",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        delay: 1.2,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          child: const Center(
                            child: Text(
                              "Sneakers",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        delay: 1.3,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          child: const Center(
                            child: Text(
                              "Football",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        delay: 1.4,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          child: const Center(
                            child: Text(
                              "Soccer",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: const Center(
                          child: Text(
                            "Golf",
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              FadeAnimation(
                  delay: 1.5, child: makeItem("assets/images/one.jpg", "red")),
              FadeAnimation(
                delay: 1.6,
                child: makeItem("assets/images/two.jpg", "blue"),
              ),
              FadeAnimation(
                  delay: 1.7,
                  child: makeItem("assets/images/three.jpg", "white")),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem(String image, String tag) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Shoes(image)));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!,
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(
                          delay: 1,
                          child: Text(
                            "Sneakers",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeAnimation(
                          delay: 1.1,
                          child: Text(
                            "Nike",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  FadeAnimation(
                    delay: 1.2,
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Center(
                        child: Icon(
                          Icons.favorite_border,
                          size: 20.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const FadeAnimation(
                delay: 1.2,
                child: Text(
                  "100\$",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
