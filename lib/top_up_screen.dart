import 'package:flutter/material.dart';

class TopUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          color: const Color.fromARGB(255, 252, 254, 254),
        ),
        ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.gamepad),
              title: Text('Top Up Item ${index + 1}'),
              subtitle: Text('Harga: Rp ${10000 * (index + 1)}'),
              trailing: const Icon(Icons.shopping_cart),
            );
          },
        ),
      ],
    );
  }
}
