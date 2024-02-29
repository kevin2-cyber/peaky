import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peaky/util/constants.dart';
import '../app.dart';

void main() {

  ErrorWidget.builder = (FlutterErrorDetails details) => Material(
    color: AppConstants.kColorPrimary,
    child: Center(
      child: Text(
        details.exception.toString(),
        textAlign: TextAlign.start,
        style: GoogleFonts.workSans(
          color: AppConstants.kColorOnPrimary,
          fontWeight: FontWeight.w300,
          fontSize: 18,
        ),
      ),
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
