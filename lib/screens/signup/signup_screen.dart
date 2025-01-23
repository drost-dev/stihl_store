import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:stihl_store/bloc/auth/auth_bloc.dart';
import 'package:stihl_store/router/app_router.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _authBloc = GetIt.I<AuthBloc>();
  bool _isPasswordHidden = true;
  String _name = '';
  String _surname = '';
  String _login = '';
  String _password = '';
  String _phone = '';

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
          'Регистрация',
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
                top: 30,
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    constraints: const BoxConstraints(minHeight: 340),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 29,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _name = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Имя',
                              hintStyle: theme.textTheme.headlineMedium,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 45),
                        SizedBox(
                          height: 29,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _surname = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Фамилия',
                              hintStyle: theme.textTheme.headlineMedium,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 45),
                        SizedBox(
                          height: 29,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _login = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Придумайте логин',
                              hintStyle: theme.textTheme.headlineMedium,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 45),
                        SizedBox(
                          height: 29,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _password = value;
                              });
                            },
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
                        const SizedBox(height: 45),
                        SizedBox(
                          height: 29,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _phone = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Номер мобильного телефона',
                              hintStyle: theme.textTheme.headlineMedium,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 45),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: ElevatedButton(
                            onPressed: state is AuthLoading
                                ? null
                                : () {
                                    _authBloc.add(AuthSignUp(
                                      name: _name,
                                      surname: _surname,
                                      login: _login,
                                      password: _password,
                                      email: _phone,
                                    ));
                                  },
                            style: TextButton.styleFrom(
                              backgroundColor: theme.colorScheme.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            child: Text(
                              'Зарегистироваться',
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {
          switch (state) {
            case AuthWaitingSignupConfirmation():
              context.router.push(OtpRoute(phone: _phone, signup: true));
              break;
            case AuthError():
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
              break;
          }
        },
      ),
    );
  }
}
