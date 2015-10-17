<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Js Serviços Terceirizados - Contato</title>
<style>
    .header {
        color: #36A0FF;
        font-size: 27px;
        padding: 10px;
    }

    .bigicon {
        font-size: 30px;
        color: white;
    }
    .fundoIcon{
        color: #027CAE;	
    }
    .frenteIcon{
    	color: white;
    }
    
</style> 
</head>
<body>
  <!-- Formulario Contato -->
	    <div class="row">
	    	<div class="cabecalho-contato col-md-12">
	    		<div class="row"> 
	    		<img  src='<spring:url value="/resources/image/moca-contato.png"/>'/>
	    		
	    		<span class="fa-stack fa-5x">
				  <i class="fa fa-circle fa-stack-2x  fundoIcon"></i>
				  <i class="fa fa-envelope-o fa-stack-1x frenteIcon"></i>
				</span>
				<span class="fa-stack fa-4x">
				  <i class="fa fa-circle fa-stack-2x  fundoIcon"></i>
				  <i class="fa fa-phone fa-stack-1x frenteIcon"></i>
				</span>
				
				<span class="fa-stack fa-3x">
				  <i class="fa fa-circle fa-stack-2x  fundoIcon"></i>
				  <i class="fa fa-desktop fa-stack-1x frenteIcon"></i>
				</span>
				</div>
	    	</div>
	    </div>
            <div class="row contact-success">
                <c:if test="${not empty ok}">
                    <div>
                      <p class="alert alert-success" role="alert">${ok}</p>  
                    </div>
                </c:if>                
            </div>
            
            <div class="row conteudo-contato">
	                
                        <div class="endereco-contato col-md-6">
                            <p>
                                Entre em contato conosco, será um prazer ouvir sua opinião ou até mesmo ter você como parceiro.
                            </p>
                            <p>
                                Preencha todos os campos ao lado e clique em enviar.
                            </p>
	                </div>
	                
	                <div class="formulario-contato col-md-6" >
                            <form:form  action="/app/contato/salvar" modelAttribute="contato" class="form-horizontal row" method="post">
		                    <fieldset>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                            <div class="col-md-8">
		                                <form:input id="nome" path="nome" placeholder="Nome" cssClass="form-control" />
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
		                            <div class="col-md-8">
		                                <form:input  type ="email"  id="email" path="email"  placeholder="e-mail" cssClass="form-control"/>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
		                            <div class="col-md-8">
		                                <form:input id="fone" path="fone" placeholder="fone" cssClass="form-control"/>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
		                            <div class="col-md-8">
		                                <form:textarea cssClass="form-control" id="mensagem" path="mensagem"  placeholder="Escreva sua mensagem aqui." rows="7"/>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <div class="col-md-11 text-right">
                                                <form:button cssClass="btn btn-primary" >Enviar</form:button>
		                            </div>
		                        </div>
		                    </fieldset>
		                </form:form>
                            </div>
	            </div>
</body>
</html>