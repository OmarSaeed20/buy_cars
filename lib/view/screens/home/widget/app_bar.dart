import '/index.dart';

PreferredSizeWidget appBar() => AppBar(
      elevation: 0.0,
      backgroundColor: Colors.blueGrey,
      actions: [
        appBarIcon("assets/icons/menu.svg",
            onTap: () {}, pLeTop: 19, pLeBott: 19),
      ],
      leading: Stack(
        children: [
          appBarIcon(
              pLeTop: 10,
              onTap: () {},
              "assets/icons/Notification.svg",
              imagHei: getProportionateScreenHeight(50)),
          Positioned(
            right: 12,
            top: 12,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(color: Colors.white, width: 1.3),
                shape: BoxShape.circle,
              ),
              child: const TextWidget(
                text: "2",
                textAlign: TextAlign.center,
                fontSize: 10,
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    );
