//
//  ContentView.swift
//  Homework_1
//
//  Created by Admin on 11.09.2022.
//

import SwiftUI

struct ContentView: View {
	@State var tabSection: Int = 0
	@State var isContactsOpen: Bool = false

	
	var body: some View {
		TabView(selection: $tabSection){
			
			MainScreen(tabSelection: $tabSection, isContactsOpen: $isContactsOpen)
				.tag(0)
				.tabItem{
					Label("Home", systemImage: "house.fill")
				}
			
			ProfileScreen(tabSelection: $tabSection, isContactsOpen: $isContactsOpen)
				.tag(1)
				.tabItem{
					Label("Profile", systemImage: "brain.head.profile")
				}
			
			SettingsScreen(tabSelection: $tabSection)
				.tag(2)
				.tabItem{
					Label("Settings", systemImage: "gearshape.fill")
				}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
