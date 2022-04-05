% Extracción de reglas para desparasitar canes.
% Ectoparásitos y épocas.

% NOROESTE
pulgas:-
  tiene_pulgas,
  pregunta('¿Es perro?'),
  pregunta('¿Estuvo en verano?'),
  pregunta('¿Ha pasado por Galicia?');
  pregunta('¿Ha pasado por Asturias?');
  pregunta('¿Ha pasado por Cantabria?');
  pregunta('¿Ha pasado por Pais Vasco?');
  pregunta('¿Ha pasado por Navarra?');
  pregunta('¿Ha pasado por La Rioja?');
  pregunta('¿Ha pasado por Castilla y León?').
  
garrapatas:-
  tiene_garrapatas,
  pregunta('¿Es perro?'),
  pregunta('¿Estuvo en otoño o primavera?'),
  pregunta('¿Ha pasado por Galicia?');
  pregunta('¿Ha pasado por Asturias?');
  pregunta('¿Ha pasado por Cantabria?');
  pregunta('¿Ha pasado por Pais Vasco?');
  pregunta('¿Ha pasado por Navarra?');
  pregunta('¿Ha pasado por La Rioja?');
  pregunta('¿Ha pasado por Castilla y León?').
  
flebotomos:-
  tiene_flebotomos,
  pregunta('¿Es perro?'),
  pregunta('¿Estuvo en Junio?');
  pregunta('¿Estuvo en Julio?');
  pregunta('¿Estuvo en Agosto?');
  pregunta('¿Estuvo en Septiembre?');
  pregunta('¿Estuvo en Octubre?'),
  pregunta('¿Ha pasado por Galicia?');
  pregunta('¿Ha pasado por Asturias?');
  pregunta('¿Ha pasado por Cantabria?');
  pregunta('¿Ha pasado por Pais Vasco?');
  pregunta('¿Ha pasado por Navarra?');
  pregunta('¿Ha pasado por La Rioja?');
  pregunta('¿Ha pasado por Castilla y León?').
  
mosquitos:-
  tiene_mosquitos,
  pregunta('¿Es perro?'),
  pregunta('¿Ha estado en zonas de agua estancada en torno al amanecer o anochecer?'),
  pregunta('¿Estuvo en Junio?');
  pregunta('¿Estuvo en Julio?');
  pregunta('¿Estuvo en Agosto?');
  pregunta('¿Estuvo en Septiembre?');
  pregunta('¿Estuvo en Octubre?'),
  pregunta('¿Ha pasado por Galicia?');
  pregunta('¿Ha pasado por Asturias?');
  pregunta('¿Ha pasado por Cantabria?');
  pregunta('¿Ha pasado por Pais Vasco?');
  pregunta('¿Ha pasado por Navarra?');
  pregunta('¿Ha pasado por La Rioja?');
  pregunta('¿Ha pasado por Castilla y León?').
  
% SURESTE
pulgas:-
  tiene_pulgas,
  pregunta('¿Es perro?'),
  pregunta('¿Estuvo en verano?'),
  pregunta('¿Ha pasado por Cataluña?');
  pregunta('¿Ha pasado por Comunidad Valenciana?');
  pregunta('¿Ha pasado por Murcia?');
  pregunta('¿Ha pasado por Andalucia?');
  pregunta('¿Ha pasado por Islas Baleares?').
  
garrapatas:-
  tiene_garrapatas,
  pregunta('¿Es perro?'),
  pregunta('¿Estuvo en Abril?');
  pregunta('¿Estuvo en Mayo?');
  pregunta('¿Estuvo en Junio?');
  pregunta('¿Estuvo en Julio?');
  pregunta('¿Estuvo en Agosto?');
  pregunta('¿Estuvo en Septiembre?');
  pregunta('¿Estuvo en Octubre?'), 
  pregunta('¿Ha pasado por Cataluña?');
  pregunta('¿Ha pasado por Comunidad Valenciana?');
  pregunta('¿Ha pasado por Murcia?');
  pregunta('¿Ha pasado por Andalucia?');
  pregunta('¿Ha pasado por Islas Baleares?').
  
