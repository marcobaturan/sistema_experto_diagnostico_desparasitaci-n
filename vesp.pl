%%% Autores: Marco Baturan, Pablo Mantilla.
%%% Fecha: 2022-03-22
%%% Licencia: MIT
/*Importación de librería de interfaz gráfica.*/
:- use_module(library(pce)).
:- use_module(library(pce_style_item)).

%% Main invoca menu y llama por defecto al resto de reglas.
main:-
	new(Menu, dialog('VESP v0.4 ', size(500,500))),                                          % Cabecero.
	new(L, label(nombre, 'Bienvenido al sistema de diagnostico')),                 % texto presentación.
	new(@texto, label(nombre, 'Segun las respuestas dadas tendra su resultado:')), % Presenta resultado.
	new(@respl, label(nombre, '')),
	new(Salir, button('Salir', and(message(Menu,destroy), message(Menu, free)))),            % cierra e.
	new(@boton, button('Realizar diagnostico', message(@prolog, botones))),                % inicia tes.
	%new(@about, button('Sobre', message(Menu, popup(autores)))),                                   % Copyright.
	send(Menu, append(L)), new(@btndiagnostico, button('Diagnostico?')),                     % consulta.
	send(Menu,display,L,point(20,20)),                                       % posiciona la bienvenida.
	send(Menu,display,@boton,point(30,80)),                       % Posiciona el botón 'Realizar test.
	send(Menu,display,@texto,point(20,40)),    % Posiciona el texto explicativo de presentar resultado.
	send(Menu,display,Salir,point(20,400)),                                   % posiciona el botón sali.
	%send(Menu,display,@about,point(300,400)),                                   % posicion botn sobre
	send(Menu,display,@respl,point(20,130)),                        % posiciona el dialogo de respuesta.
	send(Menu,open_centered).                          % Posiciona el menú en el centro de la pantalla,.

% reglas de diagnostico de entrada.

enfermedades('Tiene Pulgas'):- pulgas_n, !. % en la cabeza va el texto a mostrar
enfermedades('Tiene Pulgas'):- pulgas_s, !. % Poner aquí el tratameinto.
enfermedades('Tiene garrapatas'):- garrapatas_n, !.
enfermedades('Tiene garrapatas'):- garrapatas_s, !.
enfermedades('Tiene flebotomos'):- flebotomos_n, !.
enfermedades('Tiene flebotomos'):- flebotomos_s, !.
enfermedades('Tiene infección de mosquitos'):- mosquitos_n, !.

enfermedades('Enfermedad no declarada en base de conocimiento'):- not(pulgas_n),
                                                                  not(pulgas_s),
                                                                  not(garrapatas_n),
                                                                  not(garrapatas_s),
                                                                  not(flebotomos_n),
                                                                  not(flebotomos_s),
                                                                  not(mosquitos_n),!.

% relgas especificas de cada entrada cómo enfermedad.
% el primer functor de la cabeza es la pregunta de entrada.


% Ectoparásitos y épocas.

% NOROESTE
pulgas_n:-
  tiene_pulgas,
  pregunta('¿Es perro?'),
  pregunta('¿Es gato?'),
  pregunta('¿Estuvo en verano?'),
  pregunta('¿Ha pasado por Galicia?');
  pregunta('¿Ha pasado por Asturias?');
  pregunta('¿Ha pasado por Cantabria?');
  pregunta('¿Ha pasado por Pais Vasco?');
  pregunta('¿Ha pasado por Navarra?');
  pregunta('¿Ha pasado por La Rioja?');
  pregunta('¿Ha pasado por Castilla y León?').
  
garrapatas_n:-
  tiene_garrapatas,
  pregunta('¿Es perro?'),
  pregunta('¿Es gato?'),
  pregunta('¿Estuvo en otoño o primavera?'),
  pregunta('¿Ha pasado por Galicia?');
  pregunta('¿Ha pasado por Asturias?');
  pregunta('¿Ha pasado por Cantabria?');
  pregunta('¿Ha pasado por Pais Vasco?');
  pregunta('¿Ha pasado por Navarra?');
  pregunta('¿Ha pasado por La Rioja?');
  pregunta('¿Ha pasado por Castilla y León?').
  
flebotomos_n:-
  tiene_flebotomos,
  pregunta('¿Es perro?'),
  pregunta('¿Es gato?'),
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
  
