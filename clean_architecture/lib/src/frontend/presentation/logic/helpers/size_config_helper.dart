import 'dart:ui';

import '/src/frontend/presentation/logic/helpers/device_helper.dart';
import '../../../../utils/constants/double_const.dart';

class SizeConfigHelper {
  static Size sizeScreen() {
    if (DeviceHelper.isPhone) {
      return const Size(phoneWidthScreen, phoneHeightScreen);
    } else {
      return const Size(tabletWidthScreen, tabletHeightScreen);
    }
  }
}
