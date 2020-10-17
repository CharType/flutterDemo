import 'package:flutter/material.dart';
import 'package:food_court/core/model/meal_model.dart';
import 'package:food_court/core/extension/int_extension.dart';
import 'package:food_court/ui/pages/detail/detail.dart';
import 'package:food_court/ui/widgets/operation_item.dart';
import 'package:provider/provider.dart';

class CQMealItem extends StatelessWidget {
  final cardRadius = 12.px;
  final CQMealModel _mealModel;
  CQMealItem(this._mealModel);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(cardRadius)),
        child: Column(
          children: <Widget>[
            buildBasicInfo(context),
            buildOperationInfo(context),
          ],
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(CQDetailScreen.routeName, arguments: _mealModel);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(this.cardRadius),
            topRight:Radius.circular(this.cardRadius),
          ),
          child: Image.network(_mealModel.imageUrl,width: double.infinity,height: 250.px,fit: BoxFit.cover,),
        ),
        Positioned(
          right: 10.px,
          bottom: 10.px,
          child: Container(
            width: 300.px,
            padding: EdgeInsets.symmetric(vertical: 5.px,horizontal: 10.px),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6.px)
            ),
            child: Text(_mealModel.title,style: Theme.of(context).textTheme.display3.copyWith(color: Colors.white),),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(5.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CQOperationItem(Icon(Icons.schedule), "${_mealModel.duration}分钟"),
          CQOperationItem(Icon(Icons.restaurant), "${_mealModel.complexStr}"),
        ],
      ),
    );
  }
}

Widget buoldFavorItem() {
  return Consumer();
}
