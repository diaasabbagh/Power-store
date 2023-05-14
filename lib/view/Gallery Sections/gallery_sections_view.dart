import 'package:flutter/material.dart';
import 'package:power_store1/view/Gallery%20Sections/widgets/gallery_sections_body.dart';

class GallerySectionsView extends StatelessWidget {
  const GallerySectionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GallerySectionsBody(),
    );
  }
}
