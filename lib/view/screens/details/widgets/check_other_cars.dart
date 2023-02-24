import '/index.dart';


Widget checkOtherCar() => Container(
      padding: EdgeInsetsDirectional.all(getProportionateScreenHeight(6)),
      margin: EdgeInsetsDirectional.only(top: getProportionateScreenHeight(10)),
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: AppColors.blue.withOpacity(0.6),
        borderRadius: borderRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          TextWidget(text: 'كل السيارات'),
          TextWidget(text: 'يوكن للسيارات المتعددة'),
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
