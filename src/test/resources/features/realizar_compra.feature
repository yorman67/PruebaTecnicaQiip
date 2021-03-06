#language:es

Característica:Verificar el funcionamiento del modulo de compras
  Como usuario de la aplicacion
  Quiero agregar articulos al carrito
  Para finalizar mi compra



  Escenario:compra exitosa
    Dado que el usuario esta logueado en la app

    Dado que el usuario los productos
      | Sauce Labs Fleece Jacket          |
      | Sauce Labs Onesie                 |
      | Test.allTheThings() T-Shirt (Red) |
    Cuando el usuario completa la compra
    Entonces se observa una pantalla con el mensaje "CHECKOUT: COMPLETE!"

  @manual
  @manual-result:passed
  @manual-last-tested:sprint-15
  Escenario:agregar al carrito
    Dado el carrito se encuentra vacio
    Cuando el usuario agrega un producto
    Entonces aparece el producto en el carrito

  @manual
  @manual-result:passed
  @manual-last-tested:sprint-15
  Escenario:remover producto
    Dado que el carrito tiene productos
    Cuando el usuario remueva el producto
    Entonces el producto desaparece del carrito

  @manual
  @manual-result:passed
  @manual-last-tested:sprint-15
  Escenario:filtro de la pagina
    Dado que el usuario se en cuentra en la pagina de productos
    Cuando el usuario seleccione una opcion del filtro
    Entonces los productos se deberan organizar de la forma adecuada

  @manual
  @manual-result:compromised
  @manual-last-tested:sprint-15
  Escenario:compra cancelada
    Dado que el usuario ingreso los datos de la orden
    Cuando el usuario cancela la orden
    Entonces aparece la pantalla de productos

  @manual
  @manual-result:compromised
  @manual-last-tested:sprint-15
  Escenario:descripcion del producto
    Dado el usuario se encuentra en la pagina de productos
    Cuando el usuario escoje un producto
    Entonces el usuario observa la descripcion y valor del producto