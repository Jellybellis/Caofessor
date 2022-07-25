//
//  Sentar.swift
//  Caofessor
//
//  Created by Isabela Batista on 13/05/22.
//

import UIKit



class DetalhesViewController: UIViewController, UITableViewDataSource{
    @IBOutlet var patinhaView: UIView!
    @IBOutlet var desafioView: UIView!
    @IBOutlet var ossinhoView: UIView!
    
    @IBOutlet var titulo: UILabel!
    @IBOutlet var passoApasso: UIView!
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var checkbox1: UIButton!
    @IBOutlet weak var checkbox2: UIButton!
    
    @IBOutlet weak var checkbox3: UIButton!
    @IBOutlet weak var checkbox4: UIButton!
    
    @IBOutlet var desafio1: UILabel!
    @IBOutlet var desafio2: UILabel!
    @IBOutlet var desafio3: UILabel!
    @IBOutlet var desafio4: UILabel!
    
    
    var flag1 = false
    var flag2 = false
    var flag3 = false
    var flag4 = false
    
    var learningTela: Modelinho? = nil 
    
   
    
    
    let images: [String] = ["Primeiro","Segundo","Terceiro","Quarto"]
    
    override func viewWillAppear(_ animated: Bool) {
        titulo.text = learningTela?.titulo
        desafio1.text = learningTela?.desafioArray[0]
        desafio2.text = learningTela?.desafioArray[1]
        desafio3.text = learningTela?.desafioArray[2]
        desafio4.text = learningTela?.desafioArray[3]
        
        table.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        

        
        
        
       // Coisas do Passo a Passo
        
        //Arrumando as views
        patinhaView.layer.borderWidth = 1
        patinhaView.layer.borderColor = UIColor.lightGray.cgColor
        patinhaView.layer.cornerRadius = 12
        passoApasso.layer.borderWidth = 3
        passoApasso.layer.borderColor = UIColor.orange.cgColor
        passoApasso.layer.cornerRadius = 20
        
        ossinhoView.layer.borderWidth = 1
        ossinhoView.layer.borderColor = UIColor.lightGray.cgColor
        ossinhoView.layer.cornerRadius = 12
        desafioView.layer.borderWidth = 2
        desafioView.layer.borderColor = UIColor.systemYellow.cgColor
        desafioView.layer.cornerRadius = 20
    }
    

    @IBAction func checkbtn1(_ sender: UIButton) {
        if (flag1 == false){
            sender.setImage(UIImage(named: "checkmark"),for: UIControl.State.normal)
            flag1 = true
        } else {
            sender.setImage(UIImage(named: "uncheck"),for: UIControl.State.normal)
            flag1 = false
        }
    }
                                    
                                    
                                    
    @IBAction func checkbtn2(_ sender: UIButton) {
        if (flag2 == false){
        sender.setImage(UIImage(named: "checkmark"),for: UIControl.State.normal)
        flag2 = true
    }
    
    else {
        sender.setImage(UIImage(named: "uncheck"),for: UIControl.State.normal)
        flag2 = false
    }
        
    } 
    
    @IBAction func checkbtn3(_ sender: UIButton) {
        if (flag3 == false){
            sender.setImage(UIImage(named: "checkmark"),for: UIControl.State.normal)
        flag3 = true
    }
    
    else {
        sender.setImage(UIImage(named: "uncheck"),for: UIControl.State.normal)
        flag3 = false
    }
        
    }
    
    @IBAction func chechbtn4(_ sender: UIButton) {
        if (flag4 == false){
            sender.setImage(UIImage(named: "checkmark"),for: UIControl.State.normal)
            flag4 = true
        }
        
        else {
            sender.setImage(UIImage(named: "uncheck"),for: UIControl.State.normal)
            flag4 = false
        }
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return learningTela?.ordemArray.count ?? 0
    }
    
    //Aqui eu construi minha celula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OrdemTableViewCell
        cell.passo1.text = learningTela?.ordemArray[indexPath.row]
        cell.icone1.image = UIImage(named: images[indexPath.row])
      
        
        return cell
    }
    
}

