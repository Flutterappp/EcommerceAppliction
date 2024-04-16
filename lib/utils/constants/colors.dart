import 'package:flutter/material.dart';

class TColors{
  TColors._(); // private constructor

//App Basic Colors
  static const Color primary = Color(0xFF047BD5);//True Blue
  static const Color secondary = Color(0xFFF8E831);
  static const Color accent = Color(0xFFF7A200);

  //Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  //Gradient colors
  static const splashScren = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: 
  
  [
    
    Color(0xFFF5F7FA),
    Color(0xFFC3CFE2),
  ]);

  //Background Colors

  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //Background Contaner Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static  Color darkContainer =  const Color(0x1AFFFFFF); // 10% opacity whitete.withOpacity(0.1);
  //Button Colors
  static Color buttonPrimary = const Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  //BORDER Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //Error and Validations Colors

  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976d2);

  //Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGraey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);



 


}