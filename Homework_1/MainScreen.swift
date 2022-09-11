//
//  MainScreen.swift
//  Homework_1
//
//  Created by Admin on 11.09.2022.
//

import SwiftUI

struct MainScreen: View {
	@Binding var tabSelection: Int
	@Binding var isContactsOpen: Bool

	@State var text = NSMutableAttributedString(string: "")

    var body: some View {
		VStack{
			Button {
				tabSelection = 1
				isContactsOpen = true
			} label: {
				Text("Go to Contacts")
					.padding()
					.background(.mint)
					.foregroundColor(.white)
			}
			
			TextView(text: $text)
				.frame(width: 150, height: 100, alignment: .center)
				.border(.black, width: 1)
				.cornerRadius(5)
		}
		

		
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
		MainScreen(tabSelection: .constant(0), isContactsOpen: .constant(false))
    }
}


struct TextView: UIViewRepresentable {
	@Binding var text: NSMutableAttributedString

	func makeUIView(context: Context) -> UITextView {
		UITextView()
	}

	func updateUIView(_ uiView: UITextView, context: Context) {
		uiView.attributedText = text
	}
}
