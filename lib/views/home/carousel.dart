import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_finder/constants/colors.dart';
import 'package:job_finder/controller/card_controller.dart';
import 'package:job_finder/widgets/custom_text_style.dart';

class CarouselWithCards extends StatelessWidget {
  final CardController cardController = Get.put(CardController());

  CarouselWithCards({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Obx(
      () => CarouselSlider(
        options: CarouselOptions(
          height: height * 0.27,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
        ),
        items: cardController.cardData.map((card) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  debugPrint('Image Number $card');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    card,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
