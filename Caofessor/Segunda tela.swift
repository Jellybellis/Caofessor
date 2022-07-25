//
//  Segunda tela.swift
//  Caofessor
//
//  Created by Isabela Batista on 12/05/22.
//

import UIKit

class EscolhasViewController: UIViewController {
    @IBOutlet var dogName: UILabel!
    var text: String?
    
    @IBOutlet var sentarButton: UIButton!
    @IBOutlet var deitarButton: UIButton!
    @IBOutlet var pataButton: UIButton!
    @IBOutlet var ficaButton: UIButton!
    
    @IBAction func sentarClick(_ sender: Any) {
        performSegue(withIdentifier: "aprenderSegue", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if text != nil {
            dogName.text = text
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "aprenderSegue" {
            let destination = segue.destination as? DetalhesViewController
            if let button = sender as? UIButton {
                if button == sentarButton {
                    destination?.learningTela = Modelinho(titulo: "Sentar!", ordemArray: ["Chame a atenção do seu amigo com a guloseima;","Mova o petisco do focinho até atrás da cabeça, fazendo com que ele se sente para acompanhar;","Quando o cachorro sentar, diga “senta”, e dê o petisco para ele;","Elogie o comportamento do pet sempre que ele acertar."], desafio: ["Pratique po 5 minutos duas vezes ao dia.","Pratica por 2 semanas consecutivas.","Pratique em um local diferente do de costume.","Pratique em um local externo com distrações presente."])
               } else   if button == deitarButton {
                   
                   destination?.learningTela = Modelinho(titulo: "Deitar!", ordemArray: ["Faça o seu pet sentar, levando o alimento acima do cão;","Faça carinho, e então pegue a ração e desça até o chão, dando o comando 'deita';","Dê a recompensa e parabenize-o, para mostrar que ele fez certo.","Repita os comandos até que ele aprenda e repita as ações sem errar."], desafio: ["Pratique po 5 minutos duas vezes ao dia.","Pratique por 2 semanas sem o petisco.","Pratique em um local diferente do de costume.","Pratique perto de outros cães."])
                   
              } else   if button == pataButton {
                  
                  destination?.learningTela = Modelinho(titulo: "Dar a Pata!", ordemArray: ["Peça para o cachorro sentar;","Segure o petisco na frente do focinho do cachorro com a mao fechada. Ele não deve ver o petisco agora!","Espere o cachorro esticar a pata na sua direção;","Quando ele levantar a pata, mesmo que só um pouco, faça imediatamente um elogio e dê o petisco."], desafio: ["Pratique po 5 minutos duas vezes ao dia.","Pratique por 2 semanas sem o petisco.","Tente o truque de 'Em qual mão está?'","Pratique o truque novo por duas semanas."])
             } else if  button == ficaButton {
                 
                 destination?.learningTela = Modelinho(titulo: "Fica!", ordemArray: ["Faça o cão sentar;","Segure a coleira do cachorro e diga 'fica' com uma mão aberta na frente dele sem tocá-lo;","Aumente gradualmente o tempo que ele precisa ficar parado;","Aumente gradualmente a distancia entre vocês. Dê o petisco e repita o processo."], desafio: ["Pratique po 5 minutos duas vezes ao dia.","Pratique por 2 semanas sem o petisco.","Pratique em locais maiores (como a garagem).","Pratique em locais publicos (como o mercado)."])
            }
            }
        }
    }

   
}
