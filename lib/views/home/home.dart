import 'package:flutter/material.dart';
import 'package:job_finder/constants/colors.dart';
import 'package:job_finder/views/home/carousel.dart';
import 'package:job_finder/views/home/custom_search_card.dart';
import 'package:job_finder/views/home/tag_list.dart';
import 'package:job_finder/widgets/custom_appbar.dart';
import 'package:job_finder/widgets/job_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(),
      body: SafeArea(
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
                  SearchCard(),
                  SizedBox(height: 5.0),
                  CarouselWithCards(),
                  SizedBox(height: 15.0),
                  TagList(),
                  SizedBox(
                    height: 5.0,
                  ),
                  JobList(),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        elevation: 0,
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
