import 'package:collection/collection.dart';

Map<String, List<int>> studentGrades = {
  "Nada":      [95, 92, 97],
  "Ahmed":     [85, 88, 82],
  "Mohammed":  [78, 72, 80],
  "Nareen":    [72, 63, 75],
  "Wessam":     [55, 58, 50],
  "Galal":     [40, 35, 42], 
};

void main() {
addGrade("Youssef", [65, 60, 63]);
printReport();
}

void addGrade(String name, List<int> grade) {
  studentGrades[name] = grade;
}

// Print Report 
void printReport() {
double totalClassSum = 0;
double topScore = -1;
String topStudent = "";
  print('📊 Grade Report');
  print('───────────────────────────');
  studentGrades.forEach((name,score){
   double avg = score.average;
   totalClassSum += avg;
   String letter = getLetter(avg);

    if (avg > topScore) {
      topScore = avg;
      topStudent = name;
    }

   print("${name.padRight(10)} Avg ${avg.toStringAsFixed(1).padRight(10)} $letter");

  });

  double classAvg = totalClassSum / studentGrades.length;

  print("\n Class Average : ${classAvg.toStringAsFixed(1)}");
  print("Top Student : $topStudent (${topScore.toStringAsFixed(1)})");
}


// Calculations

double calcAvg(String name) {
double avg = (studentGrades[name] as List<int>).average;
return avg;
}

int getHigest(String name) {
int high = (studentGrades[name] as List<int>).max;
return high;
}

int getLowest(String name) {
int low = (studentGrades[name] as List<int>).min;
return low;
}


// Grades Letters Simple Logic
String getLetter(double avg) {
  if (avg >= 90) return 'A';
  if (avg >= 80) return 'B+';
  if (avg >= 70) return 'B';
  if (avg >= 60) return 'C';
  return 'F';
}

