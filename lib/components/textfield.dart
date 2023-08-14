import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  final TextEditingController controller;
  const TitleTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: 50,
      decoration: const InputDecoration(
        label: Text('Title'),
      ),
    );
  }
}

class AmountTextField extends StatelessWidget {
  final TextEditingController controller;
  const AmountTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
        prefixText: '₱ ',
        label: Text('Amount'),
      ),
    );
  }
}
