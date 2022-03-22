
import Foundation
//classe Comand line contem todas as funções de criacão de evento
class CLI{
    
    //Inicialização
    var atividades: [Atividade]
    init(atividade: [Atividade]){
     self.atividades = atividade }
    
    //Sistema pergunta o que foi feito
    func getAnswer(){
       print("""
   --------------------------
  | Hello beautiful.Como vai?|
   --------------------------
  Com sim ou não me diz o que tu fez tá?
""")
        for(index,atividade) in self.atividades.enumerated(){
            print("\n Já", atividade.descricao,"?")
            let resposta = readLine()!.lowercased()
            switch resposta{
            case "s","sim", "yes","ye", "y":
                print("\n          TOP")
                atividades[index].feito = true
            default:
                atividades[index].feito = false
            }
        }
        self.alarmInfo()
        
    }
    func alarmInfo(){
        for atividade in cli.atividades {
            if !atividade.feito {
                print("Que horas devo te lembrar de fazer isso?" )
                let horarioNovo = readLine()!
              
                evento(titulo: "comer,tomar remedio ou organizar a agenda")// self.setAlarm()
            }
        }
    }
//    func setAlarm(){
//        evento(titulo: "comer,tomar remedio ou organizar a agenda")
//
//    }
}
