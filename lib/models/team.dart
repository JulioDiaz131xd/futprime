class Team {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final String country;
  final int founded;
  final List<String> trophies;
  final List<Map<String, dynamic>> squad; 
  final String stadium;
  final String manager;
  final String website;
  final Map<String, String> socialMedia;
  final String league;
  final List<String> rivals;

  Team({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.country,
    required this.founded,
    required this.trophies,
    required this.squad,
    required this.stadium,
    required this.manager,
    required this.website,
    required this.socialMedia,
    required this.league,
    required this.rivals,
  });
}
