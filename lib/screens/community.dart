import 'package:flutter/material.dart';
import 'package:book_generator/components/buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: 
        Container(
          color: Colors.white,
          child:
        Column(
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
                        SizedBox(width: 20),

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
                      'Welcome to your community',
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

            // Scroll Section
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: _buildScrollSection(),
              ),
            ),

            // Get Inspired Section
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: _buildGetInspiredSection(),
              ),
            ),

            // Questions by Topic
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 16.0,
                ),
                child: _buildQuestionsByTopic(),
              ),
            ),

            // Family Members Section
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 16.0,
                ),
                child: _buildFamilyMembersSection(),
              ),
            ),
          ],
        ),
      ),),

      bottomNavigationBar: _buildBottomNavigationBar(),
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
          Expanded(child: buildGreenButton('Community', onPressed: () {})),
          SizedBox(width: 10),
          Expanded(child: buildGreenButton('Family', onPressed: () {})),
        ],
      ),
    );
  }

  Widget _buildScrollSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
            _buildScrollCard(
                'Community',
                'Get Inspired',
                'assets/icons/comm.png',
              ),
            SizedBox(width: 10),
            _buildScrollCard(
                'Community',
                'Inspire Others',
                'assets/icons/comm.png',
              ),
            SizedBox(width: 10),
            _buildScrollCard(
                'Family',
                'Add Family',
                'assets/icons/fam.png',
              ),
            SizedBox(width: 10),
            _buildScrollCard(
                'Family',
                'View Family',
                'assets/icons/fam.png',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildScrollCard(String title, String subtitle, String icon) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        color: Color(0xffF6F6F7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600, fontSize: 12)),
            SizedBox(height: 15),
            Image.asset(icon, width: 20, height: 20),
            SizedBox(height: 15),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGetInspiredSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Get inspired by others',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildInspirationCard(),
              SizedBox(width: 14),
              _buildInspirationCard(),
              SizedBox(width: 14),
              _buildInspirationCard(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInspirationCard() {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0XFFE4E4EB)),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Column(
              children: [
                Image.asset('assets/family.png', fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15,
                    top: 30,
                    bottom: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Parenting Inspiration',
                        style: GoogleFonts.plusJakartaSans(fontSize: 13),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Question for every parent needing help...',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/like.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 6),
                          Text(
                            '13 likes',
                            style: GoogleFonts.plusJakartaSans(fontSize: 13),
                          ),
                          SizedBox(width: 15),
                          Image.asset(
                            "assets/icons/share.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 6),
                          Text(
                            '12 Shares',
                            style: GoogleFonts.plusJakartaSans(fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 110,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF8F9FA),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                "assets/icons/user.png",
                width: 25,
                height: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionsByTopic() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Questions by Topic',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 500,
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              children: [
                _buildTopicCard(
                  'Parenting',
                  '30 Questions',
                  "assets/image1.png",
                ),
                _buildTopicCard(
                  'Vocational',
                  '30 Questions',
                  "assets/image2.png",
                ),
                _buildTopicCard(
                  'Educational',
                  '30 Questions',
                  "assets/image3.png",
                ),
                _buildTopicCard(
                  'Parenting',
                  '30 Questions',
                  "assets/image1.png",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTopicCard(String title, String subtitle, String url) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(url, width: 50, height: 50),
        SizedBox(width: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: GoogleFonts.plusJakartaSans(fontSize: 16)),
            Text(subtitle, style: GoogleFonts.plusJakartaSans(fontSize: 12)),
          ],
        ),
      ],
    );
  }

  Widget _buildFamilyMembersSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Family Members',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: _buildFamilyMemberCard(
                'Add Family',
                'Add family members and then tag the questions you want them to answer',
                'assets/icons/addfam.png',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: _buildFamilyMemberCard(
                'View all Family',
                'Check out all the family members you have added',
                'assets/icons/viewfam.png',
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFamilyMemberCard(String title, String subtitle, String icon) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Color(0xffF6F6F7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(icon, width: 36, height: 36),
            SizedBox(height: 15),
            Text(title, style: GoogleFonts.plusJakartaSans(fontSize: 12)),
            SizedBox(height: 8),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: const Color.fromARGB(255, 219, 219, 219), width: 1.0)),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Image.asset("assets/icons/home.png", width: 20, height: 20),
                SizedBox(height: 8),
              ],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Image.asset("assets/icons/guestions.png", width: 20, height: 20),
                SizedBox(height: 8),
              ],
            ),
            label: 'Questions',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Image.asset("assets/icons/community.png", width: 20, height: 20),
                SizedBox(height: 8),
              ],
            ),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Image.asset("assets/icons/purchases.png", width: 20, height: 20),
                SizedBox(height: 8),
              ],
            ),
            label: 'Purchases',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Image.asset("assets/icons/me.png", width: 20, height: 20),
                SizedBox(height: 8),
              ],
            ),
            label: 'Me',
          ),
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontFamily: "Geomanist", fontSize: 12),
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,

      ),
    );
  }
}
