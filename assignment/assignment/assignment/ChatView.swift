//
//  ChatView.swift
//  assignment
//
//  Created by Aditya Raj on 18/03/25.
//

import SwiftUI

struct ChatView: View {
    @State private var notifications: [String] = ["Welcome to SoundverseAI!"]
    @State private var showNotifications = false

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Hello! Welcome to SoundverseAI Assignment.")
                            .padding()
                            .background(Color.blue.opacity(0.2))
                            .cornerRadius(10)
                            .frame(maxWidth: 250, alignment: .leading)
                            .padding()
                    }
                }
                Spacer()
            }
            .navigationBarTitle("Soundverse", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: { print("Profile Clicked") }) {
                    Image(systemName: "person.circle")
                        .font(.title)
                },
                trailing: Button(action: { showNotifications.toggle() }) {
                    Image(systemName: "bell")
                        .font(.title)
                }
            )
            .sheet(isPresented: $showNotifications) {
                NotificationView(notifications: $notifications)
            }
        }
    }
}
#Preview {
    ChatView()
}
