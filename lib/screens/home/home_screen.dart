import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 115),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 36, left: 20, right: 20, bottom: 8),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  constraints:
                      const BoxConstraints(minHeight: 32, minWidth: 159),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Доставка курьером',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      Text(
                        'ул. Миклухо-Маклая, 55, Москва',
                        style: theme.textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                left: 40,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ImageIcon(
                    const AssetImage('icons/delivery.png'),
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      constraints:
                          const BoxConstraints(maxWidth: 287, maxHeight: 36),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(1, 1),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 13,
                        horizontal: 14,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('icons/search.png'),
                          const SizedBox(width: 15),
                          SizedBox(
                            width: 234,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Поиск',
                                border: InputBorder.none,
                              ),
                              style: theme.textTheme.labelSmall,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.colorScheme.surface,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(1, 1),
                          ),
                        ],
                      ),
                      child: const ImageIcon(
                        AssetImage('icons/filters.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 53,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
            ),
            child: Center(
              child: Text(
                'ХИТЫ ПРОДАЖ',
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          const SizedBox(height: 13),
          Container(
            height: 199,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.separated(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 123,
                    height: 199,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: theme.colorScheme.surface,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      top: 11,
                      bottom: 9,
                      left: 7,
                      right: 18,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset('images/product1.png'),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'МОЙКА RE 130 PLUS',
                                softWrap: true,
                                style: theme.textTheme.bodyLarge,
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'Компактная мойка высокого давления',
                                softWrap: true,
                                style: theme.textTheme.bodySmall,
                              ),
                              const SizedBox(height: 7),
                              Container(
                                constraints:
                                    const BoxConstraints(minHeight: 98),
                                height: 13,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '49 990р.',
                                      softWrap: true,
                                      style:
                                          theme.textTheme.bodyLarge?.copyWith(
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                    Container(
                                      color: theme.colorScheme.primary,
                                      width: 59,
                                      height: 13,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
                itemCount: 3),
          )
        ],
      ),
    );
  }
}
