import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetLayoutDemo());
}

class WidgetLayoutDemo extends StatelessWidget {
  const WidgetLayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layouts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layouts'),
      ),

      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Flutter Widgets',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.text_fields),
              title: Text('Text & Container'),
            ),
            ListTile(
              leading: Icon(Icons.view_column),
              title: Text('Row & Column'),
            ),
            ListTile(
              leading: Icon(Icons.layers),
              title: Text('Stack'),
            ),
          ],
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // Text Demo
          const Text(
            'Text & Container Demo',
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          // Styled Text
          const Text(
            'Flutter Widgets',
            style: TextStyle(
              fontSize: 22,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          // Container Demo
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
              ),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Image.network(
              'https://picsum.photos/300/200',
              height: 200,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 20),

          // Row Demo
          const Text(
            'Row Demo',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.star,
                size: 40,
                color: Colors.orange,
              ),
              Icon(
                Icons.favorite,
                size: 40,
                color: Colors.red,
              ),
              Icon(
                Icons.thumb_up,
                size: 40,
                color: Colors.blue,
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Column Demo
          const Text(
            'Column Demo',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Column(
            children: [
              const Text(
                'Beautiful Nature',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Image.network(
                'https://picsum.photos/250/150',
                height: 150,
                width: 250,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 10),

              const Text(
                'A beautiful landscape image displayed using Column.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Stack Demo
          const Text(
            'Stack Demo',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://picsum.photos/400/250',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.black54,
                  child: const Text(
                    'Overlay Text',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Multiple Containers in Stack
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 150,
                width: 250,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 180,
                color: Colors.purple,
              ),
              const Text(
                'Stack Layout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}