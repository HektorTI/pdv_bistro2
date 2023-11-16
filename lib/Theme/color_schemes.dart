import 'package:flutter/material.dart';

class ColorSchemes {
  // ******** Cores para o tema claro ********** 🎨

  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF006874), // Cor primária
    secondary: Color(0xFFC4C4C4), // Cor secundária
    tertiary: Color(0xFF525E7D), // Cor terciária
    error: Color(0xFFBA1A1A), // Cor de erro
    onPrimary: Color(0xFFFFFFFF), // Texto na cor primária
    onSecondary: Color(0xFFFFFFFF), // Texto na cor secundária
    onTertiary: Color(0xFFFFFFFF), // Texto na cor terciária
    onError: Color(0xFFFFFFFF), //Texto na cor de erro
    primaryContainer: Color(0xFF97F0FF), //Fundo de elementos com cor primária
    secondaryContainer: Color(0xFFCDE7EC), //Fundo de elementos com cor secundária
    tertiaryContainer: Color(0xFFDAE2FF), // Fundo de elementos com cor terciária
    errorContainer: Color(0xFFFFDAD6), // Fundo de elementos de erro
    onPrimaryContainer: Color(0xFF001F24), // Texto em elementos com fundo de cor primária
    onSecondaryContainer: Color(0xFF051F23), // Texto em elementos com fundo de cor secundária
    onTertiaryContainer: Color(0xFF0E1B37), // Texto em elementos com fundo de cor terciária
    onErrorContainer: Color(0xFF410002), // Texto em elementos de erro

    // -********************************

    background: Color(0xFFF8FAFA), // Fundo do aplicativo
    onBackground: Color(0xFF000000), // Texto no fundo do aplicativo

    // -********************************
    // restante das cores no custom_color_scheme.dart
    surfaceVariant: Color(0xFFD8DADB), // !Surface DIM
    surface: Color(0xFFF8FAFA), // !Surface
    surfaceTint: Color(0xFFF8FAFA), // !Surface Bright

    // -********************************

    onSurface: Color(0xFF191C1D), // Texto na superfície do aplicativo
    onSurfaceVariant: Color(0xFF3F484A), // Texto na variante da superfície
    outline: Color(0xFF6F797A), // Cor da borda
    outlineVariant: Color(0xFFBFC8CA), // Variante da borda

    // -********************************

    inverseSurface: Color(0xFF2E3132), // Superfície inversa
    onInverseSurface: Color(0xFFCCCCCC), // Texto na superfície inversa
    inversePrimary: Color(0xFF4FD8EB), // Cor primária inversa
    scrim: Color(0xFF000000), // Cor da tela de proteção
    shadow: Color(0xFF000000), // Cor da sombra
  );

  // ******** Cores para o tema escuro ******** 🎨

  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF4FD8EB), // Cor primária
    secondary: Color(0xFFB1CBD0), // Cor secundária
    tertiary: Color(0xFFBAC6EA), // Cor terciária
    error: Color(0xFFFFB4AB), // Cor de erro
    onPrimary: Color(0xFF00363D), // Texto na cor primária
    onSecondary: Color(0xFF1C3438), // Texto na cor secundária
    onTertiary: Color(0xFF24304D), // Texto na cor terciária
    onError: Color(0xFF690005), //Texto na cor de erro
    primaryContainer: Color(0xFF004F58), //Fundo de elementos com cor primária
    secondaryContainer: Color(0xFF334B4F), //Fundo de elementos com cor secundária
    tertiaryContainer: Color(0xFF3B4664), // Fundo de elementos com cor terciária
    errorContainer: Color(0xFF93000A), // Fundo de elementos de erro
    onPrimaryContainer: Color(0xFF97F0FF), // Texto em elementos com fundo de cor primária
    onSecondaryContainer: Color(0xFFCDE7EC), // Texto em elementos com fundo de cor secundária
    onTertiaryContainer: Color(0xFFDAE2FF), // Texto em elementos com fundo de cor terciária
    onErrorContainer: Color(0xFFFFDAD6), // Texto em elementos de erro

    // -********************************

    background: Color(0xFF111111), // Fundo do aplicativo
    onBackground: Color(0xFFFFFFFF), // Texto no fundo do aplicativo

    // -********************************

    // restante das cores no custom_color_scheme.dart
    surfaceVariant: Color(0xFF101415), // !Surface DIM
    surface: Color(0xFF101415), // !Surface
    surfaceTint: Color(0xFF363A3A), // !Surface Bright

    // -********************************

    onSurface: Color(0xFFC4C7C7), // Texto na superfície do aplicativo
    onSurfaceVariant: Color(0xFFBFC8CA), // Texto na variante da superfície
    outline: Color(0xFF899294), // Cor da borda
    outlineVariant: Color(0xFF3F484A), // Variante da borda

    // -********************************
    inverseSurface: Color(0xFFE1E3E3), // Superfície inversa
    onInverseSurface: Color(0xFFE1E3E3), // Texto na superfície inversa
    inversePrimary: Color(0xFF006874), // Cor primária inversa
    scrim: Color(0xFF000000), // Cor da tela de proteção
    shadow: Color(0xFF000000), // Cor da sombra
  );

  // Métodos para obter os esquemas de cores
  static ColorScheme get lightColorScheme => _lightColorScheme;
  static ColorScheme get darkColorScheme => _darkColorScheme;
}
