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
        let data = DataStore()
        
        for _ in 1...data.firstNames.count {
            let shuffledFirstNames = data.firstNames.shuffled()
            let firstName = shuffledFirstNames.first
            
            let shuffledLastNames = data.lastNames.shuffled()
            let lastName = shuffledLastNames.first
            
            let shuffledPhones = data.phones.shuffled()
            let phones = shuffledPhones.first
            
            let person = Person(firstName: firstName, lastName: lastName, phone: phone)
            persons.append(person)
        }
        return persons
    }
}
