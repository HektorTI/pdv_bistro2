import 'package:flutter/material.dart';

class ColorSchemes {
  // Cores para o tema claro
  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF006874), // Cor primária
    secondary: Color(0xFF006876), // Cor secundária
    tertiary: Color(0xFF355CA8), // Cor terciária
    error: Color(0xFFBA1A1A), // Cor de erro
    onPrimary: Color(0xFF001849), // Texto na cor primária
    onSecondary: Color(0xFF001849), // Texto na cor secundária
    onTertiary: Color(0xFF001849), // Texto na cor terciária
    onError: Color(0xFF001849), // Texto na cor de erro
    primaryContainer: Color(0xFFFEFBFF), // Fundo de elementos com cor primária
    secondaryContainer:
        Color(0xFFFFDAD6), // Fundo de elementos com cor secundária
    tertiaryContainer:
        Color(0xFFD9E2FF), // Fundo de elementos com cor terciária
    errorContainer: Color(0xFFFFDAD6), // Fundo de elementos de erro
    onPrimaryContainer:
        Color(0xFF001849), // Texto em elementos com fundo de cor primária
    onSecondaryContainer:
        Color(0xFF001849), // Texto em elementos com fundo de cor secundária
    onTertiaryContainer:
        Color(0xFF001849), // Texto em elementos com fundo de cor terciária
    onErrorContainer: Color(0xFF001849), // Texto em elementos de erro
    background: Color(0xFFFFFFFF), // Fundo do aplicativo
    onBackground: Color(0xFF001849), // Texto no fundo do aplicativo
    surface: Color(0xFFFFFFFF), // Superfície do aplicativo
    onSurface: Color(0xFF001849), // Texto na superfície do aplicativo
    surfaceVariant: Color(0xFFDBE4E6), // Variante da superfície
    onSurfaceVariant: Color(0xFF3F484A), // Texto na variante da superfície
    outline: Color(0xFF6F797B), // Cor da borda
    onInverseSurface: Color(0xFF001849), // Texto na superfície inversa
    inverseSurface: Color(0xFFDBE1FF), // Superfície inversa
    inversePrimary: Color(0xFF006874), // Cor primária inversa
    shadow: Color(0xFF000000), // Cor da sombra
    surfaceTint: Color(0xFF006874), // Tonalidade da superfície
    outlineVariant: Color(0xFFBFC8CA), // Variante da borda
    scrim: Color(0xFF000000), // Cor da tela de proteção
  );

  // Cores para o tema escuro
  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF000000), // Cor primária
    secondary: Color(0xFF333333), // Cor secundária
    tertiary: Color(0xFF666666), // Cor terciária
    error: Color(0xFFBA1A1A), // Cor de erro
    onPrimary: Color(0xFFCCCCCC), // Texto na cor primária
    onSecondary: Color(0xFFCCCCCC), // Texto na cor secundária
    onTertiary: Color(0xFFCCCCCC), // Texto na cor terciária
    onError: Color(0xFFFFFFFF), // Texto na cor de erro
    primaryContainer: Color(0xFF333333), // Fundo de elementos com cor primária
    secondaryContainer:
        Color(0xFF666666), // Fundo de elementos com cor secundária
    tertiaryContainer:
        Color(0xFF999999), // Fundo de elementos com cor terciária
    errorContainer: Color(0xFFBA1A1A), // Fundo de elementos de erro
    onPrimaryContainer:
        Color(0xFFCCCCCC), // Texto em elementos com fundo de cor primária
    onSecondaryContainer:
        Color(0xFFCCCCCC), // Texto em elementos com fundo de cor secundária
    onTertiaryContainer:
        Color(0xFFCCCCCC), // Texto em elementos com fundo de cor terciária
    onErrorContainer: Color(0xFFFFFFFF), // Texto em elementos de erro
    background: Color(0xFF111111), // Fundo do aplicativo
    onBackground: Color(0xFFFFFFFF), // Texto no fundo do aplicativo
    surface: Color(0xFF0E0E0E), // Superfície do aplicativo
    onSurface: Color(0xFF888888), // Texto na superfície do aplicativo
    surfaceVariant: Color(0xFF222222), // Variante da superfície
    onSurfaceVariant: Color(0xFFCCCCCC), // Texto na variante da superfície
    outline: Color(0xFF333333), // Cor da borda
    onInverseSurface: Color(0xFFCCCCCC), // Texto na superfície inversa
    inverseSurface: Color(0xFF111111), // Superfície inversa
    inversePrimary: Color(0xFF1E90FF), // Cor primária inversa
    shadow: Color(0xFF000000), // Cor da sombra
    surfaceTint: Color(0xFF000000), // Tonalidade da superfície
    outlineVariant: Color(0xFF444444), // Variante da borda
    scrim: Color(0xFF000000), // Cor da tela de proteção
  );

  // Métodos para obter os esquemas de cores
  static ColorScheme get lightColorScheme => _lightColorScheme;
  static ColorScheme get darkColorScheme => _darkColorScheme;
}
