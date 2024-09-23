import 'package:flutter/material.dart';

import '../models/payment_option_model.dart';

class PaymentMethod extends StatelessWidget {
  final bool isActive;
  final PaymentOptionModel data;
  final VoidCallback onTap;

  const PaymentMethod({
    super.key,
    required this.isActive,
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  data.image,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Icon(
              isActive ? Icons.circle : Icons.circle_outlined,
              color: isActive ? Colors.blue : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
