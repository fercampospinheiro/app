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
<title>Js Serviços Terceirizados - Noticias</title>
<script>
/*<![CDATA[*/
	google.load("feeds", "1"); //Load Google Ajax Feed API (version 1)
	
	var url="http://www.ebc.com.br/rss/noticias/feed.xml";
	var numeroFeeds = 5;

	function configuracaoFeeds(){
	  var feed = new google.feeds.Feed(url) ;//Google Feed API method
	  feed.setNumEntries(numeroFeeds); //Google Feed API method
	  feed.load(exibeFeed); //Google Feed API method
	}
	
	function exibeFeed(resultado){
	  if (!resultado.error){
	    var feeds = resultado.feed.entries;
	    var conteudo = "";
	    var primeiraNoticia = $(".indiceNoticia").val() -1;
	      
	    $.each(feeds,function(i,value){
	  
	        if(i == primeiraNoticia ){    
	            var paragrafo = "";
	            conteudo = paragrafo.concat(
	                "<h3><strong>"+value.title+"</strong></h3>",
	                value.content,
	                value.author,
	                "</br><Strong>Fonte www.ebc.com.br</strong>"
	            )
	            
	             $("#noticia").append(conteudo);
	        }
	
	      
	    })
	
	  }
	  else
	    alert("Noticias não carregadas!")
	}
	
	google.setOnLoadCallback(configuracaoFeeds);
	
	/*]]>*/
</script>

</head>
<body>
	  <div class="area-conteudo">
            <div class="resumo row">
                <input type="hidden" class="indiceNoticia"  value ="${indiceNoticia}"/>
                <div id = "noticia" class="noticia well">

                </div>
            </div>
	  </div>
</body>
</html>