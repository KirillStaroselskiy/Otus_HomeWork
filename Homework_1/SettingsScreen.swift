//
//  SettingsScreen.swift
//  Homework_1
//
//  Created by Admin on 11.09.2022.
//

import SwiftUI

struct SettingsScreen: View {
	@Binding var tabSelection: Int
	@State private var showingSheet = false

    var body: some View {
		Button("Show Sheet") {
			showingSheet.toggle()
		}
		.sheet(isPresented: $showingSheet) {
			SheetView()
		}
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
		SettingsScreen(tabSelection: .constant(2))
    }
}

struct SheetView: View {
	@Environment(\.dismiss) var dismiss

	var body: some View {
		Button("Press to dismiss") {
			dismiss()
		}
		.font(.title)
		.foregroundColor(.yellow)
		.padding()
		.background(.teal)
	}
}
