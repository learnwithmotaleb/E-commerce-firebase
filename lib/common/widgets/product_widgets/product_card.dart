import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class TCardCounterIcons extends StatelessWidget {
  const TCardCounterIcons({
    super.key, required this.onPress, required this.iconColor,
  });

  final VoidCallback onPress;
  final Color iconColor;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPress, icon: const Icon(Iconsax.shopping_bag),color: iconColor),
        Positioned(
          right: 0,

          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text("2",style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white,fontSizeFactor: 0.8)),
            ),
          ),
        )

      ],
    );
  }
}
