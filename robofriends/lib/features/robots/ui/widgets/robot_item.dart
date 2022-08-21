import 'package:flutter/material.dart';

class RobotItem extends StatelessWidget {
  final int id;
  final String name;
  final String email;

  const RobotItem(
      {required this.id, required this.name, required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal[600],
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              'https://robohash.org/$id',
              fit: BoxFit.contain,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: FittedBox(
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )),
        ],
      ),
    );
  }
}
