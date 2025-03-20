import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    super.key,
     this.image,
    required this.url,
    required this.useIcon,
    required this.whidth,
     this.icon,
  });

  final String? image;
  final String url;
  final bool useIcon; // Use true para usar um assets e false para usar um iconData
  final double whidth;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: useIcon? Image.asset(image!, width: whidth): Icon(icon, weight: whidth,),
      onPressed: () async {
        final uri = Uri.parse(url);
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      },
    );
  }
}
