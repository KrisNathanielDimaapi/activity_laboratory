import 'package:flutter/material.dart';
import 'package:activity_laboratory/interest/interest_sliding.dart';

class ImageTextWidget extends StatelessWidget {
  const ImageTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Text('Interest & Projects',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
                color: Color.fromARGB(255, 0, 0, 0),
              )),
          const HomeSlider(),
          const SizedBox(height: 20),
          Image.asset(
            'images/project1.jpg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text('Tooth-To-Bytes: A Dental Management System',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 252, 17, 0),
              )),
          const Text(
            ' The scope of this study encompasses the development of a Tooth-to-Bytes using HTML5, CSS, PHP and JavaScript, targeting the efficient management of patient transaction records, appointment scheduling, and data analytics. The system will focus on the secure management of sensitive patient information along with their transaction data, streamlined appointment scheduling, and data analysis by providing insightful charts and visualizations that are tailored to the specified transaction records.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Image.asset(
            'images/project2.png',
            // Replace with your image URL
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text(
            'Student Portal for Bauan Technical High School',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 252, 17, 0),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          const Text(
            'Creating a student portal for Bauan Technical High School using PHP, HTML, and CSS involves a structured approach to designing a user-friendly and functional platform. PHP will be utilized for backend development, handling database interactions, user authentication, and dynamic content generation. HTML will structure the portal\'s layout, ensuring clarity and accessibility for users navigating through different sections such as grades, schedules, and announcements. CSS will style the portal, ensuring a cohesive visual identity that reflects the school\'s branding while maintaining responsiveness across various devices. Key features will include secure login systems, personalized dashboards displaying relevant student information, and interactive elements like forms for assignments submission and discussion forums. This integration of technologies will not only enhance communication between students and faculty but also streamline administrative tasks, ultimately creating a robust and efficient student portal tailored to the needs of Bauan Technical High School.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Image.asset(
            'images/project3.png',
            // Replace with your image URL
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text(
            'Philippines Association of Practitioners of Student Affairs and Services, Inc.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 252, 17, 0),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          const Text(
            'The proposed data-driven management information system is beneficial to PAPSAS practitioners since it provides an easier way to collect, store, and analyze the various data related to their activities such as membership, events, programs, projects, partnerships, surveys, and reports. The system makes it quick and convenient for practitioners to check the latest news and offers, such as research, seminars, and workshops. Practitioners can access the system from any device with an internet connection, saving them time and effort. The system ensures information is current, so practitioners can be confident they\’re seeing the latest news and offers. This also gives practitioners the option to register for various membership types and events, such as national conventions, research conferences, and webinars, by simply clicking a responsive button. It is considered a useful tool for practitioners to effectively manage and organize their projects, partnerships, surveys and reports, and also remind them of the upcoming events. The study is necessary for practitioners to see the pattern of their online payment collection for membership fee and action for national board of directors and executive board. Practitioners are driven to achieve better in their activities with the help of this feature.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    ));
  }
}
