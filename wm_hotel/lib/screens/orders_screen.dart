import 'package:flutter/material.dart';
import 'package:wm_hotel/widget/appbar_widget.dart';

//This page will return a grid view widget, that returns all registered orders
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WAppBar(
      title: 'My Booking',
    );
  }
}