flebotomos:-
  tiene_flebotomos,
  pregunta('¿Es perro?'),
  pregunta('¿Ha pasado por Cataluña?');
  pregunta('¿Ha pasado por Comunidad Valenciana?');
  pregunta('¿Ha pasado por Murcia?');
  pregunta('¿Ha pasado por Andalucia?');
  pregunta('¿Ha pasado por Islas Baleares?').
  
flebotomos:-
  tiene_flebotomos,
  pregunta('¿Es perro?'),
  pregunta('¿Ha estado en zonas de agua estancada en torno al amanecer o anochecer?'),
  pregunta('¿Ha pasado por Cataluña?');
  pregunta('¿Ha pasado por Comunidad Valenciana?');
  pregunta('¿Ha pasado por Murcia?');
  pregunta('¿Ha pasado por Andalucia?');
  pregunta('¿Ha pasado por Islas Baleares?').
  
leve:-
  riesgo_leve,
  pregunta('¿Vive en el interior del hogar?'),
  pregunta('¿Tiene un adecuado nivel de higiena?'),
  pregunta('¿Tiene contacto con otros animales?').
  
moderado:-
  riesgo_moderado,
  pregunta('Vive en el interior del hogar?')
  pregunta('¿Sale frecuentemente de casa y ve otros animales?',)
  
grave:-
  riesgo_grave,
  pregunta('Vive en el interior del hogar?')
  pregunta('¿Sale frecuentemente de casa y ve otros animales?',)
  pregunta('Vive en el exterior?').
  pregunta('¿Restos de basura o materia orgánica cerca?'),
  pregunta('¿Cercanía a aguas estancadas?').
  
% SECCIÓN DESPARASITACIÓN EXTERIOR.
  
riesgo_leve:-
  write('Pulgas, mensual en el periodo o lugar de infestación, mensual para garrapatas y mosquitos'),
  write('Si existen varias mascotas en el hogar, entonces desparasitar a todas'),
  write('Realizar cepillado profundo.'),
  write('Pasar aspirador y controlar el medio ambiente.').
  
riesgo_moderado:- 
  write('Para pulgas, garrapatas y mosquitos, pauta mensual'),
  write('Extracción de garrapatas visibles con inzas, incluyendo aparato bucal.'),
  write('Evitar el acceso a zonas con garrapatas.'),
  write('Realizar inspección diaria despues del  paseo.').
  
riesgo_grave:- 
  write('Para pulgas, garrapatas y mosquitos, pauta mensual'),
  write('Minimizar exposición, especialmete al amanecer y anochecer.'),
  write('Retirar basura, restos orgánicos, instalar mosquiteras.'),
  write('Evitar agua estancada, usar repelentes e insecticidas').
  
% SECCIÓN DESPARASITACIÓN INTERIOR.

grupo_a:-
  riesgo_a,
  write('Vive solo en el interior en el hogar o sale bajo vigialncia'),
  write('No tiene contacto con otros perros ni acude al parque u otras áreas de juego'),
  write('No existe otros factores de riesgo').
  
grupo_b:-
  riesgo_b,
  write('Sale bajo vigilancia'),
  write('Tiene contacto con otros perros, acude a parques u otras áreas de uego'),
  write('No hay otros factores de riesgo').
  
grupo_c:-
  riesgo_c,
  write('Sale sin supervision,ve otros peerros y acude a parques o zonas de juego'),
  write('Caza y come cualquier presa que encuentra o come carne cruda'),
  write('Acude a protectoras, guarderias o zonas comunes'),
  write('Es un perro profesional (policia, rescate,bomberos)'),
  write('Convive con niños menores de 5 años o personas inmunodeprimidas').
  
grupo_d:-
  riesgo_d,
  write('Vive en un área endémica para Echinoccocus spp'),
  write('Come presas animales y/o sale a cazar al exterior sin supervisión').
  
grupo_otros:-
  riesgo_otros,
  write('Cachorros,gestantes, o lactantes'),
  write('Acuden a eventos, exibiciones o competiciones depoortivas.')
  write('Vive en un area endémico de difilariosis/equinococosis')
