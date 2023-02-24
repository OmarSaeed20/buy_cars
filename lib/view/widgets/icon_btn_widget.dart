import '../../index.dart';

class IconBtnWidget extends StatelessWidget {
  const IconBtnWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.height,
    this.width,
    this.radius,
    this.color,
    this.size,
  }) : super(key: key);
  final Function onPressed;
  final String icon;
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenHeight(40),
      decoration: BoxDecoration(
        color: color ?? AppColors.offWhite,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed as void Function(),
          icon: SvgPicture.asset(
            icon,
            height: size ?? getProportionateScreenHeight(18),
            width: size ?? getProportionateScreenHeight(18),
          ),
        ),
      ),
    );
  }
}
