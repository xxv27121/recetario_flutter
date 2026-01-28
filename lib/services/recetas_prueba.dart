import '../models/receta.dart';

List<Receta> recetasPrueba = [
  Receta(
    id: 1,
    nombre: 'Tortilla de patatas',
    tipo: 'Plato principal',
    ingredientes: '''
Patatas
Huevos
Cebolla
Sal
''',
    pasos: '''
Pelar las patatas
Cortarlas en rodajas
Freírlas en aceite
Batir los huevos
Mezclar y cuajar
''',
    foto: 'assets/images/tortilla.jpg',
  ),

  Receta(
    id: 2,
    nombre: 'Ensalada César',
    tipo: 'Ensalada',
    ingredientes: '''
Lechuga
Pollo
Queso
Crutones
''',
    pasos: '''
Lavar la lechuga
Cortar el pollo
Mezclar ingredientes
Añadir salsa
''',
    foto: 'assets/images/ensalada.jpg',
  ),

  Receta(
    id: 3,
    nombre: 'Bizcocho',
    tipo: 'Postre',
    ingredientes: '''
Harina
Huevos
Azúcar
Yogur
''',
    pasos: '''
Mezclar ingredientes
Verter en molde
Hornear 40 minutos
Dejar enfriar
''',
    foto: 'assets/images/bizcocho.jpg',
  ),

  Receta(
    id: 4,
    nombre: 'Spaghetti Carbonara',
    tipo: 'Pasta',
    ingredientes: '''
Agua
Sal
320g de spaghetti nº5
100g de guanciale
50g de pecorino romano
5 yemas de huevo
Pimienta negra
''',
    pasos: '''
[La pasta]
Pon a hervir el agua con sal
Echa la pasta y cuécela un minuto menos de lo indicado
Escurre y reserva un vaso del agua de cocción

[La salsa]
Ralla el pecorino y ponlo en un cuenco
Añade pimienta y las yemas
Bate hasta obtener una crema espesa
Añade grasa del guanciale y agua caliente poco a poco

[Montaje]
Pon la pasta en la sartén con el guanciale
Añade la salsa fuera del fuego
Remueve hasta que cuaje ligeramente
Espolvorea queso y pimienta
Sirve inmediatamente
''',
    foto: 'assets/images/spaghettiCarbonara.jpg',
  ),

  Receta(
    id: 5,
    nombre: 'Canelones de pollo',
    tipo: 'Pasta',
    ingredientes: '''
[Relleno]
300g de contramuslo de pollo sin hueso y sin piel
100g de jamón ibérico
Media cebolla pequeña
2 cucharadas de aceite de oliva virgen extra
Sal
1 cucharada de harina de trigo
100g de leche
150g de tomate frito casero
Láminas de lasaña preparadas para rehidratar y usar
Queso rallado

[Para la bechamel]
1 cucharada de aceite de olviva virgen extra
15g de mantequilla
55g de harina
400g de leche entera
''',
    pasos: '''
[Relleno]
Pica los contramuslos de pollo en trozos, haz lo mismo con el jamón
Trocea fina la cebolla
Pon el aceite de olvia en una sartén grande y añade la cebolla, cuando esté dorada agrega la carne de pollo con un poco de sal y deja que se fria bien
Retira hacia un lado la carne y en la propia sartén hecha unaa cucharada de harina de trigo y sofríela un poco
Añade la leche y dale unas vueltas, luego mezcla con la carne
Añade el tomate frito, prueba y retira

[Bechamel para la cobertura]
Pon en una cacerola el aceite y la mantequilla de la bechamel
Cuando estén calientes añade la harina y deja que se tueste sin parar de remover
Añade poco a poco la sal y la leche templada y sigue removiendo hasta que quede una salsa espesa

[Montaje]
Precaienta el horno a 180ºC
Pon unas láminas de lasaña en agua caliente durante unos minutos, sécalas con un paño limpio
Unta un recipiente apto para horno con aceite de oliva
Rellenaa cada canelón y colócalo en el recipiente, Cúbrelos todos con la bechamel y extiende el queso rallado
Hornea durante 10 minutos
''',
    foto: 'assets/images/canelonesDePollo.jpg',
  ),

  Receta(
    id: 6,
    nombre: 'Fetuccini con zamburiñas',
    tipo: 'Pasta',
    ingredientes: '''
350g de pasta fresca
Un poco de sal
1kg de zamburiñas, el peso es con la concha

[Para la sala]
2 cucharadas de aceite de oliva virgen extra
1 diente de ajo
300g de nata
50g de queso manchego
2 guindillas secas
Sal
Pimienta
Cebollino para adornar
''',
    pasos: '''
[Las zamburiñas]
Limpia laz zamburiñas y reserva

[La salsa]
Trocea el ajo y las guindillas
Pon el aceite en la sartén y ponla al fuego, cuando esté caliente retirala del fuego y añade el ajo y las guindillas
Añade la nata
Cuando se caliente incorpor el queso rallado y remueve
Salpimienta y deja que espese

[La pasta]
Pon agua a hervir con un poco de sal
Cuece la pasta 2 o 3 minutos, escúrrela y resérvala

[Montaje]
Pon las zamburiñas en la plancha con unas gotas de aceite y una pizca de sal, deja que se hagan a tu gusto
Pon la pasta en los platos, reparte las zamburiñas
Cubre con la salsa por encima y añade un poco de cebollino picado
''',
    foto: 'assets/images/fetucciniConZamburiñas.jpg',
  ),

  Receta(
    id: 7,
    nombre: 'Risotto nero con sepia',
    tipo: 'Arroz',
    ingredientes: '''
1 chalota
40g de aceite de oliva virgen extra
320g de arroz Carnaroli o Arborio
50g de vino blanco
800g de caldo de pescado
3 sobres de tinta de calamar
2 sepias medinas
1 pizca de sal
30g de queso parmesano
''',
    pasos: '''
[La sepia]
Limpia las sepias, cortalas en tiras muy finas, échales un poco de sal y reserva

[El risotto]
Pon 800g de caaldo en un cazo, añade la tinta de calamar y reserva
Ralla el parmesano y reserva
Echa el aceite de oliva en la cazuela que vayas a hacer el arroz, ponla al fuego, cuando esté caliente retíralo y añade la chalota hasta que se fría
Ponla de nuevo al fuego, pero bajo, añade el arroz, dale vueltas 3 minutos
Añade el vino y remueve
Ve añadiendo poco a poco el caldo templado mientras remueves hasta que esté en su punto
Una vez terminado deja reposar 1 minuto, añade el parmesano y remueve

[Montaje del plato]
Mientras reposa el arroz pasa las tiras de sepia por una sarten a fuego fuerte durante 1 minuto
Sirve el risotto en el plato, Añade las tiras de sepia por encima y decora con alguna hierba aromática
''',
    foto: 'assets/images/risottoNeroConSepia.jpg',
  ),

  Receta(
    id: 8,
    nombre: 'Arroz con bacalao y alcachofas',
    tipo: 'Arroz',
    ingredientes: '''
400g de arroz bomba
300g de bacalao desalado
100g de guisantes
150g de judías verdes
100g de espárragos verdes
Medio pimiento verde
Media cebolla pequeña
1 diente de ajo
1 tomante maduro
10 corazones de alcachofa
3 cucaradas de aceite de oliva virgen extra
1200g de fumet de pescado
Sal
Preparado para tempura
''',
    pasos: '''
[El Arroz]
Desalar el bacalao y reservar 4 trozos del tamaño de un corazón de alcachofa
Trocear el ajo y la cebolla muy pequeño
Pelar y trocear el tomate muy pequeño
Reservar 4 corazones de alcachofa y cortar el resto en cuartos
Trocear las judías verdes
Quitar a los espárragos el extremo de los tallos y cortar el resto en trozos
Picar el pimiento muy fino
Poner una cazuela al fuego con el aceite y cuando esté caliente sofreír la cebolla
Añadir el ajo, despues el tomate y poner un poco de sal cuando estén fritos
Añadir el resto de verduras y dejar freír unos minutos
Incorporar el bacalao y dejar que se sofría un poco
Añadir el arroz y remover medio minuto
Incorporar el fumet caliente
Poner a fuego fuerte 10 minutos, despues bajar el fuego 5 minutos, apartar y reposar unos minutos mas

[La tempura]
Cocer al vapor los corazones de alcachofa con un poco de sal
Hacer una tempura siguiendo las instrucciones del preparado
pasar los corazones de alcachofa y el bacalao reservado y freir en abundante aceite
escurrir en papel de cocina y hacer 4 brochetas con un trozo de cada
Colocar sobre el arroz antes de servir
''',
    foto: 'assets/images/arrozConBacalaoYAlcachofas.jpg',
  ),
];
