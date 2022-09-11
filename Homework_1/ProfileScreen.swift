//
//  ProfileScreen.swift
//  Homework_1
//
//  Created by Admin on 11.09.2022.
//

import SwiftUI

struct ProfileScreen: View {
	@Binding var tabSelection: Int
	@Binding var isContactsOpen: Bool
	
	var data = ["About me", "Contacts", "Password"]
	
	var body: some View {
		NavigationView {
			List {
				ForEach(data, id: \.self) { item in
					NavigationLink(destination: ContactsScreen(name: item), isActive: $isContactsOpen) {
						Text(item)
					}
				}
				.navigationTitle("Profile")
				.listStyle(.grouped)
			} // List
		}
	}
}

struct ProfileScreen_Previews: PreviewProvider {
	static var previews: some View {
		ProfileScreen(tabSelection: .constant(1), isContactsOpen: .constant(false))
	}
}
