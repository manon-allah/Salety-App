import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/functions/show_snake_bar.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_row_logo.dart';
import '../../../manager/cubit/auth_cubit.dart';
import 'custom_row_have_account.dart';
import 'custom_text_form_field.dart';


class CustomLogInBody extends StatefulWidget {
  const CustomLogInBody({super.key});

  @override
  State<CustomLogInBody> createState() => _CustomLogInBodyState();
}

class _CustomLogInBodyState extends State<CustomLogInBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(context, 'bottom_nav_bar' , (route) => false);
        } else if (state is AuthFailure) {
          showSnackbar(state.errorMessage, context);
        }
      },
      builder: (context, state) {
        final auth = context.read<AuthCubit>();
        if (state is AuthLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                const CustomRowLogo(),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        prefixIcon: const Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        labelText: 'عنوان البريد الإلكتروني',
                        obscureText: false,
                        controller: emailController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        prefixIcon: const Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        labelText: 'كلمة السر',
                        obscureText: true,
                        controller: passwordController,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const ConfirmPage(),
                            //   ),
                            // );
                          },
                          child: const Text(
                            'هل نسيت كلمة السر',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomButton(
                        colorCont: const Color(0xff2ac17e),
                        text: 'تسجيل الدخول',
                        onTap: () {
                          auth.signin(
                            emailController.text,
                            passwordController.text,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: CustomRowHaveAccount(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
