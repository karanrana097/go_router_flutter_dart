import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {

  const SamplePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample UI Page'),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header', style: TextStyle(color: Colors.white)),
            ),
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.person), title: Text('Profile')),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Basic Widgets',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Elevated")),
              OutlinedButton(onPressed: () {}, child: const Text("Outlined")),
              TextButton(onPressed: () {}, child: const Text("Text")),
            ],
          ),
          const SizedBox(height: 16),

          // TextField
          const TextField(
            decoration: InputDecoration(labelText: "Input Field", border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),

          // Card with content
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("Card Title"),
                    subtitle: Text("Card subtitle goes here."),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Container with BoxDecoration
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(2, 4),
                ),
              ],
            ),
            child: const Center(child: Text("Decorated Container")),
          ),
          const SizedBox(height: 16),

          // Row and Column inside a Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text("Row and Column Example", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.favorite, color: Colors.red),
                      Icon(Icons.thumb_up, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Grid
          const Text("GridView", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 8),
          SizedBox(
            height: 200,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(6, (index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[100 * (index + 1)],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Text("Item ${index + 1}")),
                );
              }),
            ),
          ),
        ],
      ),

    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:go_router_example/main.dart';
//
// class SamplePage extends StatelessWidget {
//   const SamplePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Theme Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Current Theme: ${_MyAppState.isDarkTheme ? "Dark" : "Light"}',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _MyAppState.toggleTheme(context);
//               },
//               child: Text(
//                 'Toggle Theme',
//                 style: TextStyle(
//                   color: _MyAppState.isDarkTheme ? Colors.black : Colors.white,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 40),
//             Card(
//               elevation: 4,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Theme Demo Card',
//                       style: Theme.of(context).textTheme.titleLarge,
//                     ),
//                     const SizedBox(height: 10),
//                     const Text(
//                       'This card shows how different UI elements adapt to the current theme.',
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }