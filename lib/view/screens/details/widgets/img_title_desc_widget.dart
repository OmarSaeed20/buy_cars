import 'package:buy_cars/index.dart';

class ImgAndTitleAndDescWidget extends StatelessWidget {
  const ImgAndTitleAndDescWidget({
    super.key,
    required this.img,
    required this.title,
    required this.desc,
  });
  final String img;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenWidth,
      margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(2)),
      padding: EdgeInsets.only(left: getProportionateScreenHeight(100)),
      color: AppColors.blueLight.withOpacity(0.2),
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(80),
            child: TextWidget(
              desc,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: TextWidget(
              title,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.right,
            ),
          ),
          kWidthBox10,
          SvgPicture.asset(
            img,
            color: AppColors.black,
            width: getProportionateScreenHeight(20),
            height: getProportionateScreenHeight(20),
          ),
          kWidthBox5,
        ],
      ),
    );
  }
}
