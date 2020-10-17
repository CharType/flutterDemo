import 'package:food_court/ui/shared/size_fit.dart';

extension IntFit on int {
  double get px {
    return CQSizeFit.setPx(this.toDouble());
  }

  double get rpx {
    return CQSizeFit.setRpx(this.toDouble());
  }
}