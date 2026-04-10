import 'package:flutter/material.dart';
import 'package:portfolio/widgets/glass_container.dart';
import 'package:url_launcher/url_launcher.dart';

Widget projectCard(Map<String, String> project) {
  return MouseRegion(
    child: GestureDetector(
      onTap: () async {
        final Uri url = Uri.parse(project["link"]!);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 280,
        child: GlassContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(project["title"]!, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Text(project["desc"]!),
              const SizedBox(height: 10),
              const Text("🔗 View App", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ),
    ),
  );
}
