class Workout {
  String name;
  String description;
  List<String> exercises;
  List<String> imagePath;
  List<String> gifPaths; // Add this field of type List<String>.

  Workout(
      {required this.name,
      required this.description,
      required this.exercises,
      required this.imagePath,
      required this.gifPaths});
}
