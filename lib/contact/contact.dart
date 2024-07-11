import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/background.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/kris.png'),
                ),
                const SizedBox(height: 20),
                itemProfile(
                    'Name', 'Kris Nathaniel M. Dimaapi', CupertinoIcons.person),
                const SizedBox(height: 10),
                itemProfile('Phone', '09915839915', CupertinoIcons.phone),
                const SizedBox(height: 10),
                itemProfile(
                    'Email', 'kn.dimaapi25@gmail.com', CupertinoIcons.mail),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontFamily: 'Times New Roman'),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              fontFamily: 'Times New Roman', fontWeight: FontWeight.bold),
        ),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
