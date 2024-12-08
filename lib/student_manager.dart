import 'dart:io';
import 'package:dart_console_01/student.dart';

// 학생관리프로그램 작동시킨다
void runStudentManager() {
  List<Student> students = []; // 학생리스트

  while (true) {
    // 선택지 보여주고 선택하게 반복 만든다
    print('학생 성적 관리 프로그램\n1. 학생 추가\n2. 학생 목록 출력\n3. 평균 점수 계산\n4.종료');
    stdout.write('메뉴를 선택하세요:'); // 옆에 답 적는거

    String? choice = stdin.readLineSync(); // 입력

    // 선택지 조건 만든다
    if (choice == 1) {
      addStudent(students); // 1. 학생 추가
    } else if (choice == 2) {
      printStudentList(students); // 2. 학생 목록 출력
    } else if (choice == 3) {
      calculateAverageScore(students); // 3. 평균 점수 계산
    } else if (choice == 4) {
      // 4. 종료
      print('프로그램을 종료합니다.');
      break; // 종료 누르면 끝
    } else {
      print('잘못된 선택입니다. 다시 선택하세요');
    }
  }
}

// 학생 추가
void addStudent() {}

// 학생 목록 출력
void printStudentList() {}

// 평균 점수 계산
void calculateAverageScore() {
  int totalScore = 0;
  for (var student in students) {
    totalScore += student.score; // 점수 합산
  }

  double averageScore = totalScore / students.length;
  print('평균 점수: $averageScore'); // 평균 계산
}
