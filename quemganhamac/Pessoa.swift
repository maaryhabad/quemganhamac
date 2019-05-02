//
//  Pessoa.swift
//  quemganhamac
//
//  Created by Mariana Beilune Abad on 02/05/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import Foundation
import UIKit

class Pessoa {
    
    var nome: String
    var idade: Int
    var descricao: String
    var imagem: UIImage
    
    init(nome: String, idade: Int, descricao: String, imagem: UIImage) {
        self.nome = nome
        self.idade = idade
        self.descricao = descricao
        self.imagem = imagem
    }
}
