import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile Page',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 84, 152, 255),
        title: const Text('Assignment ni Mark'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/mrk.jpg'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mark Angelo Quiman Servando',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text('CC 208 Student'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Personal Details',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Table(
                    columnWidths: const {
                      0: FlexColumnWidth(1.7),
                      1: FlexColumnWidth(10),
                    },
                    children: const [
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.home, color: Colors.blue),
                              SizedBox(width: 8),
                              Text('Address:',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Sooc, Arevalo, Iloilo City'),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.phone, color: Colors.blue),
                              SizedBox(width: 8),
                              Text('Phone Number:',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('0989 765 4321'),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.email, color: Colors.blue),
                              SizedBox(width: 8),
                              Text('Email:',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('markangelo.servando@wvsu.edu.ph'),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.school, color: Colors.blue),
                              SizedBox(width: 8),
                              Text('Education:',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('West Visayas State University'),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.book, color: Colors.blue),
                              SizedBox(width: 8),
                              Text('Course:',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              'Bachelor of Science in Information Technology Major in Software Technologies'),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.favorite, color: Colors.blue),
                              SizedBox(width: 8),
                              Text('Hobbies:',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                              Text('Gaming, Photography, Videography, Running'),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Biography',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Mark Angelo is a dedicated third-year Information Technology student from Iloilo City. His fascination with computers began early in life, as he spent countless hours exploring their capabilities. This passion has not only shaped his academic journey but has also fueled his desire to understand the intricate relationship between technology and everyday life.'
                    'Mark enjoys learning about various aspects of computing, believing that technology will play a pivotal role in shaping the future. He is particularly interested in how computers will integrate into every facet of people\'s lives, enhancing efficiency and connectivity.'
                    'In addition to his academic pursuits, Mark has a diverse range of hobbies, including running and multimedia. He finds joy in capturing moments through photography and videography, preserving memories in both still images and moving pictures. This creative outlet allows him to express his unique perspective on the world.'
                    'Always eager to learn, Mark is passionate about sharing his knowledge with others. He believes in the power of continuous education and is committed to excelling in his field, inspiring those around him to embrace the same dedication to growth and innovation.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
