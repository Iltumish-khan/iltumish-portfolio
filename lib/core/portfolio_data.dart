class PortfolioData {
  static const String name = "Iltumish Khan";
  static const String role = "Senior Flutter Developer";

  /// 📍 Personal Info
  static const String location = "Moradabad, India";
  static const String phone = "+91 8630958437";
  static const String email = "iltumishkhan.ik@gmail.com";
  static const String linkedin =
      "https://in.linkedin.com/in/iltumish-khan-32809b170"; // UPDATE THIS

  /// 🎓 Education
  static const String education =
      "B.Tech - Kothiwal Institute of Technology (2019)";

  /// 💡 Strong Summary (Upgraded)
  static const String about = """
Senior Flutter Developer with proven expertise in building high-performance, scalable mobile applications used by real-world users.

Specialized in Flutter, Dart, Bloc, GetX, and real-time systems including GPS tracking and map-based applications.

Delivered 15+ production-grade apps and successfully deployed 10+ apps on App Store & Play Store.

Strong experience in architecture design, API integrations, and leading mobile development projects.
""";

  /// 🛠 Skills
  static const List<String> skills = [
    "Flutter",
    "Dart",
    "Bloc",
    "Cubit",
    "GetX",
    "REST APIs",
    "Firebase",
    "CI/CD",
    "Git",
    "Payment Integration",
    "GPS Tracking",
    "Map Integration",
    "App Store Deployment",
    "Play Store Deployment",
  ];

  /// 🤖 AI Tools and Knowledge
  static const String aiKnowledge =
      "I use AI-assisted development tools to explore solutions, accelerate implementation, and review code. "
      "I have knowledge of AI and large language model fundamentals, prompt engineering, and practical AI workflows, "
      "with a focus on validating generated output for correctness and quality.";

  static const List<String> aiTools = ["Claude", "Cursor", "OpenAI Codex"];

  /// 📦 Projects (Already added before)
  static const List<Map<String, String>> projects = [
    {
      "title": "TeamTrax",
      "desc": "GPS Fleet Tracking App with real-time vehicle monitoring",
      "link": "https://apps.apple.com/us/app/teamtrax/id6748743525",
    },
    {
      "title": "Alertrax",
      "desc": "Vehicle tracking system with real-time location",
      "link": "https://apps.apple.com/us/app/alertrax/id1554595354",
    },
    {
      "title": "KiteSuite",
      "desc": "Work management & productivity app",
      "link":
          "https://apps.apple.com/us/app/kitesuite-work-management/id6450180143",
    },
    {
      "title": "Microsale",
      "desc": "Sales & business management system",
      "link": "https://apps.apple.com/us/app/microsale/id1246248778",
    },
    {
      "title": "Paxster Connect",
      "desc": "Fleet connectivity & GPS tracking platform",
      "link": "https://play.google.com/store/apps/details?id=no.paxster",
    },
    {
      "title": "Giving Care",
      "desc": "Caregiver platform",
      "link":
          "https://play.google.com/store/apps/details?id=com.dwellathome.caregivers",
    },
    {
      "title": "Seeking Care",
      "desc": "Care seeker platform",
      "link":
          "https://play.google.com/store/apps/details?id=com.dwellathome.careseekers",
    },
    {
      "title": "FundTrac",
      "desc": "Fundraising platform",
      "link":
          "https://play.google.com/store/apps/details?id=app.fundtrac.fundraise",
    },
    {
      "title": "CarePortal",
      "desc": "Wellbeing app",
      "link":
          "https://play.google.com/store/apps/details?id=org.careportal.wellbeing",
    },
    {
      "title": "410 Bridge",
      "desc": "NGO support platform",
      "link":
          "https://play.google.com/store/apps/details?id=com.bridge.the410bridgeapp",
    },
    {
      "title": "SGI App",
      "desc": "Community platform",
      "link": "https://play.google.com/store/apps/details?id=org.sgi",
    },
    {
      "title": "Route66 RV",
      "desc": "Travel & RV platform",
      "link": "https://play.google.com/store/apps/details?id=com.route66RV",
    },
  ];

  /// 💼 Experience (Dynamic Calculation)
  static String experienceYears() {
    DateTime joiningDate = DateTime(2021, 11); // Nov 2021
    DateTime now = DateTime.now();

    int years = now.year - joiningDate.year;
    int months = now.month - joiningDate.month;

    if (months < 0) {
      years--;
      months += 12;
    }

    return "$years Years $months Months Experience";
  }

  /// 🏢 Experience Timeline
  static const List<Map<String, String>> experience = [
    {
      "role": "Senior Software Engineer",
      "company": "Rudra Innovative Software",
      "duration": "2024 - Present",
    },
    {
      "role": "Software Engineer",
      "company": "Rubico Tech",
      "duration": "2021 - 2024",
    },
  ];
}
