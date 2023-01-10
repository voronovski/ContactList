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
        let dataStore = DataStore()
        
        for _ in 1...dataStore.firstNames.count {
            let firstName = dataStore.firstNames.randomElement() ?? "John"
            let lastName = dataStore.lastNames.randomElement() ?? "Dow"
            let phone = dataStore.phones.randomElement() ?? "111-222-3344"
            
            let person = Person(firstName: firstName, lastName: lastName, phone: phone)
            persons.append(person)
        }
        
        return persons
    }
}
