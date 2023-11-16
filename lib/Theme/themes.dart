import 'package:flutter/material.dart';
import 'package:pdv_bistro2/Theme/color_schemes.dart';
import 'package:pdv_bistro2/Theme/custom_color_scheme.dart';

// *LIGHT THEME GLOBAL
final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorSchemes.lightColorScheme,

  // * Appbar TEMA

  appBarTheme: AppBarTheme(
    backgroundColor: ColorSchemes.lightColorScheme.onPrimary,
    foregroundColor: ColorSchemes.lightColorScheme.onPrimary,
  ),

  // BOTTOM NAVIGATION THEME
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ColorSchemes.lightColorScheme.primary,
    selectedItemColor: ColorSchemes.lightColorScheme.onPrimary,
  ),

  // CARD TEMA
  cardTheme: CardTheme(
    color: ColorSchemes.lightColorScheme.surfaceVariant,
    elevation: 5,
  ),
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 24,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: customColorScheme.inverseSurface, // Cor de texto card Nome e telefone
    ),
    headlineLarge: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: customColorScheme.inverseSurface, // Cor de texto card Nome e telefone
    ),
    headlineMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400,
      color: customColorScheme.inverseSurface, // Cor de texto card Atrasado
    ),
    headlineSmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w300,
      color: customColorScheme.onSurface, // Cor de texto card letra A
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: customColorScheme.tertiary, // Cor de texto Consumo e Detalhe Item
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400,
      color: customColorScheme.tertiary, // Cor de texto dentro dos cards produto, qtd. etc
    ),
    // Adicione mais estilos conforme necessário
  ),
  hintColor: ColorSchemes.lightColorScheme.onSurface,
);

// -----------------------------------------------------------------//

// *DARK MODE THEME GLOBAL
final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorSchemes.darkColorScheme,

  // Appbar TEMA
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF303030), // Cor de fundo mais escura
    foregroundColor: ColorSchemes.darkColorScheme.primary,
  ),

  // BOTTOM NAVIGATION THEME
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ColorSchemes.darkColorScheme.primary,
    selectedItemColor: const Color(0xFFFFFFFF),
    // Cor de texto nos botões mais clara
  ),

// CARD TEMA
  // CARD TEMA
  cardTheme: CardTheme(
    color: customDarkColorScheme.outline,
    elevation: 5,
  ),
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 24,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: customColorScheme.inverseSurface, // Cor de texto card Nome e telefone
    ),
    headlineLarge: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: customColorScheme.onErrorContainer, // Cor de texto card Nome e telefone
    ),
    headlineMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400,
      color: customColorScheme.inverseSurface, // Cor de texto card Atrasado
    ),
    headlineSmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w300,
      color: customColorScheme.onPrimary, // Cor de texto card letra A
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600,
      color: customColorScheme.onBackground, // Cor de texto Consumo e Detalhe Item
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w400,
      color: customColorScheme.outlineVariant, // Cor de texto dentro dos cards produto, qtd. etc
    ),
    // Adicione mais estilos conforme necessário
  ),
  hintColor: ColorSchemes.darkColorScheme.primary,
);
