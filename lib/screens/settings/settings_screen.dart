import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _enableNotifications = true;
  String _name = 'Дмитрий Комарницкий';
  String _phone = '+7-928-555-35-350';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: ColoredBox(
          color: theme.colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.only(top: 36, left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                context.router.maybePop();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageIcon(
                    const AssetImage('icons/arrow_left.png'),
                    size: 15,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Вернуться в профиль',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontSize: 10,
                      height: 10 / 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 19,
          left: 20,
          right: 20,
          bottom: 28,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Настроить профиль',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 19),
                TextFormField(
                  initialValue: _name,
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 18,
                    height: 14 / 18,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        width: 0.5,
                      ),
                    ),
                    labelText: 'Имя',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: theme.textTheme.labelMedium?.copyWith(
                      color: const Color.fromRGBO(140, 140, 140, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                TextFormField(
                  initialValue: _phone,
                  onChanged: (value) {
                    setState(() {
                      _phone = value;
                    });
                  },
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 18,
                    height: 14 / 18,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(186, 186, 186, 1),
                        width: 0.5,
                      ),
                    ),
                    labelText: 'Мобильный номер телефона',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: theme.textTheme.labelMedium?.copyWith(
                      color: const Color.fromRGBO(140, 140, 140, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                Container(
                  height: 45,
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 9,
                    left: 9,
                    right: 19,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(237, 237, 237, 1),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Уведомления',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontSize: 18,
                          height: 18 / 14,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 24,
                        child: CupertinoSwitch(
                          thumbColor: theme.colorScheme.surface,
                          activeColor: theme.colorScheme.primary,
                          value: _enableNotifications,
                          onChanged: (value) {
                            setState(() {
                              _enableNotifications = !_enableNotifications;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                context.router.maybePop();
              },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.colorScheme.primary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Text(
                  'Сохранить',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.surface,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
