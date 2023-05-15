import 'package:flutter/material.dart';
import 'package:job_finder/constants/colors.dart';
import 'package:job_finder/model/job.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({super.key, required this.job});
  final Job job;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.8,
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Image.asset(
                          job.logo,
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      job.company,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Icon(
                  job.isSaved
                      ? Icons.bookmark
                      : Icons.bookmark_outline_outlined,
                  size: 30.0,
                  color: job.isSaved ? primaryColor : Colors.grey,
                ),
              ],
            ),
            SizedBox(height: 25.0),
            Text(
              job.position,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: secondaryColor,
                ),
                SizedBox(width: 15.0),
                Text(
                  job.location,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.access_time,
                  color: secondaryColor,
                ),
                SizedBox(width: 15.0),
                Text(
                  job.time,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.0),
            Text(
              'Job Requirements',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.0),
            ...job.requirement
                .map(
                  (e) => Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10.0,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        SizedBox(width: 10.0),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.8,
                          ),
                          child: Text(
                            e,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
            SizedBox(height: 20.0),
            SizedBox(
              height: 45.0,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Text(
                  'Apply Now',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
