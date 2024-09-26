import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'unit4_assignment_ciales',
      home: DaveCiales(),
      debugShowCheckedModeBanner: true,
    );
  }
}

class DaveCiales extends StatelessWidget {
  const DaveCiales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(
          'Dave Ciales',  
          style: TextStyle(
            fontSize: 22,             
            fontWeight: FontWeight.bold,  
            color: Colors.white,       
          ),
        ),
        centerTitle: false,  
        backgroundColor: Colors.black,  
      ),
      backgroundColor: const Color.fromARGB(255, 200, 200, 200),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile 
            const Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/dave.jpg'), 
                ),
                SizedBox(width: 20),
                Text(
                  'Dave Ciales', 
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Information
Container(
  width: double.infinity,
  padding: EdgeInsets.all(16.0),
  decoration: BoxDecoration(
    color: Colors.grey[200],  
    borderRadius: BorderRadius.circular(10), 
    border: Border.all(color: const Color.fromARGB(255, 23, 27, 42)), 
  ),
  child: Column(
    children: [
      infoRow(Icons.cake, "Birthdate", "April 19, 2004"),
      infoRow(Icons.home, "Address", "Pavia, Iloilo, Philippines"),
      infoRow(Icons.email, "Email", "dave.ciales@wvsu.edu.ph"),
      infoRow(Icons.phone_android, "Phone", "09814835018"),
      infoRow(Icons.school, "Education", "West Visayas State University"),
      infoRow(Icons.book, "Course", "Bachelor of Science in Information Technology"),
      infoRow(Icons.favorite, "Hobbies", "Cycling, Sleeping, Cooking, Photography, Traveling"),
    ],
  ),
),

            
            const SizedBox(height: 30),

            // Biography section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                 border: Border.all(color: const Color.fromARGB(255, 26, 37, 46)),
                color: Colors.grey[200],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Biography",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(

                    "A 20-year-old student currently studying at West Visayas State University, where I’m in my third year of pursuing a Bachelor of Science in Information Technology. "
                    "I was born on April 19, 2004, and I’m originally from Pavia, Iloilo. "
                    "As someone passionate about technology, I’m excited to build a future in IT. "
                    "When I’m not busy with my studies, I love spending my free time traveling, cycling, watching movies, and diving into photography. "
                    "Exploring new places and capturing the world through my camera gives me a creative outlet and keeps life exciting. ",
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

Widget infoRow(IconData icon, String label, String data) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 30, color: const Color.fromARGB(255, 26, 37, 46)),  
        SizedBox(width: 10),   
        Container(
          width: 120,  
          child: Text(
            label,
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(width: 10), 
        Expanded(
          child: Text(
            data,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    ),
  );
}
}
