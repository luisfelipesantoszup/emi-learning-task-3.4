//
//  ViewController.swift
//  LearningTask-3-4
//
//  Created by Luis Felipe on 17/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func botaoLoginPressionado(_ sender: UIButton) {
        if checarCamposPreenchidos() {
            exibirAlertaDeLogin()
        }
        else {
            exibirAlertaDeCampoEmBranco()
        }
    }
    
    func exibirAlertaDeLogin() {
        let titulo = "Logando"
        let mensagem = "Fazendo login na sua conta..."
        
        let alert = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func checarCamposPreenchidos() -> Bool {
        if emailTextField.text == "" || senhaTextField.text == "" {
            return false
        }
        return true
    }
    
    func exibirAlertaDeCampoEmBranco() {
        let titulo = "Favor preencher os campos."
        let mensagem = "O campo Email ou Senha estão em branco, verifique suas credenciais."
        
        let alert = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func botaoRedefinirPressionado(_ sender: UIButton) {
        exibirAlertaRedefinirSenha()
    }
    
    func exibirAlertaRedefinirSenha() {
        let titulo = "Redefinir senha"
        let mensagem = "Enviamos um email para \(emailTextField.text!).\nSiga as instruções para criar uma nova senha segura."
        
        let alert = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}
