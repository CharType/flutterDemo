import 'package:food_court/ui/shared/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return CQSizeFit.setPx(this);
  }

  double get rpx {
    return CQSizeFit.setRpx(this);
  }
}

