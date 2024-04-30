import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'PoppinsBold',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),

      // body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(screenWidth <= 600 ? 50 : 75),
                child: Image.asset(
                  'assets/images/img_profile.jpg',
                  fit: BoxFit.cover,
                  width: screenWidth <= 600 ? 100 : 150,
                  height: screenWidth <= 600 ? 100 : 150,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Matilda Brown",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kalpurush',
                  fontSize: screenWidth <= 600 ? 18 : 20,
                ),
              ),
            ),
            Text(
              "matildabrown@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Kalpurush',
                fontSize: screenWidth <= 600 ? 15 : 20,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 10),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kalpurush',
                  fontSize: screenWidth <= 600 ? 18 : 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
