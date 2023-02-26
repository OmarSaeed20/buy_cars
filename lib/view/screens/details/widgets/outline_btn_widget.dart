import '../../../../index.dart';

class OutlineBtnWidget extends StatelessWidget {
  const OutlineBtnWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.backgroundColor,
    this.color,
  });
  final String title;
  final String icon;
  final Function onTap;
  final Color? backgroundColor;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: getProportionateScreenHeight(10),
        bottom: getProportionateScreenHeight(10),
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap as void Function(),
        child: Container(
          padding: EdgeInsetsDirectional.only(
            start: getProportionateScreenWidth(15),
            end: getProportionateScreenWidth(15),
          ),
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.white,
            borderRadius: borderRadius * 3,
            border: Border.all(color: AppColors.black),
          ),
          child: Center(
            child: Row(
              children: [
                TextWidget(
                  title,
                  color: color ?? AppColors.black,
                  fontSize: getProportionateScreenWidth(14),
                ),
                kWidthBox5,
                SvgPicture.asset(
                  icon,
                  color: color ?? AppColors.black,
                  height: getProportionateScreenHeight(18),
                  width: getProportionateScreenHeight(18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
