///Lista de recetas
import '../models/receta.dart';

List<Receta> recetasPrueba = [
  Receta(
    id: 1,
    nombre: 'Tortilla de patatas',
    tipo: 'Tortillas',
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

  Receta(
    id: 9,
    nombre: 'Arroz con costra al horno',
    tipo: 'Arroz',
    ingredientes: '''
320g de arroz
700ml de caldo de cocido o de pollo
500g de pollo en trozos
100g de garbanzos cocidos y escurridos
250g entre longaniza blanca y roja
250g entre butifarra blanca y negra
1 tomante
5 huevos
Perejil
Aceite de oliva
Sal
''',
    pasos: '''
Cortamos la butifarra en rodajas y la longaniza en trozos de bocado.
Pon una paellera a fuego medio con un poco de aceite de oliva, cuando esté caliente añade la longaniza y sal.
Deja que se dore y retira de la pellera.
Repite el proceso con la butifarra.
Repite el proceso con el pollo pero no lo retires.
Retira el exceso de grasa y deja el equivalente a 2 o 3 cucharadas.
Ralla el tomate y añádelo al pollo, mezcla y deja que se cocine 5 minutos.
Incorpora los garbnzos, el arroz, las butifarras y las longanizas, mezcla dos minutos.
Vierte el caldo caliente y deja cocer 12 minutos a baja temperatura.
Precalienta el horno a 220ºC.
Bate los huevos con una pizca de sal y perejil picado.
Vierte el huevo por encima cuando hayan pasado los 12 minutos.
Mete la paellera en el horno y déjala 10 minutos.
Retira del horno y deja reposar 5 minutos tapada con un paño o papel de aluminio.
''',
    foto: 'assets/images/arrozConCostra.jpg',
),

 Receta(
    id: 10,
    nombre: 'Ensaladilla Rusa',
    tipo: 'Ensalada',
    ingredientes: '''
1Kg de patatas
3 Zanahorias grandes
1 Chorro de vinagre
3 Huevos
150g de guisantes
100g de aceitunas
300g de mahonesa
1 pimiento sado
Sal
Opcional (anchoas, atún)
''',
    pasos: '''
[Cocer verduras]
Lavar patatas y zanahorias.
Poner en una olla grande con abundnte agua, sal y un chorro de vinagre.
Cocer a fuego medio hasta que esten tiernas, unos 25 minutos.

[Cocer los huevos]
Sumergir en agua hirviendo.
Cocer durante 10 minutos.
Retirar y enfriar con agua fria, pelar y reservar.

[Guisantes (Solo si son Crudos o congelados)]
Cocer en agua con sal durante 5 minutos.
Escurrir y reservar.

[Cortar los ingredientes]
Una vez que todo ha enfriado:
Pelamos las patatas y zanahorias.
Las cortamos en dados pequños.
Picamos dos de los huevos cocidos y las aceitunas.

[Pasos finales]
Mezclamos los ingredientes picados en un bol grande y añadimos opcionalmente atún o anchoas.
Añadimos sal y mahonesa poco a poco.
Cubrimos el bol con film transparente y dejamos reposar en nevera dos horas.
Decoramos con el huevo duro restante en rodajas y el pimiento en tiras.
''',
    foto: 'assets/images/ensaladillaRusa.jpg',
  ),

Receta(
    id: 11,
    nombre: 'Ensalada de pepino',
    tipo: 'Ensalada',
    ingredientes: '''
2 Pepinos medianos
3 Cucharadas de aceite de oliva
1 Cucharada de vinagre de manzana o el jugo de medio limón
1 Diente de ajo picado o rallado (opcional)
Sal y pimienta al gusto
Hierbas frescas como menta o perejil (opcional)
1 Taza de yogurt natural (opcional)
''',
    pasos: '''
Lavar bien los pepinos y, opcionalmente, pelarlos.
Cortarlos en rodjas finas o en tiras.
En un bol, mezclar el aceite, el vinagre o limon, el ajo, el yogurt si se usa, sal y pimienta.
Agregar los pepinos, mezclar bien y dejar reposar unos minutos en el refrigerador.
Decorar con hierbas frescas antes de servir.
''',
    foto: 'assets/images/ensaladaDePepino.jpg',
    ),

Receta(
    id: 12,
    nombre: 'Crema de calabaza',
    tipo: 'Cremas',
    ingredientes: '''
500g de calabaza
3 Calabacines medianos
4 Zanahorias
1 Diente de ajo picado
700ml de Caldo
Aceite de oliva
1 Cucharada de mantequilla
Pimienta
Nuez moscada
Pimentón dulce o picaante para decorar
''',
    pasos: '''
Lavamos y cortamos las verduras en trozos medianos.
En una sartén grande ponemos 4 cucharadas de aceite de oliva y calentamos.
Añadimos el ajo picado y cuando dore añadimos las verduras, nuez moscada, sal y pimienta.
Ponemos fuego alto hasta que las verduras suelten agua y reduzcan.
Cuando las verduras cojan color las pasamos a la olla express.
Añadimos el caldo, cerramos la olla y mantenemos a fuego medio 12 minutos.
Abrimos la olla (con cuidado), añadimos la mantequilla y batimos.
Correjimos de sal, decoramos con pimentón y servimos.
''',
    foto: 'assets/images/CremaDeCalabaza.jpg',
    ),

Receta(
    id: 13,
    nombre: 'Crema de espárragos blancos',
    tipo: 'Cremas',
    ingredientes: '''
1 Bote de espárragos grandes
1 Huevo duro
Sal
Pimienta
2 Cucharadas de aceite de oliva
Nueces
''',
    pasos: '''
Pelar el huevo duro y reservar en el vaso de la batidora.
Añadir sal, el aceite, los espárragos con su caaldo y un poco de pimienta.
Batimos
Podemos servir frío o clentar en el microhondas.
Despues de servir añadimos nueces picadas.
''',
    foto: 'assets/images/cremaDeEsparragos.jpg',
),

Receta(
    id: 14,
    nombre: 'Muhammara (crema siria de pimientos y nueces)',
    tipo: 'Cremas',
    ingredientes: '''
Pimiento asado
Ajo sin el germen
Comino
Limón
Miel
Aceitunas
Ajo y perejil picado(decoración)
''',
    pasos: '''
Echamos en un vaso de batidora todos los ingredientes excepto aceitunas y picada de ajo y perejil.
Batímos hasta conseguir la textura deseada.
Dejamos unas horas en la nevera para que espese.
Decoramos con aceitunas y la picada de ajo y perejil.
''',
    foto: 'assets/images/Muhammara.jpg',
),

Receta(
    id: 15,
    nombre: 'Manzanas asadas',
    tipo: 'Postre',
    ingredientes: '''
8 Manzanas medianas o 4 grandes
Trocitos de mantequilla
Azúcar y cel molida
''',
    pasos: '''
Lavamos y descorazonamos las manzanas.
Las colocamos en una fuente para horno.
Sobre cada manzana ponemos un trozo pequeño de mantequilla.
espolvoremos azúcar y canela.
Hornemos a 180ºC.
Al emplatar podemos añadir un poco de nata montada.
''',
    foto: 'assets/images/manzanasAsadas.jpg',
),

Receta(
    id: 16,
    nombre: 'Natillas',
    tipo: 'Postre',
    ingredientes: '''
4 Huevos
2 Cucharadas soperas de maicena
3 Cucharadas de azúcar
Medio litro de leche
1 Cucharadita de aroma de vainilla
1 Cucharadita de canela
6 Cucharaditas de Caramelo líquido
''',
    pasos: '''
Separar claras y yemas, poner las yemas en un bol.
Mezclar las yemas con la maicena, canela, azúcar, vainilla y un vaso de leche.
Batir la mezla.
Calentar el resto de la leche.
Cuando la leche esté tibia echar la mezcla y remover con una varilla enérgicmente.
Remover a fuego medio durante 10 minutos o hasta que espese, reservar.
Verter caramelo en el fondo de los recipientes y rellenar con la mezcla.
Dejar enfriar y pasar a la nevera.
Se puede decorar con galleta triturada antes de servir.
''',
    foto: 'assets/images/natillas.jpg',
),
];
