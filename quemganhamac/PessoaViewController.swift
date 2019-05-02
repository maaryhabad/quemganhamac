//
//  ViewController.swift
//  quemganhamac
//
//  Created by Mariana Beilune Abad on 02/05/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import UIKit

class PessoaViewController: UIViewController {
    
    
    @IBOutlet weak var imgPessoa: UIImageView!
    @IBOutlet weak var nomePessoa: UILabel!
    @IBOutlet weak var txtPessoa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let pessoas = [
        Pessoa(nome: "Ailtinho", idade: 30, descricao: "blablabla", imagem: UIImage(named: "01")!),
        Pessoa(nome: "Ana Paula Clemente", idade: 30, descricao: "blablabla", imagem: UIImage(named: "02")!),
        Pessoa(nome: "André Luiz Tosin", idade: 30, descricao: "blablabla", imagem: UIImage(named: "03")!),
        Pessoa(nome: "Andy Valengo", idade: 30, descricao: "blablabla", imagem: UIImage(named: "04")!),
        Pessoa(nome: "Bruno Pastre", idade: 30, descricao: "blablabla", imagem: UIImage(named: "05")!),
        Pessoa(nome: "Carlos Modinez", idade: 30, descricao: "blablabla", imagem: UIImage(named: "06")!),
        Pessoa(nome: "Kali Tokarski", idade: 30, descricao: "blablabla", imagem: UIImage(named: "07")!),
        Pessoa(nome: "Cris Correia", idade: 30, descricao: "blablabla", imagem: UIImage(named: "08")!),
        Pessoa(nome: "Duda Linhares", idade: 30, descricao: "blablabla", imagem: UIImage(named: "09")!),
        Pessoa(nome: "Enzo Maruffa", idade: 30, descricao: "blablabla", imagem: UIImage(named: "10")!),
        Pessoa(nome: "Felipe Mesquita", idade: 30, descricao: "blablabla", imagem: UIImage(named: "11")!),
        Pessoa(nome: "Kaz Born", idade: 30, descricao: "blablabla", imagem: UIImage(named: "12")!),
        Pessoa(nome: "Filipe de Oliveira", idade: 30, descricao: "blablabla", imagem: UIImage(named: "13")!),
        Pessoa(nome: "Akira Tsukamoto", idade: 30, descricao: "blablabla", imagem: UIImage(named: "14")!),
        Pessoa(nome: "Gabriel Taques", idade: 30, descricao: "blablabla", imagem: UIImage(named: "15")!),
        Pessoa(nome: "Gabriel Gazal", idade: 30, descricao: "blablabla", imagem: UIImage(named: "16")!),
        Pessoa(nome: "Gabs Nogueira", idade: 30, descricao: "blablabla", imagem: UIImage(named: "17")!),
        Pessoa(nome: "Hugo de Ávila", idade: 30, descricao: "blablabla", imagem: UIImage(named: "18")!),
        Pessoa(nome: "Isa Castro", idade: 30, descricao: "blablabla", imagem: UIImage(named: "19")!),
        Pessoa(nome: "Jéssica Lopes", idade: 30, descricao: "blablabla", imagem: UIImage(named: "20")!),
        Pessoa(nome: "Yumi Tanimoto", idade: 30, descricao: "blablabla", imagem: UIImage(named: "21")!),
        Pessoa(nome: "Conrado Santana", idade: 30, descricao: "blablabla", imagem: UIImage(named: "22")!),
        Pessoa(nome: "Raffs", idade: 30, descricao: "blablabla", imagem: UIImage(named: "23")!),
        Pessoa(nome: "João Barion", idade: 30, descricao: "blablabla", imagem: UIImage(named: "24")!),
        Pessoa(nome: "José Bestel", idade: 30, descricao: "blablabla", imagem: UIImage(named: "25")!),
        Pessoa(nome: "Kelvin Soares", idade: 30, descricao: "blablabla", imagem: UIImage(named: "26")!),
        Pessoa(nome: "Kevin Katzer", idade: 30, descricao: "blablabla", imagem: UIImage(named: "27")!),
        Pessoa(nome: "Kevin Ribeiro", idade: 30, descricao: "blablabla", imagem: UIImage(named: "28")!),
        Pessoa(nome: "Lary Tertuliano", idade: 30, descricao: "blablabla", imagem: UIImage(named: "29")!),
        Pessoa(nome: "Leo Palinkas", idade: 30, descricao: "blablabla", imagem: UIImage(named: "30")!),
        Pessoa(nome: "Lê Pulner", idade: 30, descricao: "blablabla", imagem: UIImage(named: "31")!),
        Pessoa(nome: "Lucas Brehm", idade: 30, descricao: "blablabla", imagem: UIImage(named: "32")!),
        Pessoa(nome: "Giu", idade: 30, descricao: "blablabla", imagem: UIImage(named: "33")!),
        Pessoa(nome: "Mafê Azolin", idade: 30, descricao: "blablabla", imagem: UIImage(named: "34")!),
        Pessoa(nome: "Mari Abad", idade: 24, descricao: "A criadora desse rolê\n#SENSACIONAL", imagem: UIImage(named: "35")!),
        Pessoa(nome: "Mari Lech", idade: 30, descricao: "blablabla", imagem: UIImage(named: "36")!),
        Pessoa(nome: "Jotaaaaa", idade: 30, descricao: "blablabla", imagem: UIImage(named: "37")!),
        Pessoa(nome: "Mateus Nunes", idade: 30, descricao: "blablabla", imagem: UIImage(named: "38")!)
        Pessoa(nome: "Cavasin", idade: 30, descricao: "Colorborate 🔵🔴⚪️", imagem: UIImage(named: "39")!),
        Pessoa(nome: "Maykon Meneghel", idade: 30, descricao: "Seria ele da família da Xuxa?", imagem: UIImage(named: "40")!),
        Pessoa(nome: "Otávio Baziewicz", idade: 30, descricao: "Olha eleeeeeeee", imagem: UIImage(named: "41")!),
        Pessoa(nome: "Pedro de Vargas", idade: 30, descricao: "Nosso Embassador que é tipo o Embassador, mas um Embassador.", imagem: UIImage(named: "42")!),
        Pessoa(nome: "Pyettra Ferreira", idade: 30, descricao: "Uma mulher!!!!!!!\n!!!!!!!!", imagem: UIImage(named: "43")!),
        Pessoa(nome: "Rodolfo Biazi", idade: 30, descricao: "Nosso outro Embassador que é tipo o Embassador, mas um Embassador", imagem: UIImage(named: "44")!),
        Pessoa(nome: "Rodrigo Forbeck", idade: 30, descricao: "O primo do mextre Forbeckzera", imagem: UIImage(named: "45")!),
        Pessoa(nome: "Rubens Paulico", idade: 30, descricao: "blablabla", imagem: UIImage(named: "46")!),
        Pessoa(nome: "Saulo Martins", idade: 30, descricao: "Nosso youtuber favorito!", imagem: UIImage(named: "47")!),
        Pessoa(nome: "Vinicius Dilay", idade: 30, descricao: "blablabla", imagem: UIImage(named: "48")!),
        Pessoa(nome: "Vinicius Binder", idade: 30, descricao: "blablabla", imagem: UIImage(named: "49")!),
        Pessoa(nome: "Walace Pereira", idade: 30, descricao: "blablabla", imagem: UIImage(named: "50")!)
    ]


}

