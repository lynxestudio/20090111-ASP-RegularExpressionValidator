# Usando los controles de validación ASP .NET III (RegularExpressionValidator)

Este control es verdaderamente útil, si necesitamos comparar el valor de un campo con una expresión regular , este control aplica esencialmente si queremos comparar el formato de una dirección de correo electrónico,una fecha o un código postal entre o bien para buscar un patrón dentro del texto.


Lo instalamos: copiamos el ensamblado a la carpeta bin, ejecutamos xsp y abrimos el navegador con la dirección 
<pre>
http://localhost:8080/RegularExpression.aspx. 
</pre>

Al ejecutar el programa se mostrará como en la siguiente imagen.

<img src="image1.png"/>

<h3>Propiedades del control RegularExpressionValidator</h3>

<strong>Display:</strong> Esta propiedad puede tener 3 valores: Static es la propiedad predeterminada, reserva un espacio suficiente en la página para mostrar el mensaje de error.Dynamic el espacio para mostrar el mensaje no se reserva, cuando el mensaje se despliega se desplaza el contenido existente en la página. None el mensaje no será desplegado en el lugar del control sino en el control ValidationSummary si se localiza en la misma página.
<br>
<strong>ValidatorExpression:</strong> El valor de la expresión regular con la que se compara el valor del control a validar.

<strong>controlToValidate:<strong> El identificador del control donde obtenemos el valor para validar.

  <strong>ErrorMessage:</strong> El texto del mensaje de error a desplegar
