//
//  MessengerSwiftUIApp.swift
//  MessengerSwiftUI
//
//  Created by Deepika Ramesh on 7/5/23.
//



import SwiftUI

@main
struct MessengerSwiftUIApp: App {
	@StateObject var appRootState = AppRootState()
	
    var body: some Scene {
        WindowGroup {
			switch appRootState.state {
				case .login:
					LoginView().environmentObject(appRootState)
				case .signUp:
					SignUp()
				case .tabView:
					RootTabBarView()
			}
        }
    }
}


class AppRootState: ObservableObject {
	enum States {
		case login
		case signUp
		case tabView
	}
	
	@Published var state: States = .login
}

struct SignUp: View {
	
	var body: some View {
		return Text("Sign up view!")
	}
}

struct RootTabBarView: View {
	var body: some View {
		return Text("Root tabbar view!")
	}
}
