import 'package:flutter/material.dart';
import 'package:pdv_bistro2/Theme/color_schemes.dart';

class CustomColorScheme extends ColorScheme {
  final Color primaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixed;
  final Color onPrimaryFixedVariant;
  final Color secondaryPrimaryFixed;
  final Color secondaryPrimaryFixedDim;
  final Color onSecondaryFixed;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color tertiaryPrimaryFixedDim;
  final Color onTertiaryFixed;
  final Color onTertiaryFixedVariant;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;

  CustomColorScheme({
    required this.primaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixed,
    required this.onPrimaryFixedVariant,
    required this.secondaryPrimaryFixed,
    required this.secondaryPrimaryFixedDim,
    required this.onSecondaryFixed,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.tertiaryPrimaryFixedDim,
    required this.onTertiaryFixed,
    required this.onTertiaryFixedVariant,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
    required ColorScheme baseColorScheme,
  }) : super(
          brightness: baseColorScheme.brightness,
          primary: baseColorScheme.primary,
          secondary: baseColorScheme.secondary,
          tertiary: baseColorScheme.tertiary,
          error: baseColorScheme.error,
          onPrimary: baseColorScheme.onPrimary,
          onSecondary: baseColorScheme.onSecondary,
          onTertiary: baseColorScheme.onTertiary,
          onError: baseColorScheme.onError,
          primaryContainer: baseColorScheme.primaryContainer,
          secondaryContainer: baseColorScheme.secondaryContainer,
          tertiaryContainer: baseColorScheme.tertiaryContainer,
          errorContainer: baseColorScheme.errorContainer,
          onPrimaryContainer: baseColorScheme.onPrimaryContainer,
          onSecondaryContainer: baseColorScheme.onSecondaryContainer,
          onTertiaryContainer: baseColorScheme.onTertiaryContainer,
          onErrorContainer: baseColorScheme.onErrorContainer,
          background: baseColorScheme.background,
          onBackground: baseColorScheme.onBackground,
          surface: baseColorScheme.surface,
          onSurface: baseColorScheme.onSurface,
          surfaceVariant: baseColorScheme.surfaceVariant,
          onSurfaceVariant: baseColorScheme.onSurfaceVariant,
          outline: baseColorScheme.outline,
          onInverseSurface: baseColorScheme.onInverseSurface,
          inverseSurface: baseColorScheme.inverseSurface,
          inversePrimary: baseColorScheme.inversePrimary,
          shadow: baseColorScheme.shadow,
          surfaceTint: baseColorScheme.surfaceTint,
          outlineVariant: baseColorScheme.outlineVariant,
          scrim: baseColorScheme.scrim,
        );
}

// Instância da classe personalizada "CustomColorScheme" com esquema de cores personalizado para tema claro
CustomColorScheme customColorScheme = CustomColorScheme(
  primaryFixed: const Color(0xFF97F0FF), // Cor primária fixa para o tema claro
  primaryFixedDim: const Color(0xFF4FD8EB), // Cor primária fixa com atenuação para o tema claro
  onPrimaryFixed: const Color(0xFF001F24), // Cor do texto sobre a cor primária fixa para o tema claro
  onPrimaryFixedVariant: const Color(0xFF004F58), // Cor do texto sobre a variante da cor primária fixa para o tema claro

  secondaryPrimaryFixed: const Color(0xFFCDE7EC), // Cor secundária primária fixa para o tema claro
  secondaryPrimaryFixedDim: const Color(0xFFB1CBD0), // Cor secundária primária fixa com atenuação para o tema claro
  onSecondaryFixed: const Color(0xFF051F23), // Cor do texto sobre a variante da cor secundária fixa para o tema claro
  onSecondaryFixedVariant: const Color(0xFF334B4F), // Cor do texto sobre a variante da cor secundária primária fixa para o tema claro

  tertiaryFixed: const Color(0xFFDAE2FF), // Cor terciária fixa para o tema claro
  tertiaryPrimaryFixedDim: const Color(0xFFBAC6EA), // Cor terciária primária fixa com atenuação para o tema claro
  onTertiaryFixed: const Color(0xFF0E1B37), // Cor do texto sobre a variante da cor terciária primária fixa para o tema claro
  onTertiaryFixedVariant: const Color(0xFF3B4664), // Cor do texto sobre a variante da cor terciária fixa para o tema claro

  surfaceContainerLowest: const Color(0xFFFFFFFF), // Cor para o container de superfície mais baixo no tema claro
  surfaceContainerLow: const Color(0xFFF2F4F4), // Cor para o container de superfície baixo no tema claro
  surfaceContainer: const Color(0xFFECEEEF), // Cor para o container de superfície no tema claro
  surfaceContainerHigh: const Color(0xFFE6E8E9), // Cor para o container de superfície alto no tema claro
  surfaceContainerHighest: const Color(0xFFE1E3E3), // Cor para o container de superfície mais alto no tema claro
  baseColorScheme: ColorSchemes.lightColorScheme, // Esquema de cores base para o tema claro
);

// Instância da classe personalizada "CustomColorScheme" com esquema de cores personalizado para tema escuro
CustomColorScheme customDarkColorScheme = CustomColorScheme(
  primaryFixed: const Color(0xFF97F0FF), // Cor primária fixa para o tema escuro
  primaryFixedDim: const Color(0xFF4FD8EB), // Cor primária fixa com atenuação para o tema escuro
  onPrimaryFixed: const Color(0xFF006874), // Cor do texto sobre a cor primária fixa para o tema escuro
  onPrimaryFixedVariant: const Color(0xFF004F58), // Cor do texto sobre a variante da cor primária fixa para o tema escuro

  secondaryPrimaryFixed: const Color(0xFFCDE7EC), // Cor secundária primária fixa para o tema escuro
  secondaryPrimaryFixedDim: const Color(0xFFB1CBD0), // Cor secundária primária fixa com atenuação para o tema escuro
  onSecondaryFixed: const Color(0xFF051F23), // Cor do texto sobre a variante da cor secundária fixa para o tema escuro
  onSecondaryFixedVariant: const Color(0xFF334B4F), // Cor do texto sobre a variante da cor secundária primária fixa para o tema escuro

  tertiaryFixed: const Color(0xFFDAE2FF), // Cor terciária fixa para o tema escuro
  tertiaryPrimaryFixedDim: const Color(0xFFBAC6EA), // Cor terciária primária fixa com atenuação para o tema escuro
  onTertiaryFixed: const Color(0xFF0E1B37), // Cor do texto sobre a variante da cor terciária primária fixa para o tema escuro
  onTertiaryFixedVariant: const Color(0xFF3B4664), // Cor do texto sobre a variante da cor terciária fixa para o tema escuro

  surfaceContainerLowest: const Color(0xFF0B0F0F), // Cor para o container de superfície mais baixo no tema escuro
  surfaceContainerLow: const Color(0xFF191C1D), // Cor para o container de superfície baixo no tema escuro
  surfaceContainer: const Color(0xFF1D2021), // Cor para o container de superfície no tema escuro
  surfaceContainerHigh: const Color(0xFF272B2B), // Cor para o container de superfície alto no tema escuro
  surfaceContainerHighest: const Color(0xFF323536), // Cor para o container de superfície mais alto no tema escuro
  baseColorScheme: ColorSchemes.darkColorScheme, // Esquema de cores base para o tema escuro
);
