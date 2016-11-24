//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]

    
    // 2. takes a flavor of ice-cream as input and return back an array of names of people who like that ice-cream flavor
    func names(forFlavor flavor: String) -> [String] {
        var result: [String] = []
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                result.append(key)
            }
        }
        return result
    }
    
    // 3. takes in a flavor of ice-cream as input and return back the number of pople who like that ice-cream flavor
    func count(forFlavor flavor: String) -> Int {
        var result: [String] = []
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                result.append(key)
            }
        }
        return result.count
    }
    
    // 4. takes in a persons name as input and return back the flavor that that person likes
    func flavor(forPerson name: String) -> String? {
        for (key, value) in favoriteFlavorsOfIceCream {
            if key == name {
                return value
            }
        }
        return nil
    }
    
    // 5. changes the given person's preferred ice cream flavor to a new one
    func replace(flavor: String, forPerson person: String) -> Bool {
        for (key, _) in favoriteFlavorsOfIceCream {
            if key == person {
                favoriteFlavorsOfIceCream[key] = flavor
                return true
            }
        }
        return false
    }
    
    // 6. takes in a person as input and remove them from the dictionary
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) != nil{
            return true
        } else {
            return false
        }
    }
    
    // 7. number of people
    func numberOfAttendees() -> Int {
        return Array(favoriteFlavorsOfIceCream.keys).count
    }
    
    // 8. add person and his/he favorite flavor
    func add(person: String, withFlavor flavor: String) -> Bool {
        for (key, _) in favoriteFlavorsOfIceCream {
            if key == person {
                return false
            }
        }
        favoriteFlavorsOfIceCream[person] = flavor
        return true
    }
    
    // 9. list of people
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var result = "\(allNames.first!) likes \(favoriteFlavorsOfIceCream[allNames.first!]!)"
        for i in 1..<allNames.count {
            result += "\n\(allNames[i]) likes \(favoriteFlavorsOfIceCream[allNames[i]]!)"
        }
        return result
    }

}
