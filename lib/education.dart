import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Search Tuition',
                        filled: true,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {},
                        ),
                        fillColor: Colors.indigo[100],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
