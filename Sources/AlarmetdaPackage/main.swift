//conetando com a biblioteca
import Foundation
import EventKit
let cli = CLI( atividade:
                [   Atividade(descricao: "comeu", feito: false),
                    Atividade(descricao: "tomou o remedio", feito: false),
                    Atividade(descricao: "organizou a agenda", feito: false)])

cli.getAnswer()
//Calendar.current.date(byAdding: .day, value: 1, to: Date())!



func evento(titulo:String, horario:String){
    let store = EKEventStore()
    
    let dateStart = NSCalendar.current.date(
        from: DateComponents(
            year: 2022, month: 03, day: 23, hour: 19, minute: 12
        )
    )
    
    let dateEnd = NSCalendar.current.date(
        from: DateComponents(
            year: 2022, month: 03, day: 24, hour: 19, minute: 12
        )
    )

    store.requestAccess(to: .event){ granted, error in
        if granted , error == nil {
            let calendar = store.defaultCalendarForNewEvents
            let event = EKEvent(eventStore:store)
            event.title = titulo
            event.startDate = dateStart
            event.endDate = dateEnd
            event.isAllDay = false
            event.calendar = calendar
            //         let alarm = EKAlarm(relativeOffset: 600)
            //                     event.addAlarm(alarm)
            //
            
            try! store.save(event, span: .thisEvent, commit: true)}}}

//event.title = "This is my test event"
//event.startDate = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
//event.isAllDay = true
//event.endDate = event.startDate

RunLoop.main.run()




