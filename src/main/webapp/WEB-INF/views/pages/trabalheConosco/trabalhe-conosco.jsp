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
<title>Js Serviços Terceirizados - Trabalhe Conosco</title>
</head>
<body>
            <!--CONTEUDO-->
             <!-- Formulario Contato -->
	    <div class="row">
	    	<div class="cabecalho-trabalhe-conosco col-md-12">
	    		<div class="row"> 
                            <img  src='<spring:url value="/resources/image/ID-10039002.jpg"/>'/><img  src='<spring:url value="/resources/image/ID-10066547.jpg"/>'/>
			</div>
	    	</div>
	    </div>
	    <div class="row conteudo-contato">
	        <div class="texto-trabalho-conosco col-md-12">
                    <div class="titulo row">
                        <h3>Faça parte da nossa equipe.</h3>    
                    </div>
                    <div class="texto row">
                        <c:if test='${not empty ok}'>
                        <div>
                          <p class="alert alert-success" role="alert">${ok}</p>  
                        </div>
                        </c:if>
                        <p>Se você é uma pessoa dedicada, cheia de vontade de trabalhar, possui experiência na área de serviços, 
                            nos encaminhe seu currículo abaixo. Será um prazer ter você como parceiro.
                        </p>    
                        <p>    
                        Atenciosamente,
                        </p>
                        <p>
                        Js Terceirizações.
                        </p>
                    </div>
	        </div>
                    <div class="form-trabalhe-conosco col-md-12">  
                    <form role="form" method="post" enctype="multipart/form-data" action="/trabalheConosco/enviaCurriculo">
                        <div class="form-group">
                          <label for="file">Currículo:</label>
                          <input type="file" class="form-control" id="file" name="file"/>
                        </div>
                        <div class="form-group">
                          <label for="nome">Informe seu nome:</label>
                          <input type="text" class="form-control" id="nome" name="name"/>
                        </div>
                        <button type="submit" class="btn btn-default">enviar</button>
                    </form>
                </div>
            </div>
</body>
</html>