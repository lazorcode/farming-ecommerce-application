import 'package:ecommerce/constants/global_variables.dart';
import 'package:ecommerce/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddressBox extends StatelessWidget {
  const AddressBox({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
      height: 40,
      decoration: const BoxDecoration(color: GlobalVariables.addressboxcolor
          // gradient: LinearGradient(colors: [
          //   Color.fromARGB(255, 119, 192, 179),
          //   Color.fromARGB(255, 85, 175, 172)
          // ], stops: [
          //   0.5,
          //   1.0
          // ]),
          ),
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: Colors.white,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'Delivery to ${user.name} - ${user.address}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
