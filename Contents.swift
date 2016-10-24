//: Playground - noun: a place where people can play

import UIKit

func randomPasswordWithLength (len : Int) -> NSString
{

let password : NSString = "abcdefghijklmnopqrstuvwxyz0123456789@#$"

var randomPassword : NSMutableString = NSMutableString(capacity: len)

for (var i=0; i < len; i += 1)
{
    var length = UInt32 (password.length)
    var rand = arc4random_uniform(length)
    randomPassword.appendFormat("%C", password.characterAtIndex(Int(rand)))
}
return randomPassword
}

randomPasswordWithLength(8)