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
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(2)),
      padding: EdgeInsets.only(left: getProportionateScreenHeight(100)),
      color: AppColors.blue.withOpacity(0.3),
      child: Row(
        children: [
          Expanded(child: TextWidget(text: desc)),
          TextWidget(
            text: title,
            textAlign: TextAlign.center,
          ),
          kWidthBox10,
          SvgPicture.asset(
            img,
            color: AppColors.black,
            width: getProportionateScreenHeight(20),
            height: getProportionateScreenHeight(20),
          ),
        ],
      ),
    );
  }
}
