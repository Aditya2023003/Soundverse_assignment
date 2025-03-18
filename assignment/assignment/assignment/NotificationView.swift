//
//  NotificationView.swift
//  assignment
//
//  Created by Aditya Raj on 18/03/25.
//

import SwiftUI

struct NotificationView: View {
    @Binding var notifications: [String]

    var body: some View {
        NavigationView {
            List {
                ForEach(notifications, id: \.self) { notification in
                    Button(action: {
                        addDummyNotification()
                    }) {
                        Text(notification)
                    }
                }
            }
            .navigationBarTitle("Notifications", displayMode: .inline)
        }
    }

    func addDummyNotification() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            DispatchQueue.main.async {
                notifications.append("New notification at \(Date())")
            }
        }
    }
}

#Preview {
    NotificationView(notifications: .constant(["Notification 1", " Notification 2"]))
}
