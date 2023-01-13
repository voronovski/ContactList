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
            let firstName = shuffledFirstNames.first ?? "John"
            
            let shuffledLastNames = data.lastNames.shuffled()
            let lastName = shuffledLastNames.first ?? "Dow"
            
            let shuffledPhones = data.phones.shuffled()
            let phone = shuffledPhones.first ?? "111-222-3333"
            
            let person = Person(firstName: firstName, lastName: lastName, phone: phone)
            persons.append(person)
        }
        return persons
    }
}
