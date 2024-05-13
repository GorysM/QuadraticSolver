//
//  ContentView.swift
//  QuadraticSolver
//  Starter project code
//  Created by Philip Trwoga on 09/02/2023.
//

import SwiftUI


struct ContentView: View {
    @State var a = String()
    @State var b = String()
    @State var c = String()
    @State var x1: Double = 0.0
    @State var x2: Double = 0.0
    @State var solver = Solver()
    
    var body: some View {
        ZStack {
            Image("pexels-bess-hamiti-36487.jpg")
                .resizable()
                
                //.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            VStack {
                
                Text("Quadratic Solver")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("The quadratic form is: ")
                    .multilineTextAlignment(.center)
                    .padding()
                Image("quadraticForm")
                    .resizable()
                    .frame(width: 350, height: 75)
                    .multilineTextAlignment(.center)
                Label("Enter the first term", systemImage: "a.circle.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                TextField("1.0", text: $a)
                    .padding(.all)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 3)
                    .multilineTextAlignment(.center)
                    .padding()
                Label("Enter the second term", systemImage: "b.circle.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                TextField("6.0", text: $b)
                    .padding(.all)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 3)
                    .multilineTextAlignment(.center)
                    .padding()
                Label("Enter the third term", systemImage: "c.circle.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                TextField("1.0", text: $c)
                    .padding(.all)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 3)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button("Solve for X"){ let sol = solver.solveForX(a: a, b: b, c: c)
                    x1 = sol.x1
                    x2 = sol.x2
                }
                .padding()
                
                Text(String(format: "x = %.4f ",x1) + String(format: "x = %.4f",x2))
            }
           
            

        }
      
    }
    class Solver{
        func solveForX(a: String, b: String, c: String) -> (x1: Double, x2: Double)
        {
            let ax = Double (a) ?? 0.0
            let bx = Double (b) ?? 0.0
            let cx = Double (c) ?? 0.0
            let x1 = (-bx + sqrt(pow(bx, 2) - 4.0 * ax * cx))/(2.0 * ax)
            let x2 = (-bx - sqrt(pow(bx, 2) - 4.0 * ax * cx))/(2.0 * ax)
            print(String(x1) +  " " + String(x2))
            return(x1,x2)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
