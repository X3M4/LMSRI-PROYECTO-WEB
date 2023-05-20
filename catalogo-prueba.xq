<html>
 
  <body>
    <h2>Llistat de llibres</h2>
    
    <table border="1px solid">
      <tr>
        <th>Código</th>
        <th>Nombre</th>
        <th>Precio</th>
        <th>Formato</th>
        <th>Precio</th>
        <th>Precio por Kg</th>
        <th>Calibre</th>
        <th>Canal</th>
        <th>Época</th> 
      </tr>
      
        {
          for $b in doc("/home/chema/Documentos/CFGS-DAM/LENGUAJES DE MARCAS/TEMA-5/catalogo.xml")//catalogo/producto
          order by ($b/codigo)
          return
              <tr>
                <td>{data($b/codigo)}</td>
                <td>{data($b/nombre)}</td>
                <td>{data($b/formato)}</td>
                <td>{data($b/peso)}</td>
                <td>{data($b/precio)}</td>
                <td>{data($b/precio_por_kg)}</td>
                <td>{data($b/calibre)}</td>
                <td>{data($b/canal)}</td>
                <td>{data($b/epoca)}</td>
                
              </tr>
        }
    </table>

</body>
</html> 

