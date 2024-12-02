//
//  test.swift
//  Nova
//
//  Created by Abcom on 02/12/24.
//

import SwiftUI

import SwiftUI

struct Test: View {
    var body: some View {
        ScrollView {
            LazyHStack(spacing: 16) {
                // Example cards
                ForEach(0..<5, id: \.self) { index in
                    CardView(
                        title: "Card Title \(index + 1)",
                        subtitle: "This is a description for card \(index + 1).",
                        iconName: "star.fill",
                        gradientColors: [Color.blue, Color.purple]
                    )
                }
            }
            .padding()
        }
    }
}

#Preview {
    Test()
}

// MARK: - CardView Component
struct CardView: View {
    var title: String
    var subtitle: String
    var iconName: String
    var gradientColors: [Color]
    
    var body: some View {
        HStack {
            // Icon
            Image(systemName: iconName)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.white)
                .padding()
                .background(Circle().fill(LinearGradient(
                    gradient: Gradient(colors: gradientColors),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )))
            
            // Text Content
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
            }
            Spacer()
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: gradientColors),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}
