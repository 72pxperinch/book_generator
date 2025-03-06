import 'package:flutter/material.dart';
import 'package:book_generator/components/buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class FamilyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity, // Full width
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/mountain.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF43B888),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          icon: Image.asset(
                            "assets/icons/back.png",
                            width: 16,
                            height: 16,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),

                      // Menu Button
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF43B888),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          icon: Image.asset(
                            "assets/icons/menu.png",
                            width: 16,
                            height: 16,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Title Text
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 16.0,
                  ),
                  child: Text(
                    'Build your family',
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                _buildToggleButtons(),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF8F9FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontFamily: "Geomanist",
                      fontSize: 15,
                      color: Color(0xff777779),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    hintText: "Search here",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image.asset(
                        "assets/icons/lens.png",
                        width: 17,
                        height: 17,
                      ),
                    ),

                    suffixIcon: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image.asset(
                        "assets/icons/adjust.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(height: 20, color: Colors.white),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return PostCard();
                },
              ),
            ),
          ),
          Container(height: 30, width: double.infinity, color: Colors.white),
        ],
      ),
    );
  }

  Widget _buildToggleButtons() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),

      child: Row(
        children: [
          Expanded(child: buildGreenButton('Members', onPressed: () {})),
          SizedBox(width: 10),
          Expanded(child: buildGreenButton('Topics', onPressed: () {})),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              "assets/aiimage.png",
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/avatar.png", width: 20, height: 20),
                    SizedBox(width: 5),
                    Text(
                      "Hafidh Farhan S",
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text(
                  "Date time stamp, Topic",
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.grey,
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "How would you describe our family’s humour as if to a stranger?",
                  style: GoogleFonts.plusJakartaSans(fontSize: 14),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset("assets/icons/red.png", width: 20, height: 20),
                    SizedBox(width: 5),
                    Text("112"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
