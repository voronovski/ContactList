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
        
        for _ in 1...firstNames.count {
            let firstName = firstNames.randomElement() ?? "John"
            let lastName = lastNames.randomElement() ?? "Dow"
            let phone = phones.randomElement() ?? "111-222-3344"
            
            let person = Person(firstName: firstName, lastName: lastName, phone: phone)
            persons.append(person)
        }
        
        return persons
    }
}
