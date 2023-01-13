//
//  DataStore.swift
//  ContactList
//
//  Created by Aleksei Voronovskii on 1/9/23.
//

final class DataStore {
    
    static let shared = DataStore()
    
    let firstNames = ["Mortie", "Elinore", "Katalina", "Mellicent", "Hailey", "Marcelline", "Daisy", "Cami", "Gawain", "Tyrone", "Daron", "Rice", "Ludvig", "Selma", "Bent", "Maybelle", "Roseann", "Rip", "Fulvia", "Felicle", "Ive", "Tabbi", "Mickey", "Myrtice", "Beryl", "Gilberto", "Carilyn", "Ludvig", "Peyton", "Emyle", "Gilemette", "Arlana", "Carey", "Garrek", "Thia"]
    
    let lastNames = ["Eim", "Winkle", "Braun", "Trahar", "Jore", "Tooley", "Bannester", "Reeken", "Burl", "Grouer", "Mushrow", "Caen", "Brandoni", "Chetter", "Adame", "Blundin", "Stott", "Weddup", "Harbertson", "Kristof", "Marsland", "Josefsson", "Tibb", "Haversham", "Dootson", "Bending", "Pettipher", "Mottershead", "Bratt", "Webb", "Wattisham", "Arnell", "Brandts", "Upham", "Stiff"]
    
    let phones = ["816-826-8908", "353-778-4263", "759-666-3020", "968-979-3963", "199-810-9268", "336-884-8469", "676-665-5046", "784-835-4379", "561-185-5850", "120-847-9326", "315-517-0632", "319-153-7217", "159-531-5273", "798-551-6548", "991-772-3193", "196-828-7859", "413-378-1004", "641-358-1151", "134-160-5265", "739-865-9528", "855-661-8937", "417-753-1636", "959-910-8405", "861-921-8635", "232-727-2422", "964-770-9126", "650-176-1962", "372-805-7490", "432-824-9210", "351-473-2518", "499-664-4702", "978-833-4266", "504-650-9140", "111-185-9802", "217-915-9942"]
    
    private init() {}
}
