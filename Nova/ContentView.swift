//
//  ContentView.swift
//  Nova
//
//  Created by Abcom on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.leading) {
            
            
            HStack(){
                Text("Hey there! I'm ")
                    .foregroundColor(Color(.MediumGray))
                    .font(Font.boldFont(size: 48)) +
                
                Text("Nova")
                    .font(Font.boldFont(size: 48))
                
                    .foregroundStyle(
                        
                        .linearGradient(
                            Gradient(colors: [Color(.PrimaryDark), Color(.Primary)]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                
                Spacer()
               
            }
            .padding(.horizontal,20)
            
            Spacer().frame(height: 32)
            
            
            HStack{
                
                Spacer()
                
                Text("Select the topic or write your questions below")
                    .foregroundColor(Color(.Subtitle))
                    .font(Font.regularFont(size: 16))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Spacer()
                
            }
            
            Spacer().frame(height: 32)
            
            VStack{
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 20) {
                        ForEach(0...9, id: \.self) { index in
                            PromptCell()
                                .frame(width: 200,height: 310)
                                .cornerRadius(12)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .frame(height: 310)
            .background(.green)
            
            
            Spacer()
            

        }
        
        
    }
}

#Preview {
    ContentView()
}



struct PromptCell: View {
    var body: some View{
        
        
        VStack(alignment:.leading){
            
            Image(systemName: "gift.fill")
                .resizable()
                .frame(width:30, height: 30)
            
            Spacer()
            
            VStack(spacing:16){
                
                HStack(alignment:.center){
                    
                    Text("Plan the\nPerfect Day")
                        .foregroundColor(Color(.white))
                        .font(Font.semiboldFont(size: 18))
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .foregroundColor(Color(.white))

                    
                }
                
                HStack{
                    Text("Let's craft an amazing day for you!")
                        .foregroundColor(Color(.white))
                        .font(Font.regularFont(size: 16))
                    
                    Spacer()
                }
            }
            
        }
        .padding(16)
        .background(.red)
        
        
        
        
        
    }
}
