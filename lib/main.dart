import 'package:flutter/material.dart';
import 'package:workout_app_final/screens/wk_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workout App',
      home: WorkoutListScreen(),
    );
  }
}

class Workout {
  String name;
  String description;
  List<String> exercises;
  String imagePath;
  List<String> gifPaths;

  Workout(
      {required this.name,
      required this.description,
      required this.exercises,
      required this.imagePath,
      required this.gifPaths});
}

final List<Workout> workouts = [
  Workout(
    name: 'Full Body Workout',
    description: 'A full-body workout routine targeting major muscle groups.',
    exercises: [
      'Squats',
      'Push-ups',
      'Lunges',
      'Rows',
      'Planks',
      'Crunches',
      'Leg-Lifts',
    ],
    imagePath:
        'https://hips.hearstapps.com/hmg-prod/images/female-athletes-jogging-in-crossfit-gym-on-sunny-royalty-free-image-961113988-1542059029.jpg',
    gifPaths: [
      'https://hips.hearstapps.com/hmg-prod/images/female-athletes-jogging-in-crossfit-gym-on-sunny-royalty-free-image-961113988-1542059029.jpg',
    ],
  ),
  Workout(
    name: 'Cardio Workout',
    description: 'A high-intensity cardio workout to get your heart pumping.',
    exercises: ['Running', 'Jumping Jacks', 'Burpees', 'Mountain Climbers'],
    imagePath:
        'https://hips.hearstapps.com/hmg-prod/images/african-athlete-smiling-positively-after-a-good-royalty-free-image-1643406006.jpg?crop=1.00xw:0.753xh;0,0.0856xh&resize=1200:*',
    gifPaths: [],
  ),
  Workout(
    name: 'Upper Body Workout',
    description:
        'A medium-intensity strength training session to get an impressive upper-body pump for the summer!',
    exercises: [
      'Shoulder Presses',
      'Lateral Raise',
      'Bicep Curl',
      'Pull-Ups',
      'Lat Pull Downs',
      'Arnold Press',
      'Pec Flies',
    ],
    imagePath:
        'https://hips.hearstapps.com/hmg-prod/images/handsome-hispanic-man-lifting-weights-royalty-free-image-646225772-1531425406.jpg?crop=0.668xw:1.00xh;0.194xw,0&resize=1200:*',
    gifPaths: [],
  ),
  Workout(
    name: 'Lower Body Workout',
    description:
        'Get Leg Strong: A lower body workout for powerful legs and glutes!',
    exercises: [
      'Leg Press',
      'Squats',
      'Lunges',
      'DeadLifts',
      'Leg Extensions',
      'Leg Curl',
    ],
    imagePath:
        'https://hips.hearstapps.com/hmg-prod/images/best-leg-exercises-for-women-1595274323.jpg',
    gifPaths: [], // Replace with the correct image asset path
  ),
  // Add more workouts as needed
];
