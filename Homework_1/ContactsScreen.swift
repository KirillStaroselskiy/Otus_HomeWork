//
//  ContactsScreen.swift
//  Homework_1
//
//  Created by Admin on 11.09.2022.
//

import SwiftUI

struct ContactsScreen: View {
	let name: String

    var body: some View {
		Text(name)
				   .font(.largeTitle)
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
		ContactsScreen(name: "")
    }
}
