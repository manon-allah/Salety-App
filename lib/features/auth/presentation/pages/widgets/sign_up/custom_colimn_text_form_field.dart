import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/functions/show_snake_bar.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../manager/cubit/auth_cubit.dart';
import '../log_in/custom_text_form_field.dart';

class CustomColumnTextFormField extends StatefulWidget {
  const CustomColumnTextFormField({
    super.key,
  });

  @override
  State<CustomColumnTextFormField> createState() =>
      _CustomColumnTextFormFieldState();
}

class _CustomColumnTextFormFieldState extends State<CustomColumnTextFormField> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is UserCreateSuccess) {
          Navigator.pushNamedAndRemoveUntil(context, 'login', (route) => false);
        } else if (state is UserCreateError) {
          showSnackbar(state.errorMessage, context);
        }
      },
      builder: (context, state) {
        final auth = context.read<AuthCubit>();
        return Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: 'الاسم',
                controller: nameController,
                validator: (val) {
                  if (val!.isEmpty) return "Enter Your Name";
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                labelText: 'رقم الهاتف',
                obscureText: false,
                controller: phoneController,
                validator: (val) {
                  if (val!.isEmpty) return "Enter Your phone";
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                labelText: 'العنوان',
                obscureText: false,
                controller: addressController,
                validator: (val) {
                  if (val!.isEmpty) return "Enter Your address";
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                prefixIcon: const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                ),
                labelText: 'عنوان البريد الإلكتروني',
                obscureText: false,
                controller: emailController,
                validator: (val) {
                  if (val!.isEmpty) return "Enter Your Email";
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                prefixIcon: const Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.grey,
                ),
                labelText: 'كلمة السر',
                obscureText: true,
                controller: passwordController,
                validator: (val) {
                  if (val!.isEmpty) return "Enter Your password";
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                prefixIcon: const Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.grey,
                ),
                labelText: 'تأكيد كلمة السر',
                obscureText: true,
                controller: cPasswordController,
                validator: (val) {
                  if (val!.isEmpty) return "Enter Your password";
                  if (val != passwordController.text) return "Not Match";
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                colorCont: const Color(0xff2ac17e),
                text: 'اشتراك',
                onTap: () {
                  auth.registerUser(
                    emailController.text,
                    passwordController.text,
                    cPasswordController.text,
                    nameController.text,
                    phoneController.text,
                    addressController.text,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }
}
