//
//  HW3.swift
//  HW3
//  Created by Samman Tyata on 11/3/24.
//

import SwiftUI

struct HW3: View {
    @AppStorage("counter") private var counter: Int = 0
    @AppStorage("shouldNavigateToDetail") private var shouldNavigateToDetail: Bool = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Counter: \(counter)")
                    .font(.largeTitle)

                Button(action: {
                    counter += 1
                }) {
                    Text("Increase Counter")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button(action: {
                    counter = 0
                }) {
                    Text("Clear Counter")
                        .font(.title)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button("Go to Detail View") {
                    shouldNavigateToDetail = true // Set the flag to true when navigating
                }
                .font(.title)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
            .onAppear {
                // Check if we should navigate to DetailView
                if shouldNavigateToDetail {
                    shouldNavigateToDetail = true // Reset after using it
                }
                print("HW3 has resumed with counter: \(counter)")
            }
            .navigationDestination(isPresented: $shouldNavigateToDetail) {
                DetailView() // Navigate to DetailView if shouldNavigateToDetail is true
            }
        }
    }
}

#Preview {
    HW3()
}
