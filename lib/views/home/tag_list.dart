import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/constants/colors.dart';
import 'package:job_finder/controller/tag_list.dart';

class TagList extends StatelessWidget {
  TagList({super.key});

  final TagListController tagList = Get.put(TagListController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.055,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: tagList.tag.length,
        separatorBuilder: (context, index) {
          return SizedBox(width: 10.0);
        },
        itemBuilder: (context, index) {
          final tag = tagList.tag[index];

          return Obx(
            () => GestureDetector(
              onTap: () {
                tagList.changeSelected(index);
                debugPrint('Tag $tag, $index');
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  color: tagList.selectedIndex.value == index
                      ? primaryColor.withOpacity(0.2)
                      : Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: tagList.selectedIndex.value == index
                        ? primaryColor
                        : Colors.grey.withOpacity(0.1),
                  ),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  tag,
                  style: TextStyle(
                    color: tagList.selectedIndex.value == index
                        ? primaryColor
                        : Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
