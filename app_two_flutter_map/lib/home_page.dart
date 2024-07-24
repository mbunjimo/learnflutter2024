import 'package:app_two_flutter_map/learn_flutter_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'getting a hang of it',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LearnFlutterPage();
                  },
                ),
              );
            },
            child: const Text('Learn flutter quickly with great resources'),
          ),
        ],
      ),
    );
  }
}
