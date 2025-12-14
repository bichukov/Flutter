void whole(List<int> value) {
 List<int> numbers = value.where((n) => n % 2 == 0).toList();
 print('$numbers');
}

class Student  {
 final String name;
 final int age;
 final double averageScore;
 Student (this.name, this.age, this.averageScore);
 @override
 String toString() => '$name ($age) - $averageScore';

}

List<Student> sortStudentsByGPA(List<Student> students) {

 students.sort((first, second) => second.averageScore.compareTo(first.averageScore));
 return students;
}

void main () {
 List<int> numbers = [12,2,3,4,5,62,22];
 List<Student> students =[Student('Alex', 18, 4.5), Student('Valentin', 19, 4.7), Student('John', 19, 4)];
 whole(numbers);
 print(sortStudentsByGPA(students));

}
