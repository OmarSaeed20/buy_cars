import '../../index.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.text,
    this.fontSize,
    this.spacing,
    this.color,
    this.overFlow,
    this.height,
    this.textAlign,
    this.maxLines,
    this.fontWeight,
  }) : super(key: key);
  final String text;
  final double? fontSize;
  final TextAlign? textAlign;
  final double? spacing;
  final Color? color;
  final TextOverflow? overFlow;
  final double? height;
  final int? maxLines;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      maxLines: maxLines,
      textAlign:textAlign ,
      style: TextStyle(
        fontSize: fontSize ?? getProportionateScreenWidth(16),
        letterSpacing: spacing,
        color: color ?? AppColors.black,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
