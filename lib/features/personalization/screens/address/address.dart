import 'package:flutter/material.dart';
import 'package:medi_care/common/styles/space_style.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/features/personalization/screens/address/widgets/address_container.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> address = [
      "A-13/101 Shiv Sai Residency, Vankaneda,Chalthan",
      "A-1/101 Ram Sai Residency, Kadodara"
    ];
    List<String> pinCode = ["304305", "394305"];
    return Scaffold(
      appBar: const CustomAppBar(
        showArrow: true,
        title: Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text("Address"),
        ),
      ),
      body: Padding(
        padding: SpaceStyle.paddingWithoutAppBar,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {

                        return AddressContainer(
                            address: address[index],
                            pinCode: pinCode[index],
                            isSelected: index == 0 ? true : false);
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Add New Address"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
