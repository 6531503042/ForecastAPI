//package th.mfu.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.messaging.handler.annotation.MessageMapping;
//import org.springframework.messaging.handler.annotation.SendTo;
//import org.springframework.messaging.simp.SimpMessagingTemplate;
//import org.springframework.stereotype.Controller;
//import th.mfu.model.UpdateMessage;
//
//@Controller
//public class WebSocketController {
//
//    @Autowired
//    private SimpMessagingTemplate messagingTemplate;
//
//    @MessageMapping("/update")
//    @SendTo("/topic/updates")
//    public UpdateMessage updateMessage(UpdateMessage message) {
//        return message;
//    }
//
//    public UpdateMessage sendUpdateToClients(UpdateMessage message) {
//        messagingTemplate.convertAndSend("/topic/updates", message);
//        return message;
//    }
//}
//
