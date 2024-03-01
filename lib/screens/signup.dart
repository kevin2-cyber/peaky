import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>
  with TickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Sign Up'),
            titleTextStyle: GoogleFonts.workSans(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              tabs: const [
                Tab(text: 'Email',),
                Tab(text: 'Phone Number',)
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              const RegisterWithEmail(),
              Container(
                color: Colors.pink,
              ),
            ],
          ),
        ),
    );
  }
}

class RegisterWithEmail extends StatelessWidget {
  const RegisterWithEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('EMAIL'),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail, color: AppConstants.kColorOnPrimary,),
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: AppConstants.kColorPrimary)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: AppConstants.kColorPrimaryContainer)
                ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('PASSWORD'),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock, color: AppConstants.kColorOnPrimary,),
              hintText: 'Enter your password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: AppConstants.kColorPrimary)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: AppConstants.kColorPrimaryContainer)
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Spacer(),
              Text('Forgot Password?'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: false,
                  onChanged: (name) {}
              ),
              const Text('Remember me'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {},
            height: 50,
            minWidth: MediaQuery.of(context).size.width * 0.9,
            color: AppConstants.kColorPrimaryContainer,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            textColor: Colors.white,
            child: const Text('Explore Now'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(child: Text('Or continue with')),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {},
                height: 50,
                minWidth: 150,
                color: AppConstants.kColorPrimary,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  children: [
                    Image.asset(AppConstants.google, height: 24, width: 24, fit: BoxFit.fill,),
                    const SizedBox(width: 10,),
                    const Text(
                        'Sign up',
                      style: TextStyle(
                        color: AppConstants.kColorOnPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                height: 50,
                minWidth: 150,
                elevation: 0,
                color: AppConstants.kColorPrimary,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: const Row(
                  children: [
                    Icon(Icons.apple),
                    SizedBox(width: 10,),
                    Text(
                        'Sign up',
                      style: TextStyle(
                        color: AppConstants.kColorOnPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Already have an account? ',
                      style: TextStyle(
                        color: AppConstants.kColorOnPrimary,
                      ),
                    ),
                    TextSpan(
                        text: 'Sign In',
                      style: TextStyle(
                        color: AppConstants.kColorPrimaryContainer,
                      )
                    ),
                  ]
                ),
            ),
          ),
        ],
      ),
    );
  }
}
