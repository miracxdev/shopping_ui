import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Color(0xffF7F6DC),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () => {Navigator.of(context).pop()},
                  ),
                ),
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/71889823?v=4"),
                  ),
                  title: Text("Mirac Karaevli"),
                  contentPadding: EdgeInsets.only(
                    left: 10,
                  ),
                  subtitle: Text("karaevlimirac3@gmail.com"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ListTile(
            leading: Icon(
              Icons.filter_alt_outlined,
              color: Color(0xff96E5D1),
            ),
            title: const Text('Filters'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(
              Icons.favorite_border_outlined,
              color: Color(0xff96E5D1),
            ),
            title: const Text('Favorites'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_none_outlined,
              color: Color(0xff96E5D1),
            ),
            title: const Text('Notifications'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(
              Icons.settings_applications_outlined,
              color: Color(0xff96E5D1),
            ),
            title: const Text('Settings'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
