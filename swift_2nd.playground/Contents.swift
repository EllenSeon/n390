//: Playground - noun: a place where people can play

import UIKit


/* Structure */


/*
 ### 구조체
 - 클래스와 함께 데이터 모델의 중요한 구성 요소
 - 변수나 상수, 함수를 선언한 뒤 인스턴스를 만들어서 사용
 - 좌표나 크기 등 간단한 값을 표현
 - 함수형 프로그래밍에서 그 역할이 커지고 있음
 */


struct Task {
    var title:String
    var time:Int?
}

var callTask = Task(title: "Call to Randy", time: 10*60)

var reportTask = Task(title: "Report to Boss", time: nil)

var todayTask:[Task] = []
todayTask += [callTask, reportTask]

print("today task = \(todayTask)")
