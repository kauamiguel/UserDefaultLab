//
//  ContentView.swift
//  userDefaultLab
//
//  Created by Kaua Miguel on 06/07/23.
//

import SwiftUI

struct Character{
    var name:String = "Joao"
    var skin:String = "Image"
    var maxScore:Int = UserDefaults.standard.integer(forKey: "MaxScore")
}

struct ContentView: View {

    @State var mainCharacter:Character = Character()
    
    var body: some View {
        VStack {
            Button {
                mainCharacter.maxScore += 1
                UserDefaults.standard.set(self.mainCharacter.maxScore, forKey: "MaxScore")
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 100, height: 50)
                    .overlay {
                        Text("Presse here")
                            .foregroundColor(.black)
                    }
            }
            
            Text("\(self.mainCharacter.maxScore)")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
