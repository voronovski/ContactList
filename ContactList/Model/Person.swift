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
        
        for _ in 1...DataStore.shared.firstNames.count {
            let shuffledFirstNames = DataStore.shared.firstNames.shuffled()
            let firstName = shuffledFirstNames.first ?? "John"
            
            let shuffledLastNames = DataStore.shared.lastNames.shuffled()
            let lastName = shuffledLastNames.first ?? "Dow"
            
            let shuffledPhones = DataStore.shared.phones.shuffled()
            let phone = shuffledPhones.first ?? "111-222-3333"
            
            let person = Person(firstName: firstName, lastName: lastName, phone: phone)
            persons.append(person)
        }
        return persons
    }
}
