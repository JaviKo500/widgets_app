import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

// colors list immutable
final colorsListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider<int>((ref) => 0);
