import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/constants/colors.dart';
import 'package:job_finder/views/home/carousel.dart';
import 'package:job_finder/views/home/custom_search_card.dart';
import 'package:job_finder/views/home/tag_list.dart';
import 'package:job_finder/views/search/search.dart';
import 'package:job_finder/widgets/custom_appbar.dart';
import 'package:job_finder/views/home/job_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SearchScreen());
                        debugPrint('Search');
                      },
                      child: SearchCard(),
                    ),
                    SizedBox(height: 5.0),
                    CarouselWithCards(),
                    SizedBox(height: 15.0),
                    TagList(),
                    SizedBox(
                      height: 5.0,
                    ),
                    JobList(),
                    SizedBox(height: 5.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Your dream job is waiting for you',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        elevation: 1,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: primaryColor,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 20),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cases_outlined, size: 20),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Text(''),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined, size: 20),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, size: 20),
              label: '',
            )
          ],
        ),
      ),
    );
  }
}
