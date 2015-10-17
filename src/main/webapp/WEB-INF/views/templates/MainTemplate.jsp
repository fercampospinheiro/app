<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>

    <title>Js Terceirizações - <decorator:title/></title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link href="<c:url value ="/resources/libs/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" />
	<link href="<c:url value = "/resources/css/style.css"/>" rel="stylesheet" />
	<link rel="stylesheet" href="<c:url value = "/resources/libs/font-awesome-4.3.0/css/font-awesome.min.css"/>"/>
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="http://www.google.com/jsapi"></script>
	<script src="<c:url value ="/resources/libs/bootstrap/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value = "/resources/css/jquery-mask/jquery.mask.min.js"/>"></script>
    <decorator:head/>
</head>

<body>

	<div class="container">

		<header class="cabecalho">
			<div class="area-logo row">
				<div class="logo">
                                    <image class="imagem-logo" src="<c:url value="/resources/image/escudo-js.png"/>"></image>
					<image class="letra-logo" src="<c:url value= "/resources/image/letra-js.png"/>"></image>
				</div>
			</div>
			<div class="area-menu row">
				<div class="menu">
					<ul class="nav nav-tabs">
						<li role="presentation" class="active">
                                                    <a href="<c:url value ="/"/>"> 
                                                        <span class="glyphicon glyphicon-home"></span> 
                                                        Home
                                                    </a>
                                                </li>
						<li class="no-active" role="presentation"><a href="<c:url value ="/sobreNos"/>">Sobre nós</a></li>
						<li role="presentation" class="dropdown">
                                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="true"> 
                                                        Nossos Serviços 
                                                        <span class="caret"></span>	
                                                    </a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<c:url value ="/servicos/jardinagem"/>">Jardinagem</a></li>
								<li><a href="<c:url value ="/servicos/limpeza"/>">Limpeza e Zeladoria</a></li>
								<li><a href="<c:url value ="/servicos/piscinas"/>">Manutenção de Piscinas</a></li>
								<li><a href="<c:url value ="/servicos/seguranca"/>">Monitoramento e Segurança</a></li>
								<li><a href="<c:url value ="/servicos/recepcao"/>">Recepção e Portaria</a></li>
							</ul></li>
						<li class="no-active" role="presentation"><a href="<c:url value ="/trabalheConosco"/>">Trabalhe conosco</a></li>
						<li class="no-active" role="presentation"><a href="<c:url value ="/contato"/>">Entre em contato</a></li>
					</ul>
				</div>
			</div>
		</header>

    <decorator:body/>

	<footer class="rodape row">
			<div class="rodape-map row">	
				<div class="col-md-4">
				<h5>Mapa do site</h5>
					<ul class="links-rodape list-group">
						<li class="list-group-item"><a href="<c:url value ="/"/>">Home</a></li>
						<li class="list-group-item"><a href="<c:url value ="/sobreNos"/>">Sobre nós</a></li>
								<li class="list-group-item"><a href="<c:url value ="/trabalheConosco"/>">Trabalhe conosco</a></li>
						<li class="list-group-item"><a href="contato">Entre em contato</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<h5>Serviços</h5>
					<ul class="links-rodape list-group">
						<li class="list-group-item"><a href="<c:url value ="/servicos/jardinagem"/>">Jardinagem</a></li>
						<li class="list-group-item"><a href="<c:url value ="/servicos/limpeza"/>">Limpeza e Zeladoria</a></li>
						<li class="list-group-item"><a href="<c:url value ="/servicos/piscinas"/>"/>Manuntenção de Piscinas</a></li>
						<li class="list-group-item"><a href="<c:url value ="/servicos/seguranca"/>">Monitoramento e Segurança</a></li>
						<li class="list-group-item"><a href="<c:url value ="/servicos/recepcao"/>">Recepção e Portaria</a></li>
	
					</ul>
				</div>
				<div class="col-md-4">
                                    <h5>Nosso Endereço</h5>
                                        <ul class="links-rodape list-group">
                                            <li class="list-group-item rodape-endereco">
						Rua Felice Tossi, 
                                                </br>
                                                Cohab Teotônio Vilela
                                                </br>
                                                São Paulo - SP
                                            </li>    
					</ul>
				</div>
			</div>
			<div class="rodape-direitos row">
				<div class="copyright col-md-12">
                	COPYRIGHT © 2015 - Js Serviços Terceirizados - Todos os direitos reservados - Desenvolvimento:
                	<a href="#">Life Jesus</a>
            	</div>
	        </div>
		</footer>


</body>
</html>