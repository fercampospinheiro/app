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
<title>Js Serviços Terceirizados</title>
    <script th:inline="javascript">
	
	      google.load("feeds", "1"); //Load Google Ajax Feed API (version 1)

	        var url = "http://www.ebc.com.br/rss/noticias/feed.xml";
	        var numeroFeeds = 5;

	    	
	    	function obtemURLNoticia(link)	{
	    		return link.replace( /\s/g, '-' );
	    		}


	        function configuracaoFeeds() {
	            var feed = new google.feeds.Feed(url) //Google Feed API method
	            feed.setNumEntries(numeroFeeds) //Google Feed API method
	            feed.load(exibeFeed) //Google Feed API method
	        }

	        function exibeFeed(resultado) {
	            if (!resultado.error) {
	                var feeds = resultado.feed.entries;
	                var ul = $("<ul/>").addClass("list-group")


	                $.each(feeds, function (i, value) {

	                    var li = $("<li/>").addClass("list-group-item")
	                    var a = $("<a/>");

	                    link = "/app/noticias/"+ (i+1) +"/"+ obtemURLNoticia(value.title);

	                    a.prop("href",link);
	                    a.text(value.title)
	                    
	                    li.append(a);
	                    ul.append(li);

	                });
	                $("#feeddiv").append(ul);

	            }
	            else
	                alert("Noticias não carregadas!")
	        }

	        google.setOnLoadCallback(configuracaoFeeds);
    </script>
</head>
<body>
 <!--CONTEUDO-->
    <div class="area-conteudo">

        <div class="row">
            <div class="servico col-md-12">
				<div class=" row">
	                    <img src="<c:url value="/resources/image/ID-100107373-A.jpg"/>" class="imagem-servicos"/>
	            </div>
        	</div>
        </div>	
        <div class="servicos-destaque row">
	        <div class="destaque col-md-3" >
	        	<div class="item zeladoria row">
	        		<img alt="" src="<c:url  value ="/resources/image/zeladoria.png"/>" class="imagem-zeladoria"/>
	        		<h3 class="text-center">Limpeza</h3>
	        	</div>
	        </div>
	         <div class="destaque col-md-3">
	        	<div class="item seguranca row">
	        		<img alt="" src="<c:url value="/resources/image/seguranca.png"/>" class="imagem-seguranca"/>
	        		<h3 class="text-center">Segurança</h3>
	        	</div>
	        </div>
	         <div class="destaque col-md-3">
		        <div class="item portaria row">
		        	<img alt="" src="<spring:url value="/resources/image/portaria.png"/>" class="imagem-portaria "/>
		        	<h3 class="text-center">Recepcao</h3>
		        </div>
	        </div>
	         <div class="destaque col-md-3">	
	        	<div class="item jardinagem row">
	        		<img alt="" src="<spring:url value="/resources/image/jardinagem.png"/>" class="imagem-jardinagem "/>
	        		<h3 class="text-center">Jardinagem</h3>
	        	</div>
	        </div>
        </div>
        <div class="resumo-empresa row">    
            <div class="empresa col-md-12">
             <p> A <strong>JS TERCEIRIZAÇÕES</strong> é uma empresa nova no mercado. Nosso foco é trazer
                 serviços diferenciados em um mercado competitivo.</p>

             <p>Desde o processo de seleção dos profissionais, treinamento e monitoração , queremos oferecer
                 ao nosso cliente, serviços de qualidade que atenda suas expectativas e propostas que se
                 encaixem dentro de suas necessidades.</p>
            </div>
        </div>
        <div class="outros-conteudo row">
		            <div class="testemunho col-md-4">
		                <div class="col-md-12s  testemunho">
		                    <div class="row titulo text-center">
		                        <h4>
		                            <i class="fa fa-shield"></i>
		                            Testemunhos
		                        </h4>
		                    </div>
		                </div>
		                <div class="row">
		                    <div id="myCarousel" class="carousel slides" data-ride="carousel">
		                        <div class="carousel-inner" role="listbox">
		
		                            <div class="item active text-center">
		                                <p>Empresa séria, estão de parabéns. Continuem assim! </p>
		
		                                <p><strong>Marco Buarque</strong></p>
		                            </div>
		
		                            <div class="item text-center">
		                                <p>"Portaria nota 10!!!!!!!"</p>
		
		                                <p><strong>Jéssica Catarina</strong></p>
		                            </div>
		
		                            <div class="item text-center">
		                                <p>"Meu jardim ficou lindo no Reveillon - salvaram minha vida!"</p>
		
		                                <p><strong> Iris Eleuza</strong></p>
		                            </div>
		
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="noticias col-md-4">
		                <div class="row">
		                    <div class="row titulo text-center">
		                        <h4>	
		                            <i class="fa fa-shield"></i>
		                            Notícias
		                        </h4>
		                    </div>
		                </div>
		                <div id="feeddiv" class="row">
		
		                </div>
					</div>
		            <div class="orcamento col-md-4 text-center">
		                <h2>LIGUE AGORA</h2>
		
		                <h2>(11) 95153-5162/5124</h2>
		
		                <h2>PEÇA</h2>
		
		                <h2>UM ORÇAMENTO</h2>
		            </div>
	            </div>
            </div>
</body>
</html>