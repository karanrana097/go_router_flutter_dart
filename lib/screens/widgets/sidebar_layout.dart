import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideBarLayout extends StatelessWidget {
  final Widget child;

  const SideBarLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    //final String location = GoRouter.of(context).location;
    final String location = GoRouterState.of(context).uri.toString();
    return Scaffold(
      body: Row(
        children: [
          Drawer(
            elevation: 0,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [

                // const DrawerHeader(
                //   decoration: BoxDecoration(color: Colors.blue),
                //   child: Text('My App', style: TextStyle(color: Colors.white)),
                // ),
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: const Text('Dashboard'),
                  selected: location == '/dashboard',
                  selectedTileColor: Colors.blue,
                  onTap: () => context.go('/dashboard'),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  selected: location == '/settings',
                  selectedTileColor: Colors.blue,
                  onTap: () => context.go('/settings'),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  selected: location == '/',
                  selectedTileColor: Colors.blue,
                  onTap: () => context.go('/'),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Second'),
                  selected: location.startsWith('/second'),
                  selectedTileColor: Colors.blue,
                  onTap: () => context.go('/second/karan'),
                ),
                ListTile(
                  leading: const Icon(Icons.group),
                  title: const Text('Users'),
                  selected: location == '/users',
                  selectedTileColor: Colors.blue,
                  onTap: () => context.go('/users'),
                ),
              ],
            ),
          ),
          const VerticalDivider(width: 1),
          Expanded(child: child),
        ],
      ),
    );
  }
}


// class SideBarLayout extends StatelessWidget {
//   final Widget child;
//   const SideBarLayout({super.key, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     final String location = GoRouterState.of(context).uri.toString();
//
//
//     // Determine which destination is currently selected
//     int selectedIndex = 0;
//     if (location.startsWith('/dashboard')) {
//       selectedIndex = 0;
//     } else if (location.startsWith('/settings')) {
//       selectedIndex = 1;
//     } else if (location == '/') {
//       selectedIndex = 2;
//     } else if (location.startsWith('/second')) {
//       selectedIndex = 3;
//     } else if (location.startsWith('/users')) {
//       selectedIndex = 4;
//     }
//
//     return Scaffold(
//       body: Row(
//         children: [
//           NavigationRail(
//             selectedIndex: selectedIndex,
//             onDestinationSelected: (index) {
//               switch (index) {
//                 case 0:
//                   context.go('/dashboard');
//                   break;
//                 case 1:
//                   context.go('/settings');
//                   break;
//                 case 2:
//                   context.go('/');
//                   break;
//                 case 3:
//                   context.go('/second/karan'); // Default username (or set dynamically)
//                   break;
//                 case 4:
//                   context.go('/users');
//                   break;
//               }
//             },
//             labelType: NavigationRailLabelType.all,
//             destinations: const [
//               NavigationRailDestination(
//                 icon: Icon(Icons.dashboard),
//                 label: Text('Dashboard'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.settings),
//                 label: Text('Settings'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.home),
//                 label: Text('Home'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.person),
//                 label: Text('Second'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.group),
//                 label: Text('Users'),
//               ),
//             ],
//           ),
//           const VerticalDivider(thickness: 1, width: 1),
//           Expanded(child: child),
//         ],
//       ),
//     );
//   }
// }



// class SideBarLayout extends StatelessWidget {
//   final Widget child;
//   const SideBarLayout({super.key, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Drawer(
//             elevation: 0,
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 // const DrawerHeader(
//                 //   decoration: BoxDecoration(color: Colors.blue),
//                 //   child: Text('My App', style: TextStyle(color: Colors.white)),
//                 // ),
//                 ListTile(
//                   leading: Icon(Icons.dashboard),
//                   title: Text('Dashboard'),
//                   onTap: () => context.go('/dashboard'),
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.settings),
//                   title: Text('Settings'),
//                   onTap: () => context.go('/settings'),
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.home),
//                   title: Text('Home'),
//                   onTap: () => context.go('/'),
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.person),
//                   title: Text('Second'),
//                   onTap: () => context.go('/second/karan'),
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.group),
//                   title: Text('Users'),
//                   onTap: () => context.go('/users'),
//                 ),
//               ],
//             ),
//           ),
//           const VerticalDivider(width: 1),
//           Expanded(child: child),
//         ],
//       ),
//     );
//   }
// }

//SideBarLayout wraps every page with a sidebar

