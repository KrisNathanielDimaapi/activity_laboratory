import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              // Profile picture
              Image.asset(
                'images/kris.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),

              // Personal Information section
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),

                  Text(
                    'Personal Information',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Times New Roman'),
                  ),
                  SizedBox(height: 20),
                  // Row for Name and Value
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Label (Name)
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 99, 99),
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Kris Nathaniel M. Dimaapi',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Label (Birthdate)
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Birthdate',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 99, 99),
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'July 18, 2002',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Label (Age)
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 99, 99),
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          '22',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Label (Address)
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Address',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 99, 99),
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Sto. Nino, San Pascual, Batangas',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Label (Civil Status)
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Civil Status',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 99, 99),
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Single',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Label (About Me)
                      Expanded(
                        flex: 3,
                        child: Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 99, 99),
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Text(
                          'I am enthusiastic about exploring many aspects of digital creation and artistic expression. Video games capture my imagination, allowing me to immerse myself in interactive storytelling and strategic gaming. Editing videos allows me to blend technical talents with creative flair, resulting in tales and visuals that engage viewers. Designing websites feeds my interest in digital aesthetics and user experience, and I attempt to build intuitive and visually appealing online places. Beyond the digital realm, music is important in my life. Playing the guitar is more than simply a hobby; it is a form of personal expression and leisure. As a member of my church choir, I like contributing to worship services through song and harmonizing with others to create uplifting experiences for our congregation. These broad hobbies and activities demonstrate my love for both technological and artistic efforts, defining me as someone who values creativity, teamwork, and lifelong learning.',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Times New Roman',
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Icon(null),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
