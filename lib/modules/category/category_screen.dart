import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Categories",
          ),
          backgroundColor: Colors.lime.shade50,
          centerTitle: true,
        ),
        body: Container(
          child: Text(
            "Categories",
          ),
        ),
      ),
    );
  }
}
