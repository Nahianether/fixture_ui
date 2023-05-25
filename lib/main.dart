import 'package:flutter/material.dart';

class FixtureUIExample extends StatelessWidget {
  final List<String> teams = [
    'Team 1',
    'Team 2',
    'Team 3',
    'Team 4',
    'Team 5',
    'Team 6',
    'Team 7',
    'Team 8',
    'Team 9',
    'Team 10',
    'Team 11',
    'Team 12',
    'Team 13',
    'Team 14',
    'Team 15',
    'Team 16',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixture UI Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildRound(teams), // First Round
          buildRound(
              ['Winner 1', 'Winner 2', 'Winner 3', 'Winner 4']), // Second Round
          buildRound(['Winner A', 'Winner B']), // Third Round
        ],
      ),
    );
  }

  Widget buildRound(List<String> roundTeams) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        roundTeams.length ~/ 2,
        (index) {
          final team1 = roundTeams[index * 2];
          final team2 = roundTeams[index * 2 + 1];
          return Container(
            padding: EdgeInsets.all(8),
            child: Text('$team1 vs $team2'),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FixtureUIExample(),
  ));
}
