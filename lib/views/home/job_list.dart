import 'package:flutter/material.dart';
import 'package:job_finder/model/job.dart';
import 'package:job_finder/widgets/job_card.dart';
import 'package:job_finder/widgets/job_detail.dart';

class JobList extends StatelessWidget {
  JobList({super.key});

  final jobList = Job.jobList();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
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
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) => JobDetails(
                  job: jobList[index],
                ),
              );
            },
            child: JobCard(
              job: jobList[index],
            ),
          );
        },
      ),
    );
  }
}
