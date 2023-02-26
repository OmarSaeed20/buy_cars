import '/index.dart';

Widget detailOfCar() => Container(
      // color: AppColors.grey,
      padding: EdgeInsets.only(
        right: getProportionateScreenWidth(15),
        bottom: getProportionateScreenHeight(20),
      ),
      child: Column(
        children: const [
          ImgAndTitleAndDescWidget(
            img: Images.about,
            title: 'اللون الخارجي',
            desc: 'ابيض',
          ),
          ImgAndTitleAndDescWidget(
            img: Images.about,
            title: 'اللون الداخلي',
            desc: 'بيج',
          ),
          ImgAndTitleAndDescWidget(
            img: Images.about,
            title: 'نوع المقعد',
            desc: 'مخمل',
          ),
          ImgAndTitleAndDescWidget(
            img: Images.about,
            title: 'فتخة سقف',
            desc: 'متاح',
          ),
          ImgAndTitleAndDescWidget(
            img: Images.about,
            title: 'كاميرا سقف',
            desc: 'متاح',
          ),
          ImgAndTitleAndDescWidget(
            img: Images.about,
            title: 'سينسر',
            desc: 'أمامى - خلفى',
          ),
          ImgAndTitleAndDescWidget(
            img: Images.about,
            title: 'سليندر',
            desc: '6',
          ),
          ImgAndTitleAndDescWidget(
            img: Images.about,
            title: 'ناقل الحركة',
            desc: 'اوتوماتيك',
          ),
        ],
      ),
    );
