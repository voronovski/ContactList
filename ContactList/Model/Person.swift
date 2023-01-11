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
            let randomName = Int.random(in: 0..<firstNames.count)
            let firstName = firstNames.remove(at: randomName)
            
            let randomLastName = Int.random(in: 0..<lastNames.count)
            let lastName = lastNames.remove(at: randomLastName)
            
            let randomPhone = Int.random(in: 0..<phones.count)
            let phone = phones.remove(at: randomPhone)
            
            let person = Person(firstName: firstName, lastName: lastName, phone: phone)
            persons.append(person)
        }
        
        return persons
    }
}
