import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/presentation/home_screen/pages/home_screen.dart';
import 'package:music_app/presentation/login_screen/widgets/build_media_widget.dart';
import 'package:music_app/presentation/sign_in_screen/bloc/sign_in_bloc.dart';
import 'package:music_app/presentation/sign_in_screen/bloc/sign_in_state.dart';
import 'package:music_app/domain/helpers/ui_helper.dart';
import '../../../data/resources/dimensions.dart';
import '../widgets/build_image_widget2.dart';
import '../widgets/sign_up_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final SignInBloc _bloc = SignInBloc();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: BlocProvider(
          create: (context) => _bloc,
          child: BlocListener(
            bloc: _bloc,
            listener: (context, state) {
              if (state is SignInLoading) {
                return UiHelper.showLoading(context);
              }
              if (state is SignInSuccess) {
                UiHelper.hideLoading(context);
                SchedulerBinding.instance?.addPostFrameCallback((_) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen();
                      },
                    ),
                  );
                });
              }
              if (state is SignInError) {
                UiHelper.hideLoading(context);
                WidgetsBinding.instance?.addPostFrameCallback((_) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(_bloc.errorMessage),
                  ));
                });
              }
            },
            child: Scaffold(
              backgroundColor: AppColors.black1,
              body: _buildSignIn(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignIn() {
    return SingleChildScrollView(
      child: Column(
        children: [
          BuildImageWidget2(),
          const SizedBox(
            height: 30,
          ),
          _buildSignInForm(),
          const SizedBox(
            height: 30,
          ),
          const BuildMediaWidget(),
          const SizedBox(
            height: 20,
          ),
          const SignUpWidget(),
        ],
      ),
    );
  }

  Widget _buildSignInForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            style: const TextStyle(color: AppColors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'E-mail',
              hintStyle: const TextStyle(
                color: AppColors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: AppColors.white,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: AppColors.white,
                  width: 1.0,
                ),
              ),
              labelText: 'E-mail',
              labelStyle: const TextStyle(color: AppColors.white),
              alignLabelWithHint: true,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: passwordController,
            style: const TextStyle(color: AppColors.white),
            /* obscureText: true,*/
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Pass word',
              hintStyle: const TextStyle(
                color: AppColors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: AppColors.white,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: AppColors.white,
                  width: 1.0,
                ),
              ),
              labelText: 'Pass word',
              labelStyle: const TextStyle(color: AppColors.white),
              alignLabelWithHint: true,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 56,
            width: AppDimensions.d40w,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  _bloc.signIn(
                    emailController.text.trim(),
                    passwordController.text.trim(),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: AppColors.black1,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    fixedSize: Size(AppDimensions.d40w - 4, 52)),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.orange1,
                  AppColors.orange2,
                ],
              ),
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ],
      ),
    );
  }
}
