import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/configs/colors.dart';
import 'package:shop_app_firebase/cubit/app_cubit.dart';
import 'package:shop_app_firebase/cubit/app_cutbit_states.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FocusNode _passwordFocusNode = FocusNode();
  bool _obscureText = true;
  String _emailAddress = '';
  String _password = '';
  final _formKey = GlobalKey<FormState>();
  void _submitForm() {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();
    if (isValid==true) {
      _formKey.currentState?.save();
    }
  }
  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, CubitStates>(builder: (context, state) {
      if (state is LogInState) {
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80),
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      //  color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://image.flaticon.com/icons/png/128/869/869636.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextFormField(
                              key: ValueKey('email'),
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => FocusScope.of(context)
                                  .requestFocus(_passwordFocusNode),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  border: const UnderlineInputBorder(),
                                  filled: true,
                                  prefixIcon: Icon(Icons.email),
                                  labelText: 'Email Address',
                                  fillColor: Theme.of(context).backgroundColor),
                              onSaved: (value) {
                                _emailAddress = value!;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextFormField(
                              key: ValueKey('Password'),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 7) {
                                  return 'Please enter a valid Password';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              focusNode: _passwordFocusNode,
                              decoration: InputDecoration(
                                  border: const UnderlineInputBorder(),
                                  filled: true,
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                    child: Icon(_obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                  labelText: 'Password',
                                  fillColor: Theme.of(context).backgroundColor),
                              onSaved: (value) {
                                _password = value!;
                              },
                              obscureText: _obscureText,
                              onEditingComplete: _submitForm,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 10),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                          side: BorderSide(
                                              color: AppColors.backgroundColor),
                                        ),
                                      )),
                                  onPressed: _submitForm,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Login',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.person,
                                        size: 18,
                                      )
                                    ],
                                  )),
                              SizedBox(width: 20),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            ],
          ),
        );
      } else {
        return Container();
      }
    });
  }
}
