import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'core/portfolio_data.dart';
import 'core/theme.dart';
import 'widgets/glass_container.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 800;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 🔥 HERO SECTION
                isMobile
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _heroContent(),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Column(children: _heroContent())),
                          const CircleAvatar(
                            radius: 100,
                            backgroundImage: AssetImage(
                              'assets/images/profile.jpeg',
                            ),
                          ).animate().scale(duration: 600.ms),
                        ],
                      ),

                const SizedBox(height: 50),

                /// 💎 ABOUT
                GlassContainer(
                  child: Text(PortfolioData.about),
                ).animate().fadeIn(duration: 600.ms),

                const SizedBox(height: 40),

                /// 🧠 SKILLS
                const Text("Skills", style: TextStyle(fontSize: 26)),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: PortfolioData.skills
                      .map((s) => Chip(label: Text(s)))
                      .toList(),
                ),

                const SizedBox(height: 40),

                /// 🤖 AI & MODERN DEVELOPMENT
                const Text(
                  "AI & Modern Development",
                  style: TextStyle(fontSize: 26),
                ),
                const SizedBox(height: 10),
                GlassContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(PortfolioData.aiKnowledge),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: PortfolioData.aiTools
                            .map((tool) => Chip(label: Text(tool)))
                            .toList(),
                      ),
                    ],
                  ),
                ).animate().fadeIn(duration: 600.ms),

                const SizedBox(height: 40),

                /// 📦 PROJECTS
                const Text("Projects", style: TextStyle(fontSize: 26)),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: PortfolioData.projects.map((p) {
                    return _projectCard(p);
                  }).toList(),
                ),

                const SizedBox(height: 40),

                /// 🏢 EXPERIENCE
                const Text("Experience", style: TextStyle(fontSize: 26)),
                const SizedBox(height: 20),
                Column(
                  children: PortfolioData.experience.map((e) {
                    return ListTile(
                      title: Text(e["role"]!),
                      subtitle: Text("${e["company"]} | ${e["duration"]}"),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 40),

                const Text("Contact", style: TextStyle(fontSize: 26)),

                const SizedBox(height: 10),

                Text("📍 ${PortfolioData.location}"),
                Text("📞 ${PortfolioData.phone}"),
                Text("📧 ${PortfolioData.email}"),
                Text("🔗 ${PortfolioData.linkedin}"),

                const SizedBox(height: 20),

                Text("🎓 ${PortfolioData.education}"),
              ],
            ),
          );
        },
      ),
    );
  }

  // List<Widget> _heroContent() {
  //   return [
  //     Text(
  //       PortfolioData.name,
  //       style: const TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
  //     ).animate().fadeIn().slideX(begin: -0.2),

  //     const SizedBox(height: 10),

  //     Text(PortfolioData.role).animate().fadeIn(delay: 200.ms),

  //     const SizedBox(height: 20),

  //     ElevatedButton(
  //       onPressed: () {},
  //       child: const Text("View Projects"),
  //     ).animate().scale(delay: 300.ms),
  //   ];
  // }

  List<Widget> _heroContent() {
    return [
      Text(
        PortfolioData.name,
        style: const TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
      ).animate().fadeIn().slideX(begin: -0.2),

      const SizedBox(height: 10),

      Text(PortfolioData.role).animate().fadeIn(delay: 200.ms),

      const SizedBox(height: 10),

      Text(
        PortfolioData.experienceYears(),
        style: const TextStyle(color: Colors.grey),
      ),

      const SizedBox(height: 20),

      ElevatedButton(
        onPressed: () {},
        child: const Text("Download Resume"),
      ).animate().scale(delay: 300.ms),
    ];
  }

  Widget _projectCard(Map<String, String> project) {
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
}
