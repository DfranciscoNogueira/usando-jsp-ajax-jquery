<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*, br.com.teste.modelo.Cidade" %>
<script type="text/javascript" src="javaScript/jquery-1.3.2.js"></script>
<script type="text/javascript" src="javaScript/ajax.js"></script>

<%            
  Thread.sleep(1000);
  response.setContentType("text/html");
  response.setHeader("Cache-Control", "no-cache");

  List<Cidade> cidades = new ArrayList<Cidade>();
  cidades.add(new Cidade("Assis", "sp", "Cidade localizada no interior de Sao Paulo, com mais de 100 mil habitantes"));
  cidades.add(new Cidade("Maracai", "sp", "Cidade localizada no interior de Sao Paulo, com mais de 30 mil habitantes"));
  cidades.add(new Cidade("Bauru", "sp", "Cidade localizada no interior de Sao Paulo, com mais de 300 mil habitantes"));
  cidades.add(new Cidade("Marilia", "sp", "Cidade localizada no interior de Sao Paulo, com mais de 200 mil habitantes"));
  cidades.add(new Cidade("Londrina", "pr", "Cidade com mais de 500 mil habitantes"));
  cidades.add(new Cidade("Maringa", "pr", "Cidade com mais de 600 mil habitantes"));
  cidades.add(new Cidade("Arapongas", "pr", "Cidade localizada no interior do Parana, com mais de 200 mil habitantes"));
  cidades.add(new Cidade("Bandeirantes", "pr", "Cidade localizada no interior do Parana, com mais de 30 mil habitantes"));
  cidades.add(new Cidade("Pato Branco", "pr", "Cidade localizada no interior do Parana"));

  if (request.getParameter("tipo").equals("estado")) {
      String estado = request.getParameter("estado") == null ? "" : request.getParameter("estado");                
%>
      <b>Cidades:</b><select id="txtCid" name="txtCidade" onchange="paginaAjax('cidade.jsp?tipo=cidade&cidade='+this.value, 'descCid')" >
        <option>Escolha uma Cidade</option>
        <option>------------------</option>
<%
  for (Cidade c : cidades) {
      if (c.getEstado().equalsIgnoreCase(estado)) {                            
%>
      <option value="<%=c.getCidade()%>"><%= c.getCidade()%></option>
<%       
    }
  }
%>
      </select>
<%                
  } else if (request.getParameter("tipo").equals("cidade")) {

  for (Cidade c : cidades) {
      if (c.getCidade().equals(request.getParameter("cidade"))) {
%>
      <b>Descricão:</b> <%=c.getDescricao()%> 
      <a id="mais" href="#" onclick="paginaAjax('cidade.jsp?tipo=detalhes&cidade=+<%=c.getCidade()%>+\n\&estado=<%=c.getEstado()%>&descricao=<%=c.getDescricao()%>', 'detalhes')">
      [+]</a>
<%
        break;
      }
    }
  } else if (request.getParameter("tipo").equals("detalhes")) {
%>
      <hr>
      <h4>Cidade selecionada: </h4>
      <b>Nome: </b> <%=request.getParameter("cidade") %><br />
      <b>Estado: </b> <%=request.getParameter("estado") %><br />
      <b>Descrição: </b> <%=request.getParameter("descricao") %><br />
<%
  }
%>