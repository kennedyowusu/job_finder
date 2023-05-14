import 'package:get/get.dart';
import 'package:job_finder/constants/images.dart';

class CardController extends GetxController {
  RxList<Map<String, String>> cardData = <Map<String, String>>[
    {
      'title': 'Product Designer',
      'image': GOOGLELOGO,
      'company': 'Google LLC',
      'location': 'Hybrid',
      'salary': '\$120,000',
    },
    {
      'title': 'UX Designer',
      'image': AIRBNBLOGO,
      'company': 'Airbnb',
      'location': 'Remote',
      'salary': '\$80,000',
    },
    {
      'title': 'Mobile Developer',
      'image': SPOTIFYLOGO,
      'company': 'Spotify',
      'location': 'Onsite',
      'salary': '\$100,000',
    },
    {
      'title': 'Web Developer',
      'image': LINKEDINLOGO,
      'company': 'LinkedIn',
      'location': 'Hybrid',
      'salary': '\$110,000',
    },
    {
      'title': 'Marketing Officer',
      'image': METALOGO,
      'company': 'Meta',
      'location': 'Remote',
      'salary': '\$90,000',
    },
  ].obs;
}
