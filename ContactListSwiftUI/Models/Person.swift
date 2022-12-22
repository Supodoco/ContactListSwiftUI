//
//  Models.swift
//  ContactList
//
//  Created by Supodoco on 18.10.2022.
//
import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
}

extension Person {
    static func getPersons() -> [Person] {
        let data = DataStore.shared
        return (0..<data.names.count).map {
            Person(
                name: data.names[$0],
                surname: data.surnames[$0],
                phoneNumber: data.phoneNumbers[$0],
                email: data.emails[$0]
            )
        }
    }
}

