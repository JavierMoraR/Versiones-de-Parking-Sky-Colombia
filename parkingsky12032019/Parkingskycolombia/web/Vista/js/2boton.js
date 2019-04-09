
                
            function opcionInsertar() {                 
               document.getElementById("txtOpcion").value="1";
               document.form1.submit();
             }
                         
            function opcionConsultar() {                 
               document.getElementById("txtOpcion").value="2";
               document.form1.submit();
                          

             }
             
             function opcionConsultardos(){
                 
                document.getElementById('file').remove();
                opcionConsultar();
                document.form1.submit();
                 
             }
             
             