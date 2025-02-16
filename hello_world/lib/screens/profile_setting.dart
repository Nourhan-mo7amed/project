import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profile Setting'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.pink.shade100,
                    child: Icon(Icons.person, size: 50, color: Colors.black),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.black,
                      child:
                          Icon(Icons.camera_alt, color: Colors.white, size: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            buildTextField(label: 'First Name'),
            buildTextField(label: 'Last Name'),
            buildTextField(label: 'Email'),
            buildTextField(label: 'Gender'),
            buildTextField(label: 'Phone'),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              ),
              onPressed: () {},
              child: Text('Save change', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField({required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: UnderlineInputBorder(),
        ),
      ),
    );
  }
}
