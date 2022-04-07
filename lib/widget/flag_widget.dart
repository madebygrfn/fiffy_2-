import 'package:flutter/material.dart';


class FlagWidget extends StatelessWidget {
  final String imagePath;
  //final VoidCallback onClicked;

  const FlagWidget({
    Key? key,
    required this.imagePath,
    //required this.onClicked,
  }):
        super(key: key);


  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: buildImage(),
    );
  }

  Widget buildImage() {
    final image = AssetImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
      child: Ink.image(
        image: image,
      fit: BoxFit.cover,
      width: 128,
      height: 128,
    ),
    ),
   );
  }
}