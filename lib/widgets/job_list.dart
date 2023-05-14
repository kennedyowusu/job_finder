import 'package:flutter/material.dart';
import 'package:job_finder/model/job.dart';
import 'package:job_finder/widgets/job_card.dart';

class JobList extends StatelessWidget {
  JobList({super.key});

  final jobList = Job.jobList();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 25.0),
      height: height * 0.25,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        itemCount: jobList.length,
        separatorBuilder: (context, index) {
          return SizedBox(width: 20.0);
        },
        itemBuilder: (context, index) {
          return JobCard(
            // showTime: true,
            job: jobList[index],
          );
        },
      ),
    );
  }
}
