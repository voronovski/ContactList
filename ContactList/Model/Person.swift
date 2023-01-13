//
//  Person.swift
//  ContactList
//
//  Created by Aleksei Voronovskii on 1/9/23.
//

struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    
    var name: String {
        "\(firstName) \(lastName)"
    }
    
    var email: String {
        "\(firstName.first?.lowercased() ?? "")\(lastName.lowercased())@mail.com"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let shuffledFirstNames = DataStore.shared.firstNames.shuffled()
        let shuffledLastNames = DataStore.shared.lastNames.shuffled()
        let shuffledPhones = DataStore.shared.phones.shuffled()
        
        let iterationCount = min(
            shuffledFirstNames.count,
            shuffledLastNames.count,
            shuffledPhones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: shuffledFirstNames[index],
                lastName: shuffledLastNames[index],
                phone: shuffledPhones[index]
            )
            persons.append(person)
        }
        return persons
    }
}
