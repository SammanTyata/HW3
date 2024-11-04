//
//  DetailView.swift
//  HW3
//
//  Created by Samman Tyata on 11/3/24.
//

// DetailView.swift

import SwiftUI

struct DetailView: View {
    @AppStorage("counter") private var counter: Int = 0
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(spacing: 20) {
            Text("Current Counter Value:")
                .font(.title)
            Text("\(counter)")
                .font(.largeTitle)
                .bold()

            Button("Back") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
        .onAppear {
            print("DetailView has resumed with counter: \(counter)")
        }
    }
}

#Preview {
    DetailView()
}



