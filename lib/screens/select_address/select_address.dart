import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SelectAddressScreen extends StatefulWidget {
  const SelectAddressScreen({super.key});

  @override
  State<SelectAddressScreen> createState() => _SelectAddressScreenState();
}

class _SelectAddressScreenState extends State<SelectAddressScreen> {
  bool delivery = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 107),
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 21,
            vertical: 17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox.square(
                    dimension: 18,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        context.router.maybePop();
                      },
                      icon: const ImageIcon(AssetImage('icons/arrow_left.png')),
                    ),
                  ),
                  Container(
                    width: 144,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                      color: delivery
                          ? theme.colorScheme.surface
                          : const Color.fromRGBO(226, 226, 226, 1),
                    ),
                    child: Center(
                      child: Text(
                        'Курьером',
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  ),
                  Container(
                    width: 144,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                      color: !delivery
                          ? theme.colorScheme.surface
                          : const Color.fromRGBO(226, 226, 226, 1),
                    ),
                    child: Center(
                      child: Text(
                        'Самовывоз',
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 17, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: theme.colorScheme.surface,
              ),
              child: Column(
                children: [
                  Container(
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                      color: theme.colorScheme.surface,
                    ),
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      left: 9,
                      right: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('icons/gps_arrow.png'),
                            const SizedBox(width: 14),
                            Text('ул. Миклухо-Маклая, 55, Москва'),
                          ],
                        ),
                        Image.asset('icons/arrow_next.png')
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
