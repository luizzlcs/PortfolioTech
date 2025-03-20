class Project {
  final String name;
  final String description;
  final String type; // "Front-end" ou "Back-end"
  final String imageUrl;
  final String siteUrl;
  final String githubUrl;

  Project({
    required this.name,
    required this.description,
    required this.type,
    required this.imageUrl,
    required this.siteUrl,
    required this.githubUrl,
  });
}