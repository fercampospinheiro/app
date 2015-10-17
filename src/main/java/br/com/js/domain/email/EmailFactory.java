/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.js.domain.email;
import br.com.js.domain.contato.Contato;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author fernando
 */
@Component
public class EmailFactory {
    
    public Email curriculumWorkWhitUs(String subject,MultipartFile attachment ){
        Email email = new  Email();
        email.setContent(getContentWorkWhitUs());
        email.setSubject("currículo do(a) "+ subject);
        email.attachFile(attachment);
        email.setOrigin("fercampospinheiro@gmail.com");
        email.setDestination("fercampospinheiro@gmail.com");
        email.setAttachmentName(attachment.getOriginalFilename());
        
        return email;
    }

  public Email contact(Contato contato){
        Email email = new  Email();
        email.setContent(getContentContact(contato));
        email.setSubject("Um usuário entrou em contato com a Js Tercerizaçao");
        return email;  
    } 
    
    private String getContentWorkWhitUs(){
        return "Você recebeu um novo currículo. Clique no anexo abaixo.";
    }
    
    private String getContentContact(Contato contato){
        StringBuilder htmlContent = new StringBuilder();
        htmlContent.append("<html>");
            htmlContent.append("<body>");
                htmlContent.append("<strong>");
                    htmlContent.append("<h3>").append("Novo contato").append("</h3>");
                htmlContent.append("</strong>");
                htmlContent.append("<p>");
                    htmlContent.append("Nome : ").append(contato.getNome());
                htmlContent.append("</p>");
                htmlContent.append("<p>");
                    htmlContent.append("email : ").append(contato.getEmail());
                htmlContent.append("</p>");
                htmlContent.append("<p>");
                    htmlContent.append("Telefone : ").append(contato.getFone());
                htmlContent.append("</p>");
                htmlContent.append("<p>");
                    htmlContent.append("Mensagem enviada : ");
                    htmlContent.append("</b>");
                    htmlContent.append(contato.getMensagem());
                htmlContent.append("</p>");
            htmlContent.append("</body");
        htmlContent.append("</html>");
        return htmlContent.toString();
    }
    
}
