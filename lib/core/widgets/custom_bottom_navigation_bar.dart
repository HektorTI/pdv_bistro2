import 'package:flutter/material.dart';
import 'package:pdv_bistro2/Theme/custom_color_scheme.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<IconData> icons;
  final List<String> labels;
  final List<Function> onPressed;

  const CustomBottomNavigationBar({super.key, required this.icons, required this.labels, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: customColorScheme.surfaceContainerHigh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(icons.length, (index) {
          return Column(
            children: [
              IconButton(
                icon: Icon(
                  icons[index],
                  color: customColorScheme.onSurface,
                ),
                onPressed: () {
                  onPressed[index]();
                },
              ),
              Text(
                labels[index],
                style: TextStyle(
                  color: customColorScheme.onSurface,
                  fontSize: 10,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
