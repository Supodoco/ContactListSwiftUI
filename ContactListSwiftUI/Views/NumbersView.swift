//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Supodoco on 21.12.2022.
//

import SwiftUI

struct NumbersView: View {
    var contacts: [Person]
    var body: some View {
        List(contacts) { contact in
            Section(contact.fullName) {
                ImageWithTextView(info: contact.phoneNumber, image: .phone)
                ImageWithTextView(info: contact.email, image: .tray)
            }
        }
        .listStyle(.plain)        
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getPersons())
    }
}
