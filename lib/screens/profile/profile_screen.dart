import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stihl_store/router/app_router.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 190),
            padding: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(28)),
              color: theme.colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(1, 1),
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.25),
                ),
              ],
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 57.5,
                  child: Image.asset('images/avatar.png'),
                ),
                const SizedBox(height: 18),
                Text(
                  'Дмитрий Комарницкий',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 22),
                    Text(
                      'id 847122',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const ImageIcon(
                      AssetImage('icons/copy.png'),
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.push(const NotificationsRoute());
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ImageIcon(
                        const AssetImage('icons/bell.png'),
                        color: theme.colorScheme.primary,
                        size: 30,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Уведомления',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          height: 14 / 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13),
                Divider(
                  color: theme.colorScheme.primary.withOpacity(0.38),
                  thickness: 0.5,
                  height: 0,
                ),
                const SizedBox(height: 18),
                GestureDetector(
                  onTap: () {
                    context.router.push(const SettingsRoute());
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ImageIcon(
                        const AssetImage('icons/filters_2x.png'),
                        color: theme.colorScheme.primary,
                        size: 30,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Настроить профиль',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          height: 14 / 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImageIcon(
                      const AssetImage('icons/cart_2x.png'),
                      color: theme.colorScheme.primary,
                      size: 30,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'История покупок',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        height: 14 / 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                GestureDetector(
                  onTap: () {
                    context.router.push(const SelectAddressRoute());
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ImageIcon(
                        const AssetImage('icons/location_2x.png'),
                        color: theme.colorScheme.primary,
                        size: 30,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Адрес',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          height: 14 / 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13),
                Divider(
                  color: theme.colorScheme.primary.withOpacity(0.38),
                  thickness: 0.5,
                  height: 0,
                ),
                const SizedBox(height: 18),
                Text(
                  'Выйти',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    height: 14 / 15,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
