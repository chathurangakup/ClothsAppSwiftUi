//
//  SwiftUIView.swift
//  ClothsApp
//
//  Created by Intervest on 2023-01-15.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            Text("Find your \nGadget")
                .font(.system(size: 36))
                .fontWeight(.bold)
                .foregroundColor(.white)


            
            Image("undraw_game_day_ucx9")
                       .resizable()
                       .aspectRatio( contentMode: .fit)


            
            Button{
                
            }label: {
                Text("Get start")
                    .font(.system(size: 28))
                    .fontWeight(.semibold)
                    .padding(.vertical, 18)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color("black").opacity(0.1), radius: 5, x: 5, y: 5)
                    . foregroundColor(Color.purple)
            }
            .padding(.horizontal,30)
            .offset(y:  getReact().height < 720 ? 0 : 40)
            
            Spacer()
            
        }
        .padding()
        .padding(.top, getReact().height < 720 ? 0 : 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color.purple
            )
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

extension View{
    func getReact() -> CGRect{
        return UIScreen.main.bounds
    }
}
