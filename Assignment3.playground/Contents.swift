/*:
 ## Homework 3
 
 Name: Aimee Jin
 
 Date: September 7, 2026
 */


import UIKit

// Closures

/*
 c2f is the name of the closure expression that converts Celsius to Fahrenheit.
 (celsius: Int) is the input and it accepts whole numbers.
 Double is the output, which contains decimals.
 The second line applies the formula and returns the Fahrenheit value.
 */

let c2f = { (celsius: Int) -> Double in
    return Double(celsius) * 9/5 + 32
}

/*
 f2c is the name of the closure expression that converts Fahrenheit to Celsius.
 (fahrenheit: Int) is the input and it accepts whole numbers.
 Double is the output, which contains decimals.
 The second line applies the formula and returns the Celsius value.
 */

let f2c = { (fahrenheit: Int) -> Double in
    return Double(fahrenheit - 32) * 5 / 9
}

let fahrenheit = c2f(25)
print("25°C is \(fahrenheit)°F")

let celsius = f2c(77)
print("77°F is \(celsius)°C")


// Higher-order functions

/*
 As a higher-order function, convertTemperature takes another function as one of its inputs.
 Instead of performing a conversion like the earlier closure expressions, it simply runs the given conversion closure.
 The function convertTemperature contains two inputs:
 _ temperature: Int is the first input, and it is the value to convert.
 using: (Int) -> Double is the second input, and it is what makes convertTemperature higher-order.
 The second -> Double is the output, which contains decimals.
 */
func convertTemperature(_ temperature: Int, using: (Int) -> Double) -> Double {
    return using(temperature)
}

let tempInF = convertTemperature(25, using: c2f)
print("25°C = \(tempInF)°F")

let tempInC = convertTemperature(77, using: f2c)
print("77°F = \(tempInC)°C")


// Another unit: Kelvin

/*
 c2k is the name of the closure expression that converts Celsius to Kelvin.
 (celsius: Int) is the input and it accepts whole numbers.
 Double is the output, which contains decimals.
 The second line applies the formula and returns the Kelvin value.
  */

let c2k = { (celsius: Int) -> Double in
    return Double(celsius) + 273.15
}

/*
 k2c is the name of the closure expression that converts Kelvin to Celsius.
 (kelvin: Int) is the input and it accepts whole numbers.
 Double is the output, which contains decimals.
 The second line applies the formula and returns the Celsius value.
 */

let k2c = { (kelvin: Int) -> Double in
    return Double(kelvin) - 273.15
}

/*
 f2k is the name of the closure expression that converts Fahrenheit to Kelvin.
 (fahrenheit: Int) is the input and it accepts whole numbers.
 Double is the output, which contains decimals.
 The second line applies the formula and returns the Kelvin value.
 */

let f2k = { (fahrenheit: Int) -> Double in
    return Double(fahrenheit - 32) * 5 / 9 + 273.15
}

/*
 k2f is the name of the closure expression that converts Kelvin to Fahrenheit.
 (kelvin: Int) is the input and it accepts whole numbers.
 Double is the output, which contains decimals.
 The second line applies the formula and returns the Fahrenheit value.
 */

let k2f = { (kelvin: Int) -> Double in
    return (Double(kelvin) - 273.15) * 9 / 5 + 32
}

let tempInK = convertTemperature(0, using: c2k)
print("0°C = \(tempInK) K")

let tempInC1 = convertTemperature(273, using: k2c)
print("273 K = \(tempInC1)°C")

let tempInK1 = convertTemperature(32, using: f2k)
print("32°F = \(tempInK1) K")

let tempInF1 = convertTemperature(300, using: k2f)
print("300 K = \(tempInF1)°F")
