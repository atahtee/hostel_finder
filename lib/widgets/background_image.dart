import 'package:finderhostel/Theme/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
    required this.asset
  }) : super(key: key);
  final String asset;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(asset),
          fit: BoxFit.cover,
          )
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppColor.black.withOpacity(0.2),
          ),
    );
  }
}
