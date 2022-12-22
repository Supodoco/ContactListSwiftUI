//
//  DataManager.swift
//  ContactList
//
//  Created by Supodoco on 18.10.2022.
//

import Foundation


class DataStore {
    static let shared = DataStore()
    
    private init() {}
    
    let names = [
        "Liam",
        "Olivia",
        "Noah",
        "Emma",
        "Oliver",
        "Charlotte",
        "Elijah",
        "Amelia",
        "James",
        "Ava"
    ].shuffled()
    
    let surnames = [
        "Thompson",
        "Evans",
        "Walker",
        "White",
        "Roberts",
        "Green",
        "Hall",
        "Wood",
        "Jackson",
        "Clark"
    ].shuffled()
    
    let phoneNumbers = (0...9).map {
        String(Int.random(in: 8_900_000_00_00...8_990_000_00_00 + $0))
    }.shuffled()
        
    let emails = (0...9).map {
        String(
            repeating: ["a","q","z","c","v","d","r","t","o","p"][$0],
            count: $0 / 2 + 5
        ) + "@gmail.com"
    }.shuffled()
}
