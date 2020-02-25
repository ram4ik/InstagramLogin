//
//  ContentView.swift
//  InstagramLogin
//
//  Created by ramil on 25.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .bottom)
                .clipShape(Circle()).shadow(radius: 10)
                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                .opacity(0.4)
            Text("Foto App")
                .font(Font.title)
                .padding(.bottom)
            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
