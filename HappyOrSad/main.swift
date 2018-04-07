//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Print out the input provided
print("You said:")
print(rawInput)

// make sure input is not nil
// (unwrap the optional)
guard let input = rawInput else{
    //If we got here, input is nil, so quit program
    exit(9) //exit with error code 9
}

//print the vertified input
print(input)

// loop over each character of the input string
var happyCount = 0
var sadCount = 0
for individualCharacter in input {
    // DEBUG : What Character are we looking at now?
    print(individualCharacter)

    // Is the character happy, sad, of neither?
    if individualCharacter == "😀" ||
        individualCharacter == "😊" ||
        individualCharacter == "😄" ||
        individualCharacter == "😃" ||
        individualCharacter == "🙂" {
        happyCount += 1
    } else if individualCharacter == "☹️" ||
        individualCharacter == "😕" ||
        individualCharacter == "😔" ||
        individualCharacter == "🙁" {
        sadCount += 1
    }
}

//OUTPUT
if happyCount > sadCount {
    print("happy")
} else if happyCount < sadCount {
    print("sad")
} else if happyCount == 0 && sadCount == 0 {
    print("none")
} else if happyCount == sadCount {
    print("unsure")
}