mosquitos_n:-
  tiene_mosquitos,
  pregunta('¿Es perro?'),
  pregunta('¿Es gato?'),
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
pulgas_s:-
  tiene_pulgas,
  pregunta('¿Es perro?'),
  pregunta('¿Es gato?'),
  pregunta('¿Estuvo en verano?'),
  pregunta('¿Ha pasado por Cataluña?');
  pregunta('¿Ha pasado por Comunidad Valenciana?');
  pregunta('¿Ha pasado por Murcia?');
  pregunta('¿Ha pasado por Andalucia?');
  pregunta('¿Ha pasado por Islas Baleares?').
  
garrapatas_s:-
  tiene_garrapatas,
  pregunta('¿Es perro?'),
  pregunta('¿Es gato?'),
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
  
flebotomos_s:-
  tiene_flebotomos,
  pregunta('¿Es perro?'),
  pregunta('¿Es gato?'),
  pregunta('¿Ha estado en zonas de agua estancada en torno al amanecer o anochecer?'),
  pregunta('¿Ha pasado por Cataluña?');
  pregunta('¿Ha pasado por Comunidad Valenciana?');
  pregunta('¿Ha pasado por Murcia?');
  pregunta('¿Ha pasado por Andalucia?');
  pregunta('¿Ha pasado por Islas Baleares?').
  

% Indica que la enfermedad es desconocída para la base de conocimiento.
desconocido :- se_desconoce_enfermedad.

% Preguntas de entrada.
tiene_pulgas:- pregunta('¿Estuvo en verano?').
tiene_garrapatas:- pregunta('¿Estuvo en otoño o primavera?').
tiene_flebotomos:- pregunta('¿Estuvo en Junio?').
tiene_mosquitos:- pregunta('¿Ha estado en zonas de agua estancada en torno al amanecer o anochecer?').



:-dynamic si/1,no/1.

% Dialogo emergente para consultar.
preguntar(Problema):-
  new(Dialogo, dialog('Examen veterinario.')), % Cabecero.
	new(L2, label(texto,'Responde las siguientes preguntas')),
	new(La, label(prob,Problema)), % Genera las preguntas.

	new(B1,button(si,and(message(Dialogo,return,si)))), % Botones si y no.
	new(B2,button(no,and(message(Dialogo,return,no)))),
  % Envia los elementos creados al marco de dialogo para verlo.
	send(Dialogo,append(L2)),
	send(Dialogo,append(La)),
	send(Dialogo,append(B1)),
	send(Dialogo,append(B2)),
  % Botón si preseleccionado por defecto,centrado
	send(Dialogo,default_button,si),
	send(Dialogo,open_centered),
	get(Dialogo,confirm,Answer), % Obtiene respuesta, y cierra ventana.
	write(Answer),send(Dialogo,destroy),
  % Envia la respuesta a destino.
	((Answer==si)->assert(si(Problema)); assert(no(Problema)),fail).

% Mecanismo de afirmar o negar.
pregunta(S):- 
  (si(S)->true; (no(S)->fail;preguntar(S))). % Si o NO.
limpiar:- 
  retract(si(_)),fail. % Falla el si, entonces borra el último.
limpiar:- 
  retract(no(_)),fail. % falla el no, entonces borra el ultimo.
limpiar.               % revisa la consulta invocandola.

%autores:-
%  new(Dialogo1, dialog('VESP v0.4')), % Cabecero.
%	new(L3, label(texto,'Veterinary Expert System for Parasites © Marco Baturan, MadriVet 2022.')),
%	send(Dialogo1,append(L3)),
%	send(Dialogo1,open_centered).


botones :-lim,
	send(@boton,free),
	send(@btndiagnostico,free),
	%send(@about,free),
	enfermedades(Enter),
	send(@texto, selection('De acuerdo con el diagnostico:')),
	send(@respl, selection(Enter)),
	new(@boton, button('Iniciar su evaluación', message(@prolog, botones))),
	%new(@about, button('Autores', popup(autores))),
	send(Menu,display,@boton,point(40,50)),

	send(Menu,display,@btndiagnostico,point(20,50)),
	limpiar.

lim:- 
  send(@respl, selection('')).

limpiar2:-
	send(@texto,free),
	send(@respl,free),
	send(@btndiagnostico,free),
	%send(@about,free),
	send(@boton,free).

