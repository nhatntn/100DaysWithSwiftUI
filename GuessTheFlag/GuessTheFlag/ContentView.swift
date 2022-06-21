//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by nhatnt on 6/21/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingALert = false
    var body: some View {
        Button {
            showingALert = true
        } label: {
            Button("Button 4") { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
        }
        .alert("Important message", isPresented: $showingALert) {
            Button("Delete", role: .destructive) {
                
            }
            Button("Cancel", role: .cancel) {
                
            }
        } message: {
            Text("Please read this")
        }
    }
    
    func executeDelete() {
        print("Now deleting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
