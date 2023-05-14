import 'package:job_finder/constants/images.dart';

class Job {
  String company;
  String logo;
  String position;
  String salary;
  String location;
  String time;
  bool isSaved;

  List<String> requirement;

  Job({
    required this.company,
    required this.logo,
    required this.position,
    required this.salary,
    required this.location,
    required this.time,
    required this.isSaved,
    required this.requirement,
  });

  static List<Job> jobList() {
    return [
      Job(
        company: 'Google LLC',
        logo: GOOGLELOGO,
        position: "Product Designer",
        salary: '\$120,000',
        location: 'San Francisco LA',
        time: 'Full Time',
        isSaved: true,
        requirement: [
          '3+ years of experience in product design',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
        ],
      ),
      Job(
        company: 'Airbnb',
        logo: AIRBNBLOGO,
        position: "UX Designer",
        salary: '\$80,000',
        location: 'New York, USA',
        time: 'Remote',
        isSaved: true,
        requirement: [
          '3+ years of experience in product design',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
        ],
      ),
      Job(
        company: 'Spotify',
        logo: SPOTIFYLOGO,
        position: "Mobile Developer",
        salary: '\$100,000',
        location: 'Los Angeles, CA',
        time: 'Onsite',
        isSaved: false,
        requirement: [
          '3+ years of experience in product design',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
        ],
      ),
      Job(
        company: 'LinkedIn',
        logo: LINKEDINLOGO,
        position: "Full Stack Developer",
        salary: '\$110,000',
        location: 'San Francisco LA',
        time: 'Hybrid',
        isSaved: false,
        requirement: [
          '3+ years of experience in product design',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
        ],
      ),
      Job(
        company: 'Meta',
        logo: METALOGO,
        position: "Marketing Officer",
        salary: '\$90,000',
        location: 'Ontario, Canada',
        time: 'Full Time',
        isSaved: false,
        requirement: [
          '3+ years of experience in product design',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
          'Experience in designing mobile and web applications',
        ],
      ),
    ];
  }
}
