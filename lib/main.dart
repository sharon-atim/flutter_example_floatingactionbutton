import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAB Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Fabgram',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.purple, Colors.red, Colors.orange],
              ),
            ),
          ),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(20.0),
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          children: <Widget>[
            Image.asset(
              'assets/images/image1.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image2.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image3.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image4.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image5.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image6.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image7.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image8.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image9.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image10.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image11.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image12.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image13.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/image14.jpeg',
              fit: BoxFit.cover,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home_filled),
                iconSize: 30.0,
                onPressed: () {
                  // Do something
                },
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.search),
                iconSize: 30.0,
                onPressed: () {
                  // Do something
                },
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.add),
                iconSize: 30.0,
                onPressed: () {
                  // Do something
                },
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.favorite),
                iconSize: 30.0,
                onPressed: () {
                  // Do something
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.camera_alt),
            backgroundColor: Colors.pink,
            onPressed: () {
              final SnackBar snackBar = SnackBar(
                  content: const Text('Image uploaded'),
                  action: SnackBarAction(
                      label: 'Undo',
                      textColor: Colors.white,
                      onPressed: () {
                        // Some code to undo the change.
                      }));
              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              const Text('Open Camera');
            }));
  }
}
