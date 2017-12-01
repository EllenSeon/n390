//: Playground - noun: a place where people can play

import UIKit


let intMax = Int.max
let UintMax = UInt.max
let intMin = Int.min
let UintMin = UInt.min

let pi = 3.14
let divider = 2
let halfpi = 3.14/Double(divider)




let name:String = "Ellen"

var greeting = "Hello"

greeting += " " + name


let characters = name.characters
let count = characters.count

let url = "www.ellenseon.com"
let hasProtocol = url.hasPrefix("http://")

print("\(name)")




let time1 = (99,0,48)
time1.0

let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)
time2.h

let duration = (time1, time2)
let (start, end) = duration
let endHour = end.h

typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((9, 10, 23), (17, 8, 21))
print("We studied until \(today.end.h) today")




var meetingRooms:Array<String> = ["Bansky", "Rivera", "Kahlo", "Picasso", "Cezanne", "Matisse"]
var groups:[Int] = [19, 8, 14, 9]

meetingRooms += ["Renoir"]

let maxSpeed:Int = 200
//maxSpeed += 10

var currentSpeed:Int = 110
currentSpeed += 10
//currentSpeed += 20.5
currentSpeed += Int(20.5)

var speedHistory:[Int] = []
speedHistory += [currentSpeed]

let gpsSpeed0901 = 114.1
speedHistory.append(Int(gpsSpeed0901))

speedHistory[0]
speedHistory.last

let historyBackup = speedHistory
speedHistory += [150]
historyBackup



var roomCapacity:[String:Int] = ["Bansky":4, "Rivera":8, "Kahlo":8, "Picasso":10, "Cezanne":20, "Matisse":30]

//roomCapacity += ["Renoir":40]
roomCapacity["Renoir"] = 40
roomCapacity["Kahlo"]

//let roomNames = roomCapacity.keys
//let capacities = roomCapacity.values

let roomNames = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)

let total = capacities.reduce(0, +)

let subway2 :Set = ["시청", "을지로입구", "을지로3가"]
let subway3 :Set = ["구파발", "연신내", "시청"];

let transfer = subway2.intersection(subway3)
let notTransfer = subway2.subtracting(subway3)

let union = subway2.union(subway3)
let exOr = subway2.symmetricDifference(subway3)




if transfer.count > 0 {
    print("환승역은 \(transfer) 입니다.")
    
} else {
    print("환승역은 없습니다.")
}

for station in subway2 {
    print("이번 역은 \(station)입니다.")
}

for (roomName, capacity) in roomCapacity {
    let roomDescription:String
    switch capacity{
    case 4:
        roomDescription = "\(roomName)은 스터디 룸이며 정원은 \(capacity)명입니다."
    case 5...10:
        roomDescription = "\(roomName)은 팀 세미나 룸이며 정원은 \(capacity)명입니다."
    case 11...30:
        roomDescription = "\(roomName)은 그룹 세미나 룸이며 정원은 \(capacity)명입니다."
    case _ where capacity > 30:
        roomDescription = "\(roomName)의 정원은 \(capacity)명이며 별도의 사용신청이 필요합니다."
    default:
        roomDescription = "\(roomName)의 정보를 다시 확인해 주세요."
    }
}

/* Optional */

var title : String = "Storyboard Prototyping"
var ratings : [Double]! = nil
var supportURL : String! = nil

supportURL = "www.codershigh.com"
ratings = [4.5, 3.0, 5.0, 2.5]

func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double) {
    var sum = 0.0, min = history[0], max = history[0]
    for value in history {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    
    let average = sum / Double(history.count)
    return (average, min, max)
}

var bookDescription:String = "\(title)"

if let theRatings = ratings {
    let record = ratingRecord(history:theRatings)
    bookDescription += "has \(theRatings.count) ratings \r\n average is \(record.average), from \(record.min) to \(record.max)"
}

//if let theURL = supportURL  {
//    bookDescription += " \r\nsupport web page: \(theURL)"
//}

bookDescription += " \r\nsupport web page: \(supportURL)"
print("\(bookDescription)")

//print ("\(title) has \(ratings!.count) ratings. \r\nsupport web page: \(supportURL)")


/* Function */


func myFunction () {
    
}

myFunction()




 
 




