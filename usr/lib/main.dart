import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Marketing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {'icon': Icons.search, 'title': 'SEO Optimization'},
      {'icon': Icons.people, 'title': 'Social Media Marketing'},
      {'icon': Icons.edit, 'title': 'Content Creation'},
      {'icon': Icons.email, 'title': 'Email Marketing'},
      {'icon': Icons.attach_money, 'title': 'PPC Advertising'},
      {'icon': Icons.analytics, 'title': 'Data Analytics'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Marketing Services'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              leading: Icon(
                services[index]['icon'],
                color: Theme.of(context).primaryColor,
              ),
              title: Text(services[index]['title']),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle service tap
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle contact us action
        },
        tooltip: 'Contact Us',
        child: const Icon(Icons.contact_mail),
      ),
    );
  }
}
