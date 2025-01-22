import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:stihl_store/bloc/auth/auth_bloc.dart';

@RoutePage()
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _authBloc = GetIt.I<AuthBloc>();
  bool _isPasswordHidden = true;
  bool _isConfirmationPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        leading: IconButton(
          onPressed: () {
            context.router.maybePop();
          },
          icon: const ImageIcon(
            AssetImage('icons/arrow_left.png'),
            size: 30,
          ),
        ),
        title: Text(
          'Вход',
          style: theme.textTheme.displayLarge,
        ),
        centerTitle: true,
      ),
      body: BlocConsumer(
        bloc: _authBloc,
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(
                top: 52,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/logo.png'),
                  const SizedBox(height: 58),
                  Text(
                    'Вход в приложение Магазин Строитель',
                    style: theme.textTheme.labelLarge,
                  ),
                  const SizedBox(height: 9),
                  SizedBox(
                    height: 29,
                    child: TextField(
                      obscureText: _isPasswordHidden,
                      decoration: InputDecoration(
                        hintText: 'Придумайте новый пароль',
                        hintStyle: theme.textTheme.headlineMedium,
                        suffixIcon: SizedBox.square(
                          dimension: 23,
                          child: IconButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordHidden = !_isPasswordHidden;
                              });
                            },
                            icon: const ImageIcon(
                              AssetImage('icons/eye.png'),
                            ),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 29),
                  SizedBox(
                    height: 29,
                    child: TextField(
                      obscureText: _isConfirmationPasswordHidden,
                      decoration: InputDecoration(
                        hintText: 'Подтвердите пароль',
                        hintStyle: theme.textTheme.headlineMedium,
                        suffixIcon: SizedBox.square(
                          dimension: 23,
                          child: IconButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {
                              setState(() {
                                _isConfirmationPasswordHidden = !_isConfirmationPasswordHidden;
                              });
                            },
                            icon: const ImageIcon(
                              AssetImage('icons/eye.png'),
                            ),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: Text(
                        'Продолжить',
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
