import 'package:flutter/material.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';

import 'widget/order_card.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        showArrow: true,
        title: Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text("Order"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OrderCard(
                medicineName: 'Para',
                imagePath: "assets/images/medicine/1.png",
                estDate: "26-10",
                status: "Delivered"),
            OrderCard(
                medicineName: 'Para',
                imagePath: "assets/images/medicine/2.png",
                estDate: "1-10",
                status: "In Transit"),
            OrderCard(
                medicineName: 'Para',
                imagePath: "assets/images/medicine/3.png",
                estDate: "6-10",
                status: "Shipped"),
          ],
        ),
      ),
    );
  }
}
