//: [Previous](@previous)

//https://programmers.co.kr/learn/courses/30/lessons/12981
import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    for index in 1..<words.count {
        let word = words[index]
        if  words[index - 1].last != word.first{
            return [index % n + 1, index / n + 1]
        }
        if words.prefix(index - 1).contains(word) {
            return [index % n + 1 , index / n + 1]
        }
    }
    return [0,0]
}

//: [Next](@next)
