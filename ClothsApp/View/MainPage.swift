//
//  mainPage.swift
//  ClothsApp
//
//  Created by Intervest on 2023-01-16.
//

import SwiftUI

struct mainPage: View {
    
    @State var currentTab : Tab = .Home
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        VStack(spacing:0){
            TabView(selection: $currentTab){
                Text("Home").tag(Tab.Home)
                Text("Linked").tag(Tab.Linked)
                Text("Profile").tag(Tab.Profile)
                Text("Cart").tag(Tab.Cart)
            }
            HStack(spacing:0){
                ForEach(Tab.allCases, id: \.self){tab in
                    Button{
                        currentTab = tab
                    } label: {
                        Image(tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ?
                                             Color.purple: Color.black.opacity(0.3))
                    }
                }
            }
        }
        
    }
    
}
    
    struct mainPage_Previews: PreviewProvider {
        static var previews: some View {
            mainPage()
        }
    }
    
    
    enum Tab: String, CaseIterable {
        case Home = "Home"
        case Linked = "Linked"
        case Profile = "Profile"
        case Cart = "Cart"
    }
    
