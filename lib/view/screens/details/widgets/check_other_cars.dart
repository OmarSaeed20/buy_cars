import '/index.dart';

Widget checkOtherCar() => Container(
      padding: EdgeInsetsDirectional.all(getProportionateScreenHeight(6)),
      margin: EdgeInsetsDirectional.only(top: getProportionateScreenHeight(10)),
      width: Dimensions.screenWidth,
      decoration: BoxDecoration(
        color: AppColors.blueLight.withOpacity(0.6),
        borderRadius: borderRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          TextWidget('كل السيارات'),
          TextWidget('يوكن للسيارات المتعددة'),
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.white,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(Images.car),
            ),
          ),
        ],
      ),
    );
