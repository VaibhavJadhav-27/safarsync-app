import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safarsync_app/config/colors.dart';
import 'package:safarsync_app/config/route_names.dart';
import 'package:safarsync_app/config/text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            // 🔵 Top Curved Background
            Container(
              height: 280,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
            ),

            // 🔽 Scrollable Content
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 40),

                  // ✈ Logo
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.flight_takeoff,
                      color: AppColors.primary,
                      size: 36,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text("SafarSync", style: AppTextStyles.appTitle),

                  const SizedBox(height: 4),

                  const Text(
                    "Plan together. Travel better.",
                    style: AppTextStyles.tagline,
                  ),

                  const SizedBox(height: 40),

                  // 🧾 Elevated Login Card
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 24,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            "Welcome Back",
                            style: AppTextStyles.heading,
                          ),
                        ),

                        const SizedBox(height: 6),

                        const Center(
                          child: Text(
                            "Enter your email to sign in to your account",
                            textAlign: TextAlign.center,
                            style: AppTextStyles.subtitle,
                          ),
                        ),

                        const SizedBox(height: 24),

                        const Text("Email", style: AppTextStyles.label),
                        const SizedBox(height: 6),

                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: "m@example.com",
                            // filled: true,
                            // fillColor: AppColors.inputFill,
                            // contentPadding: const EdgeInsets.symmetric(
                            //   horizontal: 16,
                            //   vertical: 14,
                            // ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(12),
                            //   borderSide: BorderSide.none,
                            // ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        const Text("Password", style: AppTextStyles.label),
                        const SizedBox(height: 6),

                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            // fillColor: AppColors.inputFill,
                            // contentPadding: const EdgeInsets.symmetric(
                            //   horizontal: 16,
                            //   vertical: 14,
                            // ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(12),
                            //   borderSide: BorderSide.none,
                            // ),
                          ),
                        ),

                        const SizedBox(height: 24),

                        // 🔵 Sign In Button
                        // SizedBox(
                        //   width: double.infinity,
                        //   height: 48,
                        // child:
                        ElevatedButton(
                          // style: ElevatedButton.styleFrom(
                          //   backgroundColor: AppColors.primary,
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(12),
                          //   ),
                          // ),
                          onPressed: () {
                            context.go(RouteNames.home);
                          },
                          child: const Text("Sign In"),
                        ),

                        // ),
                        const SizedBox(height: 16),

                        Row(
                          children: const [
                            Expanded(child: Divider()),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "OR CONTINUE WITH",
                                style: AppTextStyles.caption,
                              ),
                            ),
                            Expanded(child: Divider()),
                          ],
                        ),

                        const SizedBox(height: 16),

                        // Google Button
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: OutlinedButton.icon(
                            icon: const Icon(
                              Icons.g_mobiledata,
                              color: Colors.black,
                            ),
                            label: const Text(
                              "Google",
                              style: AppTextStyles.buttonSecondary,
                            ),
                            // style: OutlinedButton.styleFrom(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(12),
                            //   ),
                            // ),
                            onPressed: () {},
                          ),
                        ),

                        const SizedBox(height: 20),

                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text.rich(
                              TextSpan(
                                text: "Don't have an account? ",
                                style: AppTextStyles.bodySecondary,
                                children: [
                                  TextSpan(
                                    text: "Sign up",
                                    style: AppTextStyles.link,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
