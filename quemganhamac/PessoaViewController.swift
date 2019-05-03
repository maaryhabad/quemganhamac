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
    @IBOutlet weak var cmtEditor: UILabel!
    @IBOutlet weak var tituloComentario: UILabel!
    
    var pessoaSelecionada = 0
    
    @IBOutlet weak var retorno: UILabel!
    
    @IBAction func gesture(_ sender: Any) {
        print("direita")
        retorno.alpha = 1
        retorno.text = "Entrega normal"
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            print("done")
            self.proximaPessoa()
        })
    }
    
    override func viewDidLoad() {
        proximaPessoa()
    }
  
    
    func proximaPessoa() {
        retorno.alpha = 0
        atualizarInterface(pessoaSelecionada: pessoaSelecionada)
        pessoaSelecionada += 1
    }

    
    let pessoas = [
        
        // as descrições foram feitas pelas próprias pessoas.
        Pessoa(nome: "Ailtinho", idade: 20, descricao: "solteiro, lindo, unteligente.", imagem: UIImage(named: "01")!, comentario: "não vai chegar os mac."),
        Pessoa(nome: "Ana Paula Clemente", idade: 27, descricao: "felizmente não sou uma rockstar", imagem: UIImage(named: "02")!, comentario: "se não morreria cedo."),
        Pessoa(nome: "André Luiz Tosin", idade: 30, descricao: "blablabla", imagem: UIImage(named: "03")!, comentario: ""),
        Pessoa(nome: "Andy Valengo", idade: 30, descricao: "BIIIIIIIIIIRL 💪", imagem: UIImage(named: "04")!, comentario: ""),
        Pessoa(nome: "Bruno Pastre", idade: 30, descricao: "blablabla", imagem: UIImage(named: "05")!, comentario: ""),
        Pessoa(nome: "Carlos Modinez", idade: 30, descricao: "blablabla", imagem: UIImage(named: "06")!, comentario: ""),
        Pessoa(nome: "Kali Tokarski", idade: 22, descricao: "Promiscous Girl 🎶🐍", imagem: UIImage(named: "07")!, comentario: "que mulher"),
        Pessoa(nome: "Cris Correia", idade: 30, descricao: "blablabla", imagem: UIImage(named: "08")!, comentario: ""),
        Pessoa(nome: "Duda Linhares", idade: 18, descricao: "rainha das galáxias", imagem: UIImage(named: "09")!, comentario: "vai representar nóis na WWDC"),
        Pessoa(nome: "Enzo Maruffa", idade: 19, descricao: "roxo 💜", imagem: UIImage(named: "10")!, comentario: "programador ele"),
        Pessoa(nome: "Felipe Mesquita", idade: 30, descricao: "blablabla", imagem: UIImage(named: "11")!, comentario: ""),
        Pessoa(nome: "Kaz Born", idade: 30, descricao: "blablabla", imagem: UIImage(named: "12")!, comentario: ""),
        Pessoa(nome: "Filipe de Oliveira", idade: 30, descricao: "blablabla", imagem: UIImage(named: "13")!, comentario: ""),
        Pessoa(nome: "Akira Tsukamoto", idade: 20, descricao: "Japão. 🇯🇵", imagem: UIImage(named: "14")!, comentario: "China in box 🇨🇳"),
        Pessoa(nome: "Gabriel Taques", idade: 30, descricao: "blablabla", imagem: UIImage(named: "15")!, comentario: ""),
        Pessoa(nome: "Gabriel Gazal", idade: 30, descricao: "blablabla", imagem: UIImage(named: "16")!, comentario: ""),
        Pessoa(nome: "Gabs Nogueira", idade: 20, descricao: "Meu coração é o sol 🦁", imagem: UIImage(named: "17")!, comentario: "ela costura ela"),
        Pessoa(nome: "Hugo de Ávila", idade: 30, descricao: "blablabla", imagem: UIImage(named: "18")!, comentario: ""),
        Pessoa(nome: "Isa Castro", idade: 24, descricao: "Primeira de seu nome, rainha dos ândalos, dos roinares e dos primeiros homens e protetora dos Sete Reinos", imagem: UIImage(named: "19")!, comentario: "American Date 🇺🇸"),
        Pessoa(nome: "Jéssica Lopes", idade: 30, descricao: "blablabla", imagem: UIImage(named: "20")!, comentario: ""),
        Pessoa(nome: "Yumi Tanimoto", idade: 21, descricao: "𝓠𝓾𝓮𝓶 𝓼𝓮 𝓭𝓮𝓯𝓲𝓷𝓮 𝓼𝓮 𝓵𝓲𝓶𝓲𝓽𝓪 🤪🤙", imagem: UIImage(named: "21")!, comentario: "ela dá chocolatinho na páscoa <3"),
        Pessoa(nome: "Conrado Santana", idade: 30, descricao: "blablabla", imagem: UIImage(named: "22")!, comentario: ""),
        Pessoa(nome: "Raffs", idade: 19, descricao: "VJ da MTV", imagem: UIImage(named: "23")!, comentario: "#gintônica"),
        Pessoa(nome: "João Barion", idade: 47, descricao: "tenho uma tatuagem do buzz lightyear no braço", imagem: UIImage(named: "24")!, comentario: "que loucura!"),
        Pessoa(nome: "José Bestel", idade: 30, descricao: "blablabla", imagem: UIImage(named: "25")!, comentario: ""),
        Pessoa(nome: "Kelvin Soares", idade: 30, descricao: "blablabla", imagem: UIImage(named: "26")!, comentario: ""),
        Pessoa(nome: "Kevin Katzer", idade: 24, descricao: "blablabla", imagem: UIImage(named: "27")!, comentario: "curte uma carona"),
        Pessoa(nome: "Kevin Ribeiro", idade: 30, descricao: "blablabla", imagem: UIImage(named: "28")!, comentario: ""),
        Pessoa(nome: "Lary Tertuliano", idade: 20, descricao: "amo balões 🎈", imagem: UIImage(named: "29")!, comentario: "empreendedora <3"),
        Pessoa(nome: "Leo Palinkas", idade: 20, descricao: "Às vezes fica puto no twitter", imagem: UIImage(named: "30")!, comentario: "sim, só às vezes."),
        Pessoa(nome: "Lê Pulner", idade: 30, descricao: "HAHAHAHAHAHAHAHAHA CABOOOOOOSSSEEE", imagem: UIImage(named: "31")!, comentario: "devia ter um show de stand up"),
        Pessoa(nome: "Lucas Brehm", idade: 30, descricao: "blablabla", imagem: UIImage(named: "32")!, comentario: ""),
        Pessoa(nome: "Giu", idade: 22, descricao: "sommelier de memes", imagem: UIImage(named: "33")!, comentario: ""),
        Pessoa(nome: "Mafê Azolin", idade: 20, descricao: "aposta racha com um pálio", imagem: UIImage(named: "34")!, comentario: "sabe muito"),
        Pessoa(nome: "Mari Abad", idade: 24, descricao: "A criadora desse rolê\n#SENSACIONAL", imagem: UIImage(named: "35")!, comentario: ""),
        Pessoa(nome: "Mari Lech", idade: 22, descricao: "alguém disse batata?", imagem: UIImage(named: "36")!, comentario: ""),
        Pessoa(nome: "Jotaaaaa", idade: 30, descricao: "blablabla", imagem: UIImage(named: "37")!, comentario: "as camisas mais descoladas da turma."),
        Pessoa(nome: "Mateus Nunes", idade: 18, descricao: "o bixo", imagem: UIImage(named: "38")!, comentario: ""),
        Pessoa(nome: "Cavasin", idade: 30, descricao: "Colorborate 🔵🔴⚪️", imagem: UIImage(named: "39")!, comentario: ""),
        Pessoa(nome: "Maykon Meneghel", idade: 30, descricao: "Seria ele da família da Xuxa?", imagem: UIImage(named: "40")!, comentario: ""),
        Pessoa(nome: "Otávio Baziewicz", idade: 21, descricao: "Criador assíduo de teorias conspiracionais aleatórias envolvendo anões que cresceram", imagem: UIImage(named: "41")!, comentario: ""),
        Pessoa(nome: "Pedro Vargas", idade: 18, descricao: "Nosso Embassador que é tipo o Embassador, mas um Embassador.", imagem: UIImage(named: "42")!, comentario: ""),
        Pessoa(nome: "Pyettra Ferreira", idade: 22, descricao: "uma cuzona", imagem: UIImage(named: "43")!, comentario: "Um nenezão!!!!!!!\n!!!!!!!!"),
        Pessoa(nome: "Rodolfo Biazi", idade: 30, descricao: "Nosso outro Embassador que é tipo o Embassador, mas um Embassador", imagem: UIImage(named: "44")!, comentario: ""),
        Pessoa(nome: "Rodrigo Forbeck", idade: 30, descricao: "O primo do mextre Forbeckzera", imagem: UIImage(named: "45")!, comentario: ""),
        Pessoa(nome: "Rubens Paulico", idade: 25, descricao: "em busca de um botão pause pra vida", imagem: UIImage(named: "46")!, comentario: ""),
        Pessoa(nome: "Saulo Martins", idade: 20, descricao: "Ativista lutando pelo fim do kpop.", imagem: UIImage(named: "47")!, comentario: "Quem tem diabete vaza que o docinho chegou"),
        Pessoa(nome: "Vinicius Dilay", idade: 18, descricao: "vendo Santana 87 duas portas", imagem: UIImage(named: "48")!, comentario: ""),
        Pessoa(nome: "Vinícius Binder", idade: 18, descricao: "troxa.", imagem: UIImage(named: "49")!, comentario: ""),
        Pessoa(nome: "Walace Pereira", idade: 22, descricao: "me chama pra tomar um litrão e falar sobre a vida, o universo e tudo mais. #globetrotter", imagem: UIImage(named: "50")!, comentario: "")
    ]
    
    func atualizarInterface(pessoaSelecionada: Int) {
        
        let pessoa = pessoas[pessoaSelecionada] // crio uma variável pra não precisar ficar repetindo esse trecho de código que quer dizer: meuArray[número da posição que eu to lendo]
        print(pessoa.nome) //aqui um print só pra saber se tá funcionando
        
        imgPessoa.image = pessoa.imagem // troco a imagem pela imagem do meuyArray[número da posição que eu to lendo]
        nomePessoa.text = "\(pessoa.nome), \(pessoa.idade)"
        txtPessoa.text = pessoa.descricao
        cmtEditor.text = pessoa.comentario
        
        if pessoa.comentario == "" {
            tituloComentario.alpha = 0
            cmtEditor.alpha = 0
        } else {
            tituloComentario.alpha = 1
            cmtEditor.alpha = 1
        }
       
    }


}

