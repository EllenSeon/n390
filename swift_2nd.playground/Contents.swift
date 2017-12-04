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
    
    var owner:Employee
    var participant:Employee?
    
    var type:TaskType
    enum TaskType {
        case Call
        case Report
        case Meet
        case Support
        
        var typeTitle:String {
            get {
                let titleString:String
                switch self {
                case .Call:
                    titleString = "Call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                }
                return titleString
            }
        }
    }
    
    init (type:TaskType, owner:Employee) {
        self.type = type
        self.title = type.typeTitle
        self.owner = owner
        self.time = nil
        self.participant = nil
    }
}

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
    init (name:String) {
        self.name = name
    }
    
    convenience init (name:String, phone:String) {
        self.init(name:name)
        self.phoneNumber = phone
    }
    
    func report() {
        if let myBoss = boss {
            print("\(self.name) reported to \(myBoss.name)")
        } else {
            print("\(name) don't have boss")
        }
    }
    
    func callTaskToBoss() -> Task? {
        if let myBoss = boss, let callTo = myBoss.phoneNumber {
            var callTask = Task(type: .Call, owner: self)
            return callTask
        }
        
        return nil
    }
}

var todayTask:[Task] = []


let me:Employee = Employee(name: "Alex", phone:"010-1234-5678") // Structure와 달리 Class는 let으로 만들어도 수정할 수 있다.
//me.name = "Alex"
me.phoneNumber = "010-1234-5678"

let toby = Employee(name: "Toby")
toby.phoneNumber = "011-5678-1234"

me.boss = toby
me.report()


//var callTask = Task(title: "Call to Toby", time: 10*60, owner: me, participant:toby, type:.Call)

//var reportTask = Task(title: "Report to Boss", time: nil, owner:me, participant:nil, type:Task.TaskType.Report)

var callTask = Task(type: .Call, owner: me)
var reportTask = Task(type: .Report, owner:me)

todayTask += [reportTask]
if let callTask = me.callTaskToBoss() {
    todayTask += [callTask]
}

callTask.time = 10*60

callTask.participant?.phoneNumber = "010-5678-1234"


todayTask += [callTask, reportTask]
todayTask[1].time = 15*60

callTask.title = "Call to Toby"

print("today task = \(todayTask), callTask = \(callTask)")

/*
 ### Value Type
 - 할당시 값을 복사. 메모리 번지를 공유하지 않음.
    - Array등 컬렉션에 할당
    - 다른 변수에 할당
 */



/* Class */




/* 
  ### Class
 - 데이터 모델의 중요한 구성요소
 - 오브젝트를 생성
    - OOP의 그 Object
 - 참조로 동작
    - Array나 다른 변수에 할당될 때 복사되지 않고 주소값만 공유된다. 구조체와 다름.
 */



/* Enum */



/*
 ### Enumerations
 - 연관성 있는 값들의 그룹을 만들어 Type-safe하게 사용
 - 일련의 값(Raw Value)을 주지 않아도 됨
    - : C에서 Enum은 일련의 정수값에 이름을 주는 것 
 
 ### Enum in Swift
 - 1st-class type: 어디서나 사용될 수 있는 자격
    - 매개변수, 리턴타입, 컬렉션 등
 - Class에서나 되던 기능들이 추가
    - Computed property, method, initializer, conform to protocol
*/



/* Initialize */


/*
### 초기화 작업은
 - 인스턴스가 가지고 있는 모든 스토어드 프라퍼티(Stored Property)들의 최초 값을 설정하는 것
 - 스토어드 프라퍼티: 메모리를 차지하는 프라퍼티
    - 저장소를 가지고 있는 프라퍼티
 - 컴퓨티드 프라퍼티
    - 저장소 없이 계산에 의해 값을 리턴하는 프라퍼티
 - 구조체의 초기화
    - 여러 개의 init 메소드 허용
    - 상속을 허락하지 않으므로 Class에 비해 상대적으로 단순.
 - 클래스의 초기화
    - 하나의 지정초기화 메소드
    - 여러 개의 편의 초기화 메소드 허용
*/











