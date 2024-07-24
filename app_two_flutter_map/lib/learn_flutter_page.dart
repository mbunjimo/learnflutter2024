import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final topPadding = mediaQuery.padding.top;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + topPadding),
        child: AppBar(
          title: const Text(
            'Learn Page',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          toolbarHeight: kToolbarHeight + topPadding,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'This is the marvelous welcome page',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              // Image.asset('images/tangazo.jpg')
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/tangazo.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(12),
                child: const Center(
                  child: Text(
                    'This is starting to flow',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  debugPrint("Hello there this has to be button 1");
                },
                child: const Text(
                  'Button 1',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 253, 227, 0),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Outlined Button'),
              ),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.local_fire_department,
                    ),
                    Text('Row widget'),
                    Icon(
                      Icons.local_fire_department,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
