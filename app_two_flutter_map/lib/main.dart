import 'package:app_two_flutter_map/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.green)),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final topPadding = mediaQuery.padding.top;

    return Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + topPadding),
        child: AppBar(
          title: const Text("Flutter App"),
          // Ensures that the AppBar is not covered by the notch
          toolbarHeight: kToolbarHeight + topPadding,
        ),
      ),
      body: const SafeArea(
        child: HomePage(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('hello there learn flutter just quickly');
        },
        shape: const CircleBorder(eccentricity: 0.0),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
