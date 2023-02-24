import "package:buy_cars/index.dart";

class CardDetailsCarWidget extends StatelessWidget {
  const CardDetailsCarWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.num,
  });
  final String imagePath;
  final String title;

  final String num;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(
        getProportionateScreenWidth(10),
        getProportionateScreenHeight(5),
        getProportionateScreenWidth(10),
        getProportionateScreenHeight(5),
      ),
      height: getProportionateScreenHeight(90),
      width: getProportionateScreenHeight(90),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.grey.shade200,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            imagePath,
            height: getProportionateScreenHeight(26),
            width: getProportionateScreenHeight(26),
            // color: AppColors.,
          ),
          TextWidget(
            text: title,
            fontSize: getProportionateScreenWidth(14),
          ),
          TextWidget(
            text: num,
            fontWeight: FontWeight.w600,
            fontSize: getProportionateScreenWidth(18),
          ),
        ],
      ),
    );
  }
}
