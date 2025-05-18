import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 26, 170, 189),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/my_photo.png'),
              ),
              Text(
                'يوسف محمد ',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 38.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'طالب في كليه الحاسبات والمعلومات',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 350.0,
                height: 20.0,
                child: 
                  Divider(
                    color: Colors.white,
                  ),
              ),
              Card(
                margin: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.cyan[700],
                    ),
                    title: Text(
                      '+201159751975',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListTile(
                    leading: 
                      Icon(
                        Icons.email,
                        color: Colors.cyan[700],
                      ),
                      title: Text(
                      'youssef@gmail.com',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ) 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
