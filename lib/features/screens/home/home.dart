import 'package:e_commerce_app_firebase/common/widgets/appbar/TAppBar.dart';
import 'package:e_commerce_app_firebase/common/widgets/curved_egdes/curved_edges.dart';
import 'package:e_commerce_app_firebase/features/screens/home/widgets/circular_container.dart';
import 'package:e_commerce_app_firebase/features/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app_firebase/features/screens/home/widgets/primary_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/curved_egdes/curved_edges_widget.dart';
import '../../../common/widgets/product_widgets/product_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TprimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  THomeAppBar(),
                  ///SearchBar

                  /// Categories
                ],

              )
            )
          ],
        ),
      ),
    );
  }
}








