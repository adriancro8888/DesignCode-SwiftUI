//
//  TabBar.swift
//  DesignCode
//
//  Created by Mithun x on 7/15/19.
//  Copyright © 2019 Mithun. All rights reserved.
//

import SwiftUI

struct TabBar: View {
   var body: some View {
      TabbedView {
         Home().tabItem {
            Image("IconHome")
            Text("Home")
         }
         .tag(1)
         ContentView().tabItem {
            Image("IconCards")
            Text("Certificates")
         }
         .tag(2)
         UpdateList().tabItem {
            Image("IconSettings")
            Text("Updates")
         }
         .tag(3)
      }
   }
}

#if DEBUG
struct TabBar_Previews: PreviewProvider {
   static var previews: some View {
      TabBar()
         .environment(\.colorScheme, .dark)
   }
}
#endif