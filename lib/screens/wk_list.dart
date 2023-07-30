import 'package:flutter/material.dart';
import 'package:workout_app_final/screens/wk_detail.dart';
import 'package:workout_app_final/main.dart';

class WorkoutListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Workout List')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 5, // Spacing between columns
          mainAxisSpacing: 5, // Spacing between rows
        ),
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        WorkoutDetailScreen(workout: workouts[index]),
                  ),
                );
              },
              onHover: (value) {
                // Handle hover event here if needed
                print(value);
              },
              child: ClipRRect(
                // Apply border radius to the image
                borderRadius: BorderRadius.circular(20.0),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        workouts[index]
                            .imagePath, // Accessing imagePath for the specific workout
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(
                            0.4), // Add a semi-transparent background
                        borderRadius:
                            BorderRadius.circular(10.0), // Add rounded corners
                      ),
                      child: Center(
                        child: Text(
                          workouts[index].name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                WorkoutDetailScreen(workout: workouts[index]),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(0, 253, 255, 254),
                        shadowColor: const Color.fromARGB(255, 252, 252, 252)
                            .withOpacity(0.3), // Add shadow color
                        elevation: 9, // Adjust the elevation as needed
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Give the button rounded corners
                        ),
                        fixedSize: Size(640,
                            650), // Set the desired width and height of the button
                        // Optionally adjust the padding
                        padding: EdgeInsets.all(8.0),
                      ),
                      child:
                          SizedBox(), // An empty SizedBox as a workaround to apply the shadow to the whole button
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
