//
//  ContentView.swift
//  Quadratic_Solver
//
//  Created by user231229 on 3/2/23.
//


import SwiftUI

struct ContentView: View {
    @State private var aValue = ""
    @State private var bValue  = ""
    @State private var cValue = ""
    @State var x1Value = ""
    @State var x2Value = ""
    
    var body: some View {
        VStack (spacing:20){
            Text("Quadratic Slover")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("The Quadratic form is:")
            Image("quadratic")
                .resizable()
                .scaledToFit()
            VStack {
                Text(Image(systemName: "a.circle.fill"))+Text("Enter the first term")
                TextField("", text: $aValue).textFieldStyle(.roundedBorder)
                    .border(Color.black)
                    .frame(width:300,height: nil)
                
                Text(Image(systemName: "b.circle.fill"))+Text("Enter the first term")
                TextField("", text: $bValue).textFieldStyle(.roundedBorder)
                    .border(Color.black)
                    .frame(width:300,height: nil)
                
                
                Text(Image(systemName: "c.circle.fill"))+Text("Enter the first term")
                TextField("", text: $cValue).textFieldStyle(.roundedBorder).border(Color.black)
                .frame(width:300,height: nil)
                
            }
                VStack(spacing:20){
                    Button  {
                        solveForX()
                    }label:{
                        Text("Solve for X")
                    }
                    Text("x = \(x1Value) x= \(x2Value)")
                }
                
            
        }
        
    }
    
 func solveForX()
    {
        //  your code here
        guard let avalue = Double(aValue),
                let bvalue =  Double(bValue),
                let cvalue = Double (cValue) else{return}
        
        let bSquared = bvalue * bvalue
        let discriminant = bSquared - ( 4 * avalue * cvalue)
        let discriminantabAbsSqrt = sqrt (fabs(discriminant))
        
        let topFormula1 = -bvalue + discriminantabAbsSqrt
        let topFormula2 = -bvalue - discriminantabAbsSqrt
        
        let bottomFormula = 2 * avalue
        
        let totalx1 = topFormula1 / bottomFormula
        let totalx2 = topFormula2 / bottomFormula
        
        x1Value = String(format: "%.4f", totalx1)
        x2Value = String(format: "%.4f", totalx2)
        
        
        
                
    }
}

    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
