import 'package:flutter/material.dart';

class AppColors {
  // Primary — Pink Modern
  static const Color primary = Color(0xFFEC4899); // pink medium
  static const Color primaryLight = Color(0xFFF472B6); // pink light
  static const Color primaryDark = Color(0xFFBE185D); // pink dark
  static const Color primarySurface = Color(0xFFFDF2F8);
  static const Color primaryBorder = Color(0xFFFBCFE8);

  // Semantic
  static const Color green = Color(0xFF10B981);
  static const Color greenSurface = Color(0xFFECFDF5);
  static const Color amber = Color(0xFFF59E0B);
  static const Color amberSurface = Color(0xFFFFFBEB);
  static const Color red = Color(0xFFEF4444);
  static const Color redSurface = Color(0xFFFEF2F2);
  static const Color violet = Color(0xFF8B5CF6);
  static const Color violetSurface = Color(0xFFF5F3FF);

  // Neutral
  static const Color ink = Color(0xFF273338);
  static const Color slate600 = Color(0xFF3D5055);
  static const Color slate500 = Color(0xFF5E7075);
  static const Color slate400 = Color(0xFF8EA4A8);
  static const Color slate300 = Color(0xFFBDCDD0);
  static const Color line = Color(0xFFE2EAEB);
  static const Color line2 = Color(0xFFF0F4F4);
  static const Color bg = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);

  // Gradient header
  static const LinearGradient headerGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.55, 1.0],
    colors: [primary, primaryDark, Color(0xFF831843)], // deep pink/burgundy
  );

  // Gradient primer
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.55, 1.0],
    colors: [primaryLight, primary, primaryDark],
  );

  // Shadows
  static List<BoxShadow> shadowCard = [
    const BoxShadow(
      color: Color(0x14273338),
      blurRadius: 24,
      spreadRadius: 0,
      offset: Offset(0, 4),
    ),
  ];
  static List<BoxShadow> shadowSoft = [
    const BoxShadow(
      color: Color(0x0A273338),
      blurRadius: 12,
      spreadRadius: 0,
      offset: Offset(0, 2),
    ),
  ];
  static List<BoxShadow> shadowPrimary = [
    const BoxShadow(
      color: Color(0x40EC4899), // pink glow
      blurRadius: 22,
      spreadRadius: 0,
      offset: Offset(0, 10),
    ),
  ];

  // Tone map
  static Map<String, List<Color>> tones = {
    'green': [greenSurface, green],
    'amber': [amberSurface, amber],
    'red': [redSurface, red],
    'violet': [violetSurface, violet],
    'slate': [line2, slate600],
    'dark': [Color(0xFFFCE7F3), primaryDark],
  };

  static List<Color> tone(String name) => tones[name] ?? tones['green']!;
}
