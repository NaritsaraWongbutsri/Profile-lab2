import 'package:flutter/material.dart';
import 'package:lab1/student.dart';

class DetailPage extends StatelessWidget {
  final Student data;

  const DetailPage({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("หน้ารายละเอียด"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade100,
              Colors.blue.shade300,
              Colors.blue.shade500,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image(
                            width: 150,
                            height: 150, // ให้แน่ใจว่าความสูงและความกว้างเท่ากันเพื่อให้เป็นวงกลม
                            image: AssetImage(data.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          data.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "รหัสนักศึกษา: ${data.studentid}",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Divider(
                          color: Colors.grey.shade400,
                          thickness: 1,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          data.aboutMe,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Divider(
                          color: Colors.grey.shade400,
                          thickness: 1,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.email, color: Colors.blueAccent),
                            const SizedBox(width: 10),
                            Text(
                              data.email,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.link, color: Colors.blueAccent),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                // Handle social media link tap
                              },
                              child: Text(
                                data.socialMediaLink,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.blueAccent,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}