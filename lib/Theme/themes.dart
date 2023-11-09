import 'package:flutter/material.dart';
import 'package:pdv_bistro2/Theme/color_schemes.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorSchemes.lightColorScheme,
  appBarTheme: AppBarTheme(
    backgroundColor: ColorSchemes.lightColorScheme.primary,
    foregroundColor: ColorSchemes.lightColorScheme.onPrimary,
    titleTextStyle: TextStyle(
      color: ColorSchemes.lightColorScheme.onPrimary,
      fontSize: 18,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ColorSchemes.lightColorScheme.primary,
    selectedItemColor: ColorSchemes.lightColorScheme.onPrimary,
  ),
  cardTheme: CardTheme(
    color: ColorSchemes.lightColorScheme.surface,
    elevation: 2,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: ColorSchemes.lightColorScheme.onPrimary,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: ColorSchemes.lightColorScheme.onPrimary,
    ),
  ),
  hintColor: ColorSchemes.lightColorScheme.primary,
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorSchemes.darkColorScheme,
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF333333), // Cor de fundo mais escura
    foregroundColor: ColorSchemes.darkColorScheme.onPrimary,
    titleTextStyle: TextStyle(
      color: ColorSchemes.darkColorScheme.onPrimary,
      fontSize: 18,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ColorSchemes.darkColorScheme.primary,
    selectedItemColor:
        const Color(0xFFFFFFFF), // Cor de texto nos botões mais clara
  ),
  cardTheme: const CardTheme(
    color: Color(0xFF222222), // Cor de texto mais escura
    elevation: 2,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Color(0xFFFFFFFF), // Cor de texto mais clara
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Color(0xFFFFFFFF), // Cor de texto mais clara
    ),
  ),
  hintColor: ColorSchemes.darkColorScheme.primary,
);
