//conetando com a biblioteca
import Foundation
import EventKit
let cli = CLI( atividade:
    [   Atividade(descricao: "comeu", feito: false),
        Atividade(descricao: "tomou o remedio", feito: false),
        Atividade(descricao: "organizou a agenda", feito: false)])
cli.getAnswer()
func evento(titulo:String){
 let store = EKEventStore()
 store.requestAccess(to: .event){ granted, error in
     if granted , error == nil {
        let calendar = store.defaultCalendarForNewEvents
        let event = EKEvent(eventStore:store)
            event.title = titulo
            event.startDate = Date()
            event.endDate = Date()
            event.isAllDay = true
            event.calendar = calendar

            try! store.save(event, span: .thisEvent, commit: true)}}}



RunLoop.main.run()




