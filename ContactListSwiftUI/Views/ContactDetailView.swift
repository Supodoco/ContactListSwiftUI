//
//  ContactsDetailView.swift
//  ContactListSwiftUI
//
//  Created by Supodoco on 21.12.2022.
//

import SwiftUI

enum ImageName: String {
    case phone
    case tray
}

struct ContactDetailView: View {
    let person: Person
    var body: some View {
//        List([person]) { _ in
//            Section(content: {
//                ImagePlaceholder(name: "person.fill")
//                ImageWithTextView(info: person.phoneNumber, image: .phone)
//                ImageWithTextView(info: person.email, image: .tray)
//            }, header: {})
//        }
        VStack {
            Divider()
            ImagePlaceholder(name: "person.fill")
            Divider()
                .padding(.bottom, 5)
            ImageWithTextView(info: person.phoneNumber, image: .phone)
            Divider()
                .padding(.bottom, 5)
            ImageWithTextView(info: person.email, image: .tray)
            Divider()
            Spacer()
        }
        .padding()
        .navigationTitle(person.fullName)
    }
}

struct ImagePlaceholder: View {
    let name: String
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: name)
                .resizable()
                .frame(width: 120, height: 120)
                .padding()
            Spacer()
        }
    }
}

struct ImageWithTextView: View {
    let info: String
    let image: ImageName
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: image.rawValue)
                .foregroundColor(.blue)
            Text(info)
            Spacer()
        }
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(person: Person.getPersons().first!)
    }
}
