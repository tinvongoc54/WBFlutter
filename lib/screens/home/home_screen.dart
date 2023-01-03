import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:warenb/components/custom_nav_bar.dart';
import 'package:warenb/screens/home/components/categories_cloth.dart';
import 'package:warenb/screens/home/components/form_search.dart';
import 'package:warenb/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              FormSearch(),
              SizedBox(height: defaultPadding / 2),
              CategoriesCloth(),
              SizedBox(height: defaultPadding / 2),

            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
