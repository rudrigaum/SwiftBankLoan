//
//  SwiftBankLoanView.swift
//  Pods
//
//  Created by Rodrigo Cerqueira Reis on 10/06/24.
//

import SwiftUI

public struct SwiftBankLoanView: View {
    
    // MARK: - UI Components
    
    private let backgroundColor = Color(red: 240.0/255.0,
                                        green: 240.0/255.0,
                                        blue: 240/255.0)
    
    private let yellowColor = Color(red: 255.0/255.0,
                                    green: 186.0/255.0,
                                    blue: 5.0/255.0)
    
    // MARK: - Init
    
    public init() { }
    
    // MARK: - View 
    
    public var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(gradient: Gradient(colors: [yellowColor, backgroundColor]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                headerView
                    .padding(.leading, 20)
                cardView
                    .padding()
            }
        }
    }
    
    var headerView: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Empréstimo")
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                    .fontWeight(.light)
                
                Text("SwiftBank")
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                    .fontWeight(.light)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.top)
            .padding(.bottom, 3)
            
            Text("Antecipe seus planos!")
                .font(.system(size: 24))
                .foregroundColor(.black)
                .fontWeight(.light)
        }
    }
    
    var cardView: some View {
        RoundedRectangle(cornerRadius: 7)
            .frame(maxWidth: .infinity)
            .frame(height: 140)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 7))
            .shadow(color: Color.gray.opacity(0.5), radius: 7, x: 0, y: 2)
            .overlay {
                VStack(alignment: .leading) {
                    headerCardView
                        .padding(.top, 20)
                        .padding(.horizontal)
                    
                    headerTextCardView
                        .padding(.horizontal)
                    
                    Spacer()
                }
            }
    }
    
    var headerCardView: some View {
        VStack(alignment: .leading) {
            Text("Veja sua opção de crédito pré-aprovada:")
                .font(.system(size: 16))
                .foregroundColor(.black)
                .fontWeight(.light)
                .padding(.bottom, 5)
            
            HStack {
                Image(systemName: "dollarsign.arrow.circlepath")
                    .font(.system(size: 22))
                Text("Empréstimo Pessoal")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                    .fontWeight(.light)
                Spacer()
            }
            .padding(.bottom, 5)
        }
    }
    
    var headerTextCardView: some View {
        HStack {
            Text("Guardar dinheiro é o primeiro passo para realizar grandes sonhos.")
                .font(.system(size: 12))
                .foregroundColor(.black)
                .fontWeight(.light)
        }
    }
}

// MARK: - Preview

struct SwiftBankLoanView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftBankLoanView()
    }
}
