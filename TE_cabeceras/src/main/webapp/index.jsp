<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Respuesta usando cabeceras de Servlet</h1>
        <ul>
            <li><a href="RespHTML">Devolver un HTML</a></li>
            <li><a href="RespXLS">Devolver un XLS</a></li>
            <li><a href="RespXML">Devolver un XML</a></li>
            <li><a href="RespJSON">Devolver un JSON</a></li>
            <li><a href="RespCSV">Deolver un CSV</a></li>
        </ul>
         <section>
             <form name="formPDF" method="POST" action="RespPDF">
                 <label>Texto:</label><br>
                 <textarea name="contenido" cols="35" rows="5"></textarea><br>
                 <button type="submit">Enviar Datos</button>
                     
             </form>
         </section>
    </body>
</html>
