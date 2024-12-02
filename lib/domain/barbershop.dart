class Barbershop {
  final String name;
  final String location;
  final String imageUrl;
  final double rating;
  final String distance;

  Barbershop({
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.rating,
    required this.distance,
  });

  factory Barbershop.fromJson(Map<String, dynamic> json) {
    // Împarte location_with_distance în location și distance
    final locationWithDistance = json['location_with_distance'] as String;
    final parts = locationWithDistance.split('(');
    final location = parts[0].trim();
    final distance = parts[1].replaceAll(')', '').trim();

    return Barbershop(
      name: json['name'],
      location: location,
      imageUrl: json['image'],
      rating: json['review_rate'].toDouble(),
      distance: distance,
    );
  }
}
