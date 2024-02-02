import 'dart:convert';

class Profile {
  final Config config;
  final ProfileClass profile;

  Profile({
    required this.config,
    required this.profile,
  });

  factory Profile.fromRawJson(String str) => Profile.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    config: Config.fromJson(json["config"]),
    profile: ProfileClass.fromJson(json["profile"]),
  );

  Map<String, dynamic> toJson() => {
    "config": config.toJson(),
    "profile": profile.toJson(),
  };
}

class Config {
  final String themeMode;
  final String seedColorLite;
  final String seedColorDark;

  Config({
    required this.themeMode,
    required this.seedColorLite,
    required this.seedColorDark,
  });

  factory Config.fromRawJson(String str) => Config.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Config.fromJson(Map<String, dynamic> json) => Config(
    themeMode: json["theme_mode"],
    seedColorLite: json["seed_color_lite"],
    seedColorDark: json["seed_color_dark"],
  );

  Map<String, dynamic> toJson() => {
    "theme_mode": themeMode,
    "seed_color_lite": seedColorLite,
    "seed_color_dark": seedColorDark,
  };
}

class ProfileClass {
  final String name;
  final String initials;
  final String locationName;
  final double locationLatitud;
  final double locationLongitud;
  final String about;
  final String summary;
  final String avatarUrl;
  final String personalWebsiteUrl;
  final Contact contact;
  final List<Education> education;
  final List<Work> work;
  final List<String> skills;
  final List<Project> projects;
  final List<String> hobbies;

  ProfileClass({
    required this.name,
    required this.initials,
    required this.locationName,
    required this.locationLatitud,
    required this.locationLongitud,
    required this.about,
    required this.summary,
    required this.avatarUrl,
    required this.personalWebsiteUrl,
    required this.contact,
    required this.education,
    required this.work,
    required this.skills,
    required this.projects,
    required this.hobbies,
  });

  factory ProfileClass.fromRawJson(String str) => ProfileClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileClass.fromJson(Map<String, dynamic> json) => ProfileClass(
    name: json["name"],
    initials: json["initials"],
    locationName: json["location_name"],
    locationLatitud: json["location_latitud"]?.toDouble(),
    locationLongitud: json["location_longitud"]?.toDouble(),
    about: json["about"],
    summary: json["summary"],
    avatarUrl: json["avatarUrl"],
    personalWebsiteUrl: json["personalWebsiteUrl"],
    contact: Contact.fromJson(json["contact"]),
    education: List<Education>.from(json["education"].map((x) => Education.fromJson(x))),
    work: List<Work>.from(json["work"].map((x) => Work.fromJson(x))),
    skills: List<String>.from(json["skills"].map((x) => x)),
    projects: List<Project>.from(json["projects"].map((x) => Project.fromJson(x))),
    hobbies: List<String>.from(json["hobbies"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "initials": initials,
    "location_name": locationName,
    "location_latitud": locationLatitud,
    "location_longitud": locationLongitud,
    "about": about,
    "summary": summary,
    "avatarUrl": avatarUrl,
    "personalWebsiteUrl": personalWebsiteUrl,
    "contact": contact.toJson(),
    "education": List<dynamic>.from(education.map((x) => x.toJson())),
    "work": List<dynamic>.from(work.map((x) => x.toJson())),
    "skills": List<dynamic>.from(skills.map((x) => x)),
    "projects": List<dynamic>.from(projects.map((x) => x.toJson())),
    "hobbies": List<dynamic>.from(hobbies.map((x) => x)),
  };
}

class Contact {
  final String email;
  final String tel;
  final List<Social> social;

  Contact({
    required this.email,
    required this.tel,
    required this.social,
  });

  factory Contact.fromRawJson(String str) => Contact.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    email: json["email"],
    tel: json["tel"],
    social: List<Social>.from(json["social"].map((x) => Social.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "tel": tel,
    "social": List<dynamic>.from(social.map((x) => x.toJson())),
  };
}

class Social {
  final String name;
  final String url;
  final String icon;

  Social({
    required this.name,
    required this.url,
    required this.icon,
  });

  factory Social.fromRawJson(String str) => Social.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Social.fromJson(Map<String, dynamic> json) => Social(
    name: json["name"],
    url: json["url"],
    icon: json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "url": url,
    "icon": icon,
  };
}

class Education {
  final String school;
  final String degree;
  final String start;
  final String end;

  Education({
    required this.school,
    required this.degree,
    required this.start,
    required this.end,
  });

  factory Education.fromRawJson(String str) => Education.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Education.fromJson(Map<String, dynamic> json) => Education(
    school: json["school"],
    degree: json["degree"],
    start: json["start"],
    end: json["end"],
  );

  Map<String, dynamic> toJson() => {
    "school": school,
    "degree": degree,
    "start": start,
    "end": end,
  };
}

class Project {
  final String title;
  final List<String> techStack;
  final String description;
  final String logo;
  final Link link;

  Project({
    required this.title,
    required this.techStack,
    required this.description,
    required this.logo,
    required this.link,
  });

  factory Project.fromRawJson(String str) => Project.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Project.fromJson(Map<String, dynamic> json) => Project(
    title: json["title"],
    techStack: List<String>.from(json["techStack"].map((x) => x)),
    description: json["description"],
    logo: json["logo"],
    link: Link.fromJson(json["link"]),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "techStack": List<dynamic>.from(techStack.map((x) => x)),
    "description": description,
    "logo": logo,
    "link": link.toJson(),
  };
}

class Link {
  final String label;
  final String href;

  Link({
    required this.label,
    required this.href,
  });

  factory Link.fromRawJson(String str) => Link.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    label: json["label"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "href": href,
  };
}

class Work {
  final String company;
  final String link;
  final List<String> badges;
  final String title;
  final String logo;
  final String start;
  final String end;
  final String description;

  Work({
    required this.company,
    required this.link,
    required this.badges,
    required this.title,
    required this.logo,
    required this.start,
    required this.end,
    required this.description,
  });

  factory Work.fromRawJson(String str) => Work.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Work.fromJson(Map<String, dynamic> json) => Work(
    company: json["company"],
    link: json["link"],
    badges: List<String>.from(json["badges"].map((x) => x)),
    title: json["title"],
    logo: json["logo"],
    start: json["start"],
    end: json["end"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "company": company,
    "link": link,
    "badges": List<dynamic>.from(badges.map((x) => x)),
    "title": title,
    "logo": logo,
    "start": start,
    "end": end,
    "description": description,
  };
}
