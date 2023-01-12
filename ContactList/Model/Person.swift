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
            let randomName = Int.random(in: 0..<data.firstNames.count)
            let firstName = data.firstNames.remove(at: randomName)
            
            let randomLastName = Int.random(in: 0..<data.lastNames.count)
            let lastName = data.lastNames.remove(at: randomLastName)
            
            let randomPhone = Int.random(in: 0..<data.phones.count)
            let phone = data.phones.remove(at: randomPhone)
            
            let person = Person(firstName: firstName, lastName: lastName, phone: phone)
            persons.append(person)
        }
        
        return persons
    }
}
