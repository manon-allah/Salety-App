import 'package:flutter/material.dart';
import '../../../auth/presentation/pages/log_in_page.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_row_logo.dart';
import '../../../auth/presentation/pages/sign_up_page.dart';


class CustomFirstPageBody extends StatelessWidget {
  const CustomFirstPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            bottom: -75,
            right: -60,
            child: Opacity(
              opacity: .1,
              child: Image.asset(
                'assets/logo.png',
                width: 270,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomRowLogo(),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    CustomButton(
                      colorCont: Colors.red.shade700,
                      text: 'تسجيل الدخول',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LogInPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      colorCont: const Color(0xff2ac17e),
                      text: 'انشئ حساب',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
