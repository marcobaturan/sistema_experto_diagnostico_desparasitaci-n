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
  
%pauta_desparasiación
  
riesgo_leve:-write('Pulgas, mensual en el periodo o lugar de infestación, mensual para garrapatas y mosquitos').
riesgo_moderado:- write('Para pulgas, garrapatas y mosquitos, pauta mensual').
riesgo_grave:- write('Para pulgas, garrapatas y mosquitos, pauta mensual').
