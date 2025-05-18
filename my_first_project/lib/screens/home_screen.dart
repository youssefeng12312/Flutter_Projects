import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_project/constants.dart';
import 'package:my_first_project/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar HomeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text(
        'مرحبا بكم في متجر الاكترونيات',
        style: GoogleFonts.almarai(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.menu), color: Colors.white),
      ],
    );
  }
}