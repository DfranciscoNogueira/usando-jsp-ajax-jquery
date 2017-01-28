<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>JSP com AJAX e JQuery</title>
        
	<script type="text/javascript" src="javaScript/jquery-1.3.2.js"></script>
	<script type="text/javascript" src="javaScript/ajax.js"></script>
	
    <script type="text/javascript">
    	$(document).ready(function() {
        	$('#titulo').click(function() {
            	$('#conteudo').toggle('slow');
            });
        });
    </script>
    
    <style type="text/css">
      a {color: red; font-weight: bold; text-decoration: none;}
      a:hover {color: red; font-weight: bold; text-decoration: underline;}
      fieldset {width: 600px; margin: 0 auto;}
    </style>
    
  </head>
  <body>
    <fieldset>            
      <legend><a id="titulo" href="#"><h3>Exemplo de AJAX</h3></a></legend>
      <div id="conteudo">
        <b>Estados:</b>
        <select id="txtEstado" onchange="paginaAjax('cidade.jsp?tipo=estado&estado='+this.value, 'cidade')">
          <option value="">Escolha um Estado</option>
          <option value="">-----------------</option>
          <option value="sp">São Paulo</option>
          <option value="pr">Paraná</option>
          <option value="rj">Rio de Janeiro</option>
        </select>
        <div id="cidade">
          <b>Cidades:</b>
          <select id='txtCid' name="txtCidade" onchange="paginaAjax('cidade.jsp?tipo=cidade&cidade='+this.value, 'descCid')" disabled="true">
            <option value="">-----------------</option>
          </select>
        </div>
        <div id="descCid"></div>
        <div id="detalhes"></div>
      </div>
    </fieldset>        
  </body>
</html>
