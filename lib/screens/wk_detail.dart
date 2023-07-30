import 'package:flutter/material.dart';
import 'package:workout_app_final/main.dart';

class WorkoutDetailScreen extends StatelessWidget {
  final Workout workout;

  WorkoutDetailScreen({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Workout Detail')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              workout.name,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              workout.description,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: workout.exercises.length,
              itemBuilder: (context, index) {
                if (index >= workout.gifPaths.length) {
                  // Handle the case when there's no corresponding GIF for the exercise
                  return ListTile(
                    title: Text(workout.exercises[index]),
                  );
                }

                return Container(
                  height: 300, // Set the desired height for the ListTile
                  child: ListTile(
                    title: Text(workout.exercises[index]),
                    subtitle: Image.network(
                      workout.gifPaths[
                          index], // Display the GIF beside the exercise name
                      height:
                          300, // Set the height of the GIF to your desired size
                      width:
                          50, // Set the width of the GIF to your desired size
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
