//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Supodoco on 21.12.2022.
//

import SwiftUI

struct ContentView: View {
    private var contacts = Person.getPersons()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactsView(contacts: contacts)
                    .tabItem {
                        VStack {
                            Image(systemName: "person.2.fill")
                            Text("Contacts")
                        }
                    }
                NumbersView(contacts: contacts)
                    .tabItem {
                        VStack {
                            Image(systemName: "phone")
                            Text("Numbers")
                        }
                    }
            }
            .navigationTitle("Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
