//
//  ContentView.swift
//  MessengerSwiftUI
//
//  Created by Deepika Ramesh on 7/5/23.
//



import SwiftUI

struct LoginView: View {
	@State var userName: String = ""
	@State var password: String = ""
	@EnvironmentObject var appRootState: AppRootState
	
    var body: some View {
		VStack {
			Text("Messenger")
				.font(.title)
			Spacer()
				.frame(height: 50)
			TextField("Username", text: $userName)
				.textFieldStyle(.roundedBorder)
			Spacer()
				.frame(height: 20)
			SecureField("Password", text: $password)
				.textFieldStyle(.roundedBorder)
			Spacer()
				.frame(height: 20)
			Button {
				print("Pressed SignIN button")
				appRootState.state = .tabView
			} label: {
				Text("Sign In").frame(maxWidth: .infinity)
			}
			.buttonStyle(.borderedProminent)
			Spacer()
			Button("Don't have an account? Sign up") {
				print("Pressed sign up button!")
			}
		}.padding(.horizontal, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
