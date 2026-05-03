import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mr. Lupesh Kumar info",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Color(0xff1E3A8A), // 🔵 Dark Blue
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home_outlined, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded, color: Colors.white),
          ),
        ],
      ),

      backgroundColor: Color(0xffF1F5F9), // light grey

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 20),

            /// Profile Image
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                "https://media.licdn.com/dms/image/v2/D5603AQEwmZd3EzYdSw/profile-displayphoto-shrink_200_200/B56ZS8X8nBHwAc-/0/1738327182804?e=2147483647&v=beta&t=GSwuwM1tFO_9MLiN6rFEDB0W6wiSuZSJ5tinOJSV6IQ",
              ),
            ),

            SizedBox(height: 20),

            /// Name
            Text(
              "Mr. Lupesh Kumar",
              style: TextStyle(
                color: Color(0xff0F172A),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            /// Description
            Text(
              "I am a Flutter Developer with experience in building 150+ live projects. I specialize in creating high-quality, user-friendly apps.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700]),
            ),

            SizedBox(height: 20),

            /// Stats Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCard("Total Project", "150+"),
                buildCard("Total Amount", "5721+"),
              ],
            ),

            SizedBox(height: 30),

            /// Boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [buildBox(), buildBox()],
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [buildBox(), buildBox()],
            ),
          ],
        ),
      ),
    );
  }

  /// Card Design
  Widget buildCard(String title, String value) {
    return Container(
      height: 90,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xff2563EB), // 🔵 Blue
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(color: Colors.white)),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  /// Box Design
  Widget buildBox() {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
    );
  }
}

