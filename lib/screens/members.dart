import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class MembersScreen extends StatelessWidget {
  final List<Map<String, String>> members = List.generate(
    6,
    (index) => {
      'name': 'Hafidh Farhan S',
      'posts': '10 posts',
      'image': index > 1 && index < 4 ? 'assets/avatar.png' : '',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: 
        Container(
          color: Colors.white,
          child:
        Column(
          children: [
            Container(
              width: double.infinity, // Full width
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
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
                            SizedBox(width: 15),

                            Text(
                              'Members',
                              style: GoogleFonts.plusJakartaSans(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
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

            Expanded(
              child: Container(
                width: 500,
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  children:
                      members.map((member) => MemberCard(member)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF43B888),
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.white, size: 35),
      ),
    );
  }
}

class MemberCard extends StatelessWidget {
  final Map<String, String> member;
  MemberCard(this.member);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xffF8F9FA),
              backgroundImage:
                  member['image']!.isNotEmpty
                      ? NetworkImage(member['image']!)
                      : null,
              child:
                  member['image']!.isEmpty
                      ? Image.asset(
                        "assets/icons/plchldr.png",
                        width: 36,
                        height: 40,
                      )
                      : null,
            ),
            SizedBox(height: 10),
            Text(
              member['name']!,
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Text(
              member['posts']!,
              style: GoogleFonts.plusJakartaSans(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/edit.png",
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: "Geomanist",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Remove',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Geomanist",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
