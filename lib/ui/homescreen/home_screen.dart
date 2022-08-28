import 'package:api_ornek0/models/services.dart';
import 'package:api_ornek0/ui/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _NavDrawerState extends State<NavDrawer> {
  NavDrawer navDrawer = NavDrawer();
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  HomeServices homeServices = HomeServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeServices.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.discount_outlined)))
        ],
        title: Text("Shopping"),
        backgroundColor: Colors.orange,
      ),
      // backgroundColor: Color(0xffF7F6DC),
      body: ListView.builder(
        itemCount: homeServices.homeResponseList.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(homeServices.homeResponseList[index].title ?? ""),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Color(0xffF7F6DC),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Color(0xff96E5D1)),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Color(0xff96E5D1)),
            label: "Add",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined,
                  color: Color(0xff96E5D1)),
              label: "Basket")
        ],
      ),
    );
  }
}
