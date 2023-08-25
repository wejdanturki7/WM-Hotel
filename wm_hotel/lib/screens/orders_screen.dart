import 'package:flutter/material.dart';

///////////////////////////Scaffold will be removed from here /////////
//This page will return a grid view widget, that returns all registered orders
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TODO change it with Wejdan custom appbar
        title: Text("My Booking"),
        centerTitle: true,
      ),
    );
  }
}
