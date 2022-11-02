import 'package:flutter/material.dart';

import 'package:pemesanan_coffe/constants.dart';
import 'package:pemesanan_coffe/screens/home/components/new_arrival.dart';
import 'package:pemesanan_coffe/screens/home/components/populer_produk.dart';
import 'package:pemesanan_coffe/screens/home/components/search_product.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


int _currentIndex =0 ;

  //fungtion
void onTabTapped(int index){
  setState(() {
    _currentIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Color.fromARGB(255, 77, 76, 79)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/images/menus.png",
                height: 20,
              ),
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 76, 77, 79),
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
        Image.asset("assets/images/slogan.png",
          height: 99.0,
          width: 120.0,
        ),
         ]
          ),
        ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(),
              child: SearchProduct(),
            ),
            Image.asset('assets/images/banner.png'),
            const NewArrival(),
            const PopulerProduk(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:
          onTabTapped,
          currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
            ),
        ],
      ),
    );
  }
}
