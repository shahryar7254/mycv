import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My CV'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left side - Personal Information
                Expanded(
                child: _buildLeftContent(),
          ),
          const VerticalDivider(
            color: Colors.grey, // Adjust color as needed
            thickness: 5, // Adjust thickness as needed
          ),
          // Right side - Education, Certificates, Experience, References
          Expanded(
            child: _buildRightContent(),
          ),
              ]
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLeftContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'images/me.jpeg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Raja Shahryar Shabeer', style: TextStyle(fontSize: 20)),
            Text('Flutter Developer', style: TextStyle(fontSize: 12)),
          ],
        ),
        const SizedBox(height: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Info',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add personal info details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('S/O Raja Shabeer Hussain khan'),
                Text('CNIC: 82102-5472514-9'),
                Text('Gender: Male'),
                Text('Nationality: Pakistan'),
                Text('Status: Single'),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Contact',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add skills details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gmail: shahryarshabeer@gmail.com"),
                Text("Phone: +92 313 3356204"),

              ],
            ),SizedBox(height: 10),
            Text(
              'Skills',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add skills details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Flutter'),
                Text('Dart'),
                Text('Microsoft Office'),
                Text('Management'),
                Text('DevOps'),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Hobbies',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add hobbies details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Watching Reels'),
                Text('Traveling'),
                Text('Reading books'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRightContent() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Add education details
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('I am an enthusiastic, self-motivated, reliable, responsible and hard working person.'
                'I am able to work well both in a team environment as well as using own initiative. '
                'I am able to work well under pressure and adhere to strict deadlines.'),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'Education',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Add education details
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bachelor', style: TextStyle(fontSize: 10)),
            Text('Abasyn University Islamabad'),
            Text('Feb-2021-Present'),
            Text('Intermediate', style: TextStyle(fontSize: 10)),
            Text('Read Foundation College Dhirkot'),
            Text('Aug-2018-July-2020'),
            Text('Matric', style: TextStyle(fontSize: 10)),
            Text('Read Foundation High School Arja'),
            Text('April-2016-May-2018'),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'Certificates',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Add certificate details
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('CIT(6 months)', style: TextStyle(fontSize: 10)),
            Text('Super Tech Saddar Rawalpindi'),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'Experience',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Add experience details
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Flutter Development', style: TextStyle(fontSize: 10)),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'References',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Add references details
        Text('References provided on demand'),
      ],
    );
  }
}
