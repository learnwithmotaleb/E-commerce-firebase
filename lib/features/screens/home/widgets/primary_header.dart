import 'package:flutter/cupertino.dart';

import '../../../../common/widgets/curved_egdes/curved_edges_widget.dart';
import '../../../../utils/constants/colors.dart';
import 'circular_container.dart';

class TprimaryHeaderContainer extends StatelessWidget {
  const TprimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.all(0.0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
              Positioned(
                  top: 100,
                  right: -300,

                  child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
              child,
            ],
          ),
        ),
      ),
    );
  }
}