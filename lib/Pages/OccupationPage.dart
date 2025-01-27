import 'package:flutter/material.dart';
import '../Widgets/common_app_bar.dart';
import 'JobListPage.dart';

class OccupationPage extends StatelessWidget {
  const OccupationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CommonAppBar(title: 'Career Paths'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildJobCategory(
            context,
            'Business & Finance',
            'Explore opportunities in the financial world',
            Icons.business,
            [
              'Accountant',
              'Financial Analyst',
              'Business Manager',
              'Investment Banker',
            ],
          ),
          _buildJobCategory(
            context,
            'Technology',
            'Join the digital revolution',
            Icons.computer,
            [
              'Software Developer',
              'Data Scientist',
              'IT Consultant',
              'System Administrator',
            ],
          ),
          _buildJobCategory(
            context,
            'Healthcare',
            'Make a difference in people\'s lives',
            Icons.health_and_safety,
            [
              'Doctor',
              'Nurse',
              'Pharmacist',
              'Medical Researcher',
            ],
          ),
          _buildJobCategory(
            context,
            'Creative Arts',
            'Express yourself through creativity',
            Icons.palette,
            [
              'Graphic Designer',
              'Writer',
              'Musician',
              'Film Director',
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildJobCategory(
    BuildContext context,
    String category,
    String description,
    IconData icon,
    List<String> jobs,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Colors.green.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: Colors.green,
              size: 24,
            ),
          ),
          title: Text(
            category,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
          childrenPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          children: [
            ...jobs.map((job) => _buildJobTile(context, category, job)).toList(),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildJobTile(BuildContext context, String category, String job) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      leading: const Icon(Icons.work_outline, color: Colors.green),
      title: Text(
        job,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.green.withOpacity(0.5),
          ),
        ),
        child: const Text(
          'View Details',
          style: TextStyle(
            color: Colors.green,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobListPage(category: job),
          ),
        );
      },
    );
  }
}
