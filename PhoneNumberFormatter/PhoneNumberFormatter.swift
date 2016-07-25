//
// Created by Mitul Manish on 25/07/2016.
// Copyright (c) 2016 mitulmanish. All rights reserved.
//

import Foundation

class PhoneNumberFormatter {

    public static func convert(phoneNumber: String) -> String {

        var phoneNumberArray = phoneNumber.characters.map { String($0) }
        var filteredPhoneNumberArray = phoneNumberArray.filter{$0 != " " && $0 != "-"}

        var remainder = filteredPhoneNumberArray.count % 3
        var splitIndex = 3
        var modifiedPhoneNumber = ""
        var counter = 1

        for index in 0..<filteredPhoneNumberArray.count {
            modifiedPhoneNumber += filteredPhoneNumberArray[index]

            if (counter++ % splitIndex == 0) && ((index + 1) != filteredPhoneNumberArray.count) {
                modifiedPhoneNumber += "-"
            }

            if (remainder != 0 && index == filteredPhoneNumberArray.count - 4/remainder) {
                splitIndex = 2
            }
        }
        return modifiedPhoneNumber
    }
}
