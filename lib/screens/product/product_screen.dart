import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Stack(
          children: [
            Image.asset('images/product1.png'),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  'ХИТ',
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
