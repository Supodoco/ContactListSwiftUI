//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Supodoco on 21.12.2022.
//

import SwiftUI

struct ContactsView: View {
    var contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink(contact.fullName) {
                ContactDetailView(person: contact)
            }
        }
        .listStyle(.plain)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Person.getPersons())
    }
}
