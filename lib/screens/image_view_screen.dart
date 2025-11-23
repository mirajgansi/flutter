import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  const ImageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width * .5,

          child: Image.network(
            'https://th.bing.com/th/id/OIP.DO4fvcyzRIsh7ufm73g7zwAAAA?w=260&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
          ),
        ),
      ),
    );
  }
}
