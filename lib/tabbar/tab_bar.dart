import 'package:activity_laboratory/education/education_sliding.dart';
import 'package:flutter/material.dart';
import 'package:activity_laboratory/personal/personal.dart';
import 'package:activity_laboratory/skill/skill.dart';
import 'package:activity_laboratory/interest/interest.dart';
import 'package:activity_laboratory/contact/contact.dart';

class TopTabBar extends StatelessWidget {
  const TopTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.school),
              ),
              Tab(
                icon: Icon(Icons.workspace_premium),
              ),
              Tab(
                icon: Icon(Icons.interests),
              ),
              Tab(
                icon: Icon(Icons.contact_mail),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ProfileScreen(),
            HomeSlider(),
            Skills(),
            ImageTextWidget(),
            ContactDetails(),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, Widget content) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: content,
        ),
      ],
    );
  }
}
