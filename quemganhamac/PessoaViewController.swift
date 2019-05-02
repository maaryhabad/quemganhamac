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
    
//    @IBAction func gesture(_ sender: Any) {
//        let swipeRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swiped:"))
//
//        if swipeRecognizer.direction == .right {
//            print("direita")
//            proximaPessoa()
//
//        } else if swipeRecognizer.direction == .left {
//            print("esquerda")
//            proximaPessoa()
//
//        } else if swipeRecognizer.direction == .up {
//            print("cima")
//            proximaPessoa()
//
//        } else if swipeRecognizer.direction == .down {
//            print("baixo")
//            proximaPessoa()
//
//        }
//    }
//
    @IBAction func gesture(_ sender: Any) {
        print("direita")
        proximaPessoa()
    }
    override func viewDidLoad() {
        proximaPessoa()
    }
  
    
    func proximaPessoa() {
        var pessoaSelecionada = Int.random(in: 0...49)
        atualizarInterface(pessoaSelecionada: pessoaSelecionada)
    }
    

    
    let pessoas = [
        
        // as descrições foram feitas pelas próprias pessoas.
        Pessoa(nome: "Ailtinho", idade: 30, descricao: "não vai chegar os mac.", imagem: UIImage(named: "01")!),
        Pessoa(nome: "Ana Paula Clemente", idade: 30, descricao: "blablabla", imagem: UIImage(named: "02")!),
        Pessoa(nome: "André Luiz Tosin", idade: 30, descricao: "blablabla", imagem: UIImage(named: "03")!),
        Pessoa(nome: "Andy Valengo", idade: 30, descricao: "blablabla", imagem: UIImage(named: "04")!),
        Pessoa(nome: "Bruno Pastre", idade: 30, descricao: "blablabla", imagem: UIImage(named: "05")!),
        Pessoa(nome: "Carlos Modinez", idade: 30, descricao: "blablabla", imagem: UIImage(named: "06")!),
        Pessoa(nome: "Kali Tokarski", idade: 30, descricao: "Promiscous Girl 🎶", imagem: UIImage(named: "07")!),
        Pessoa(nome: "Cris Correia", idade: 30, descricao: "blablabla", imagem: UIImage(named: "08")!),
        Pessoa(nome: "Duda Linhares", idade: 18, descricao: "rainha das galáxias", imagem: UIImage(named: "09")!),
        Pessoa(nome: "Enzo Maruffa", idade: 19, descricao: "roxo 💜", imagem: UIImage(named: "10")!),
        Pessoa(nome: "Felipe Mesquita", idade: 30, descricao: "blablabla", imagem: UIImage(named: "11")!),
        Pessoa(nome: "Kaz Born", idade: 30, descricao: "blablabla", imagem: UIImage(named: "12")!),
        Pessoa(nome: "Filipe de Oliveira", idade: 30, descricao: "blablabla", imagem: UIImage(named: "13")!),
        Pessoa(nome: "Akira Tsukamoto", idade: 30, descricao: "blablabla", imagem: UIImage(named: "14")!),
        Pessoa(nome: "Gabriel Taques", idade: 30, descricao: "blablabla", imagem: UIImage(named: "15")!),
        Pessoa(nome: "Gabriel Gazal", idade: 30, descricao: "blablabla", imagem: UIImage(named: "16")!),
        Pessoa(nome: "Gabs Nogueira", idade: 20, descricao: "Meu coração é o sol 🦁", imagem: UIImage(named: "17")!),
        Pessoa(nome: "Hugo de Ávila", idade: 30, descricao: "blablabla", imagem: UIImage(named: "18")!),
        Pessoa(nome: "Isa Castro", idade: 30, descricao: "blablabla", imagem: UIImage(named: "19")!),
        Pessoa(nome: "Jéssica Lopes", idade: 30, descricao: "blablabla", imagem: UIImage(named: "20")!),
        Pessoa(nome: "Yumi Tanimoto", idade: 30, descricao: "blablabla", imagem: UIImage(named: "21")!),
        Pessoa(nome: "Conrado Santana", idade: 30, descricao: "blablabla", imagem: UIImage(named: "22")!),
        Pessoa(nome: "Raffs", idade: 30, descricao: "blablabla", imagem: UIImage(named: "23")!),
        Pessoa(nome: "João Barion", idade: 30, descricao: "blablabla", imagem: UIImage(named: "24")!),
        Pessoa(nome: "José Bestel", idade: 30, descricao: "blablabla", imagem: UIImage(named: "25")!),
        Pessoa(nome: "Kelvin Soares", idade: 30, descricao: "blablabla", imagem: UIImage(named: "26")!),
        Pessoa(nome: "Kevin Katzer", idade: 24, descricao: "blablabla", imagem: UIImage(named: "27")!),
        Pessoa(nome: "Kevin Ribeiro", idade: 30, descricao: "blablabla", imagem: UIImage(named: "28")!),
        Pessoa(nome: "Lary Tertuliano", idade: 20, descricao: "amo balões 🎈", imagem: UIImage(named: "29")!),
        Pessoa(nome: "Leo Palinkas", idade: 20, descricao: "às vezes fica puto no twitter", imagem: UIImage(named: "30")!),
        Pessoa(nome: "Lê Pulner", idade: 30, descricao: "blablabla", imagem: UIImage(named: "31")!),
        Pessoa(nome: "Lucas Brehm", idade: 30, descricao: "blablabla", imagem: UIImage(named: "32")!),
        Pessoa(nome: "Giu", idade: 22, descricao: "sommelier de memes", imagem: UIImage(named: "33")!),
        Pessoa(nome: "Mafê Azolin", idade: 20, descricao: "aposta racha com um pálio", imagem: UIImage(named: "34")!),
        Pessoa(nome: "Mari Abad", idade: 24, descricao: "A criadora desse rolê\n#SENSACIONAL", imagem: UIImage(named: "35")!),
        Pessoa(nome: "Mari Lech", idade: 22, descricao: "alguém disse batata?", imagem: UIImage(named: "36")!),
        Pessoa(nome: "Jotaaaaa", idade: 30, descricao: "blablabla", imagem: UIImage(named: "37")!),
        Pessoa(nome: "Mateus Nunes", idade: 30, descricao: "blablabla", imagem: UIImage(named: "38")!),
        Pessoa(nome: "Cavasin", idade: 30, descricao: "Colorborate 🔵🔴⚪️", imagem: UIImage(named: "39")!),
        Pessoa(nome: "Maykon Meneghel", idade: 30, descricao: "Seria ele da família da Xuxa?", imagem: UIImage(named: "40")!),
        Pessoa(nome: "Otávio Baziewicz", idade: 21, descricao: "Criador assíduo de teorias conspiracionais aleatórias envolvendo anões que cresceram", imagem: UIImage(named: "41")!),
        Pessoa(nome: "Pedro Vargas", idade: 18, descricao: "Nosso Embassador que é tipo o Embassador, mas um Embassador.", imagem: UIImage(named: "42")!),
        Pessoa(nome: "Pyettra Ferreira", idade: 22, descricao: "uma cuzona\nComentário do editor: Um nenezão!!!!!!!\n!!!!!!!!", imagem: UIImage(named: "43")!),
        Pessoa(nome: "Rodolfo Biazi", idade: 30, descricao: "Nosso outro Embassador que é tipo o Embassador, mas um Embassador", imagem: UIImage(named: "44")!),
        Pessoa(nome: "Rodrigo Forbeck", idade: 30, descricao: "O primo do mextre Forbeckzera", imagem: UIImage(named: "45")!),
        Pessoa(nome: "Rubens Paulico", idade: 30, descricao: "blablabla", imagem: UIImage(named: "46")!),
        Pessoa(nome: "Saulo Martins", idade: 20, descricao: "Ativista lutando pelo fim do kpop", imagem: UIImage(named: "47")!),
        Pessoa(nome: "Vinicius Dilay", idade: 18, descricao: "vendo Santana 87 duas portas", imagem: UIImage(named: "48")!),
        Pessoa(nome: "Vinícius Binder", idade: 18, descricao: "troxa.", imagem: UIImage(named: "49")!),
        Pessoa(nome: "Walace Pereira", idade: 30, descricao: "blablabla", imagem: UIImage(named: "50")!)
    ]
    
    func atualizarInterface(pessoaSelecionada: Int) {
        let pessoa = pessoas[pessoaSelecionada]
        print(pessoa.nome)
        imgPessoa.image = pessoa.imagem
        nomePessoa.text = "\(pessoa.nome), \(pessoa.idade)"
        txtPessoa.text = pessoa.descricao
       
    }


}

