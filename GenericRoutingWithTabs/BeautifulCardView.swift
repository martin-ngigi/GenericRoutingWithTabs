//
//  BeautifulCardView.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

struct BeautifulCardView: View {
    // Animation state for background gradient
    @State private var animateGradient = false
    // Button press animation state
    @State private var isPressed = false
    
    var body: some View {
        ZStack {
            // Animated gradient background
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.blue, Color.pink, Color.orange]),
                startPoint: animateGradient ? .topLeading : .bottomTrailing,
                endPoint: animateGradient ? .bottomTrailing : .topLeading
            )
            .animation(
                Animation.linear(duration: 8)
                    .repeatForever(autoreverses: true),
                value: animateGradient
            )
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                animateGradient.toggle()
            }
            
            VStack(spacing: 30) {
                // Card with blur and translucency
                VStack(spacing: 25) {
                    // Large colorful icon with shadow
                    Image(systemName: "sparkles")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color.yellow, Color.orange],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: Color.orange.opacity(0.7), radius: 10, x: 0, y: 5)
                    
                    // Gradient text title
                    Text("Discover SwiftUI")
                        .font(.system(size: 34, weight: .heavy, design: .rounded))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color.pink, Color.purple],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .shadow(color: Color.pink.opacity(0.6), radius: 5, x: 0, y: 2)
                    
                    // Subtitle with secondary color
                    Text("Build beautiful apps with less code and more fun.")
                        .font(.title3)
                        .foregroundColor(.white.opacity(0.85))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                    
                    // Primary button with press animation
                    Button(action: {
                        print("Get Started tapped!")
                    }) {
                        Text("Get Started")
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                LinearGradient(
                                    colors: [Color.pink, Color.purple],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(15)
                            .shadow(color: Color.purple.opacity(0.6), radius: 10, x: 0, y: 5)
                            .scaleEffect(isPressed ? 0.95 : 1.0)
                            .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isPressed)
                    }
                    .simultaneousGesture(
                        DragGesture(minimumDistance: 0)
                            .onChanged { _ in isPressed = true }
                            .onEnded { _ in isPressed = false }
                    )
                    
                    // Secondary outlined button
                    Button(action: {
                        print("Learn More tapped!")
                    }) {
                        Text("Learn More")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.white.opacity(0.8), lineWidth: 2)
                            )
                    }
                    .foregroundColor(.white)
                    .opacity(0.85)
                }
                .padding(30)
                .background(.ultraThinMaterial) // translucent blur effect
                .cornerRadius(30)
                .shadow(color: Color.black.opacity(0.25), radius: 20, x: 0, y: 10)
                .padding(.horizontal, 30)
            }
        }
    }
}

#Preview {
    BeautifulCardView()
}
