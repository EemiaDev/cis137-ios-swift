/*:
 ### CIS137 iOS/Swift Programming
 * Assignment 4
 * Aimee Jin
 * September 15, 2026
 */


import UIKit

@propertyWrapper
struct NonEmpty {
    private var value: String

    var wrappedValue: String {
        get {
            value
        }
        set {
            if newValue.isEmpty {
                print("Keeping \"\(value)\".")
            } else {
                value = newValue
            }
        }
    }
    init(wrappedValue: String) {
        if wrappedValue.isEmpty {
            self.value = "n/a"
        } else {
            self.value = wrappedValue
        }
    }
}

struct Student {
    @NonEmpty var firstName: String
    @NonEmpty var lastName: String
}

// Create a student with empty last names
var student = Student(firstName: "Aimee", lastName: "")
print("First Name: \(student.firstName), Last Name: \(student.lastName)")


/*
 Explanation:
 
 What is the behavior that you defined?
 When a student is created with an empty string in either name field, the wrapper stores a default value of "n/a".
 When a name is added later, the wrapper stores the new value only if it is not empty.
 If the new value is an empty string, the wrapper keeps the previous name and prints a message.
 
 What happened when you created a student with an empty first name or last name?
 I created a student with firstName "Aimee" and an empty lastName. The output was "First Name: Aimee, Last Name: Unknown". The valid first name
 was kept, and the empty last name was replaced with the default value "n/a".
 
 */
