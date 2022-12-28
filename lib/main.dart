import 'package:flutter/material.dart';
import 'package:pr_3_1/screens/WebScreen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        'WebScreen': (context) => const WebScreen(),
      },
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Educational websites",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Let's Explore....",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan.shade700),
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.cyan, width: 2),
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebScreen(),
                      settings: RouteSettings(
                          arguments: "https://www.wikipedia.org/"),
                    ),
                  );
                },
                child: Text(
                  "Wikipedia",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      fontSize: 20),
                )),
            SizedBox(
              height: 40,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.cyan.shade600, width: 2),
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebScreen(),
                      settings: RouteSettings(
                          arguments: "https://www.w3schools.com/"),
                    ),
                  );
                },
                child: Text(
                  "W3Schools",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      fontSize: 20),
                )),
            SizedBox(
              height: 40,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.cyan.shade600, width: 2),
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebScreen(),
                      settings: RouteSettings(
                          arguments: "https://www.javatpoint.com/"),
                    ),
                  );
                },
                child: Text(
                  "JavatPoint",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      fontSize: 20),
                )),
            SizedBox(
              height: 40,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.cyan.shade600, width: 2),
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebScreen(),
                      settings: RouteSettings(
                          arguments:
                              "https://www.tutorialspoint.com/index.htm?ranMID=49144&ranEAID=VW0I2QEkbtc&ranSiteID=VW0I2QEkbtc-WgDR3FAkx9rI0jGulOmM6w"),
                    ),
                  );
                },
                child: Text(
                  "TutorialsPoint",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      fontSize: 20),
                )),
          ],
        ),
      ),
      backgroundColor: Colors.cyan.shade100,
    );
  }
}
