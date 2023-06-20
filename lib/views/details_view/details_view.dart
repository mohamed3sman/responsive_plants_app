import 'package:flutter/material.dart';
import 'package:plants_store/core/utils/constants.dart';

import 'widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: DetailsViewBody(),
    );
  }
}
