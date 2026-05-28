import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CinemaPage(title: 'Cinema List'),
    );
  }
}

class CinemaPage extends StatefulWidget {
  const CinemaPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<CinemaPage> createState() => _MyCinemaPageState();
}

class _MyCinemaPageState extends State<CinemaPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [

            // Judul
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Daftar Film",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Grid kotak
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                children: List.generate(4, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          "https://www.imdb.com/title/tt0080684/mediaviewer/rm3114097664/?ref_=tt_ov_i",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "https://www.imdb.com/title/tt0121766/mediaviewer/rm4094016256/?ref_=tt_ov_i",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "https://www.imdb.com/title/tt0082971/mediaviewer/rm2091520257/?ref_=tt_ov_i",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "https://www.imdb.com/title/tt0097576/mediaviewer/rm3869839617/?ref_=tt_ov_i",
                          fit: BoxFit.cover,
                        ),
                      ],
                    )
                  );
                }),
              ),
            ),

            // Bottom Navigation Bar
            Container(
              height: 85,
              color: const Color(0xFF1F2A44),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  // Home
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 38,
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),

                  // Movie
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.movie,
                        color: Colors.white,
                        size: 38,
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Movie",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),

                  // Profile
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.person_outline,
                        color: Colors.white,
                        size: 38,
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
