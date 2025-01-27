import 'package:flutter/material.dart';
import '../Widgets/common_app_bar.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> educationOptions = [
      {
        'title': 'University',
        'duration': '4 Years',
        'cost': '\$25,000/year',
        'description': 'Get a Bachelor\'s degree in your chosen field',
        'requirements': 'High school diploma or equivalent',
        'courses': [
          'Computer Science',
          'Business Administration',
          'Engineering',
          'Medicine',
          'Law',
        ],
      },
      {
        'title': 'Community College',
        'duration': '2 Years',
        'cost': '\$5,000/year',
        'description': 'Earn an Associate\'s degree or certification',
        'requirements': 'High school diploma or equivalent',
        'courses': [
          'Nursing',
          'Information Technology',
          'Business',
          'Graphic Design',
          'Early Childhood Education',
        ],
      },
      {
        'title': 'Trade School',
        'duration': '6-18 Months',
        'cost': '\$15,000/year',
        'description': 'Learn practical skills for specific trades',
        'requirements': 'High school diploma or equivalent',
        'courses': [
          'Electrician',
          'Plumbing',
          'HVAC',
          'Welding',
          'Automotive',
        ],
      },
      {
        'title': 'Online Courses',
        'duration': 'Flexible',
        'cost': '\$0-500/course',
        'description': 'Learn at your own pace from anywhere',
        'requirements': 'Internet connection and computer',
        'courses': [
          'Web Development',
          'Digital Marketing',
          'Data Science',
          'UI/UX Design',
          'Project Management',
        ],
      },
      {
        'title': 'Certification Programs',
        'duration': '3-6 Months',
        'cost': '\$2,000-5,000',
        'description': 'Get industry-recognized certifications',
        'requirements': 'Varies by program',
        'courses': [
          'AWS Certification',
          'Google Analytics',
          'CompTIA A+',
          'Project Management Professional (PMP)',
          'Cisco CCNA',
        ],
      },
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CommonAppBar(title: 'Education Options'),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: educationOptions.length,
        itemBuilder: (context, index) {
          final option = educationOptions[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ExpansionTile(
              title: Text(
                option['title'],
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              subtitle: Text(
                '${option['duration']} - ${option['cost']}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        option['description'],
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Requirements',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        option['requirements'],
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Available Courses',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...option['courses'].map<Widget>((course) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Icon(
                              Icons.school,
                              color: Theme.of(context).primaryColor,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              course,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      )).toList(),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Enroll in ${option['title']}'),
                                content: Text('Would you like to enroll in this program?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('Cancel'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Successfully enrolled in ${option['title']}!'),
                                          backgroundColor: Theme.of(context).primaryColor,
                                        ),
                                      );
                                    },
                                    child: const Text('Enroll Now'),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: const Text('Enroll Now'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
