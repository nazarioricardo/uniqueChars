//: Playground - noun: a place where people can play

import Foundation

let paragraph = "If you want to jumpstart the process of talking to us about this role, here’s a little challenge: write a program that outputs the largest unique set of characters that can be removed from this paragraph without letting its length drop below 50."

func removeSetOfChars(from paragraph: String) -> String {
    
    var uniqueChars = ""
    var solution = ""
    
    for char in paragraph {
        if !uniqueChars.contains(char) {
            uniqueChars.append(char)
        } else {
            if uniqueChars.count > solution.count && paragraph.count - uniqueChars.count >= 50 {
                solution = uniqueChars
            }
            uniqueChars = ""
            uniqueChars.append(char)
        }
        
    }
    return solution
}

removeSetOfChars(from: paragraph)
