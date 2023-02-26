import "package:buy_cars/index.dart";

class CardDetailsCarWidget extends StatelessWidget {
  const CardDetailsCarWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.num,
    this.titleHei,
  });
  final String imagePath;
  final String title;
  final double? titleHei;
  final String num;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(
        getProportionateScreenWidth(10),
        getProportionateScreenHeight(10),
        getProportionateScreenWidth(10),
        getProportionateScreenHeight(5),
      ),
      height: getProportionateScreenHeight(85),
      width: getProportionateScreenHeight(90),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imagePath,
            height: getProportionateScreenHeight(26),
            width: getProportionateScreenHeight(26),
            // color: AppColors.,
          ),
          TextWidget(
            title,
            color: Colors.black54,
            height: titleHei,
            fontSize: getProportionateScreenWidth(14),
          ),
          TextWidget(
            num,
            fontWeight: FontWeight.w600,
            fontSize: getProportionateScreenWidth(18),
          ),
        ],
      ),
    );
  }
}
