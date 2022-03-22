/*Importación de librería de interfaz gráfica.*/
:- use_module(library(pce)).
:- use_module(library(pce_style_item)).
%% Main invoca menu y llama por defecto al resto de reglas.
main:-
	new(Menu, dialog('SE Veterinario sobre parásitos v0.1 ', size(500,500))),                        % Cabecero.
	new(L, label(nombre, 'Bienvenidos a su diagnostico')),                        % texto presentación.
	new(@texto, label(nombre, 'Segun la respuestas dadas tendra su resultado:')), % Presenta resultado.
	new(@respl, label(nombre, '')),
	new(Salir, button('Salir', and(message(Menu,destroy), message(Menu, free)))),          % cierra e.
	new(@boton, button('Realizar test', message(@prolog, botones))),                     % inicia tes.
	send(Menu, append(L)), new(@btncarrera, button('Diagnostico?')),                        % consult.
	send(Menu,display,L,point(100,20)),                                      % posiciona la bienvenid.
	send(Menu,display,@boton,point(130,150)),                     % Posiciona el botón 'Realizar test.
	send(Menu,display,@texto,point(50,100)),  % Posiciona el texto explicativo de presentar resultado.
	send(Menu,display,Salir,point(20,400)),                                 % posiciona el botón sali.
	send(Menu,display,@respl,point(20,130)),                      % posiciona el dialogo de respuesta.
	send(Menu,open_centered).                        % Posiciona el menú en el centro de la pantalla,.

% reglas de diagnostico de entrada.
enfermedades(colesterol):- colesterol,!.
enfermedades(diabetes):- diabetes,!.
enfermedades(ebola):-ebola,!.
enfermedades(gastritis):-gastritis,!.
enfermedades(neumonia):-neumonia,!.
enfermedades(parkinson):-parkinson,!.
enfermedades('Se desconoce enfermedad, no está en la base de conocimeintos.').

% relgas especificas de cada entrada cómo enfermedad.
colesterol :-
	tiene_colesterol,
	pregunta('Tiene hinchazon en alguna extremidad?'),
	pregunta('Tiene perdida del equilibrio?'),
	pregunta('Tiene dolor de cabeza?'),
	pregunta('Tiene amarillos los ojos?'),
	pregunta('Tiene adormecimiento en alguna extremidad?'),
	pregunta('Tiene agitacion,en especial al caminar o al realizar actividades leve?'),
	pregunta('Tiene dolor en el pecho?').

diabetes :-
	tiene_diabetes,
	pregunta('Padece de orina frecuente?'),
	pregunta('Tiene sed constante?'),
	pregunta('Tiene hambre excesiva?'),
	pregunta('Tiene perdida de peso inexplicable?'),
	pregunta('Se siente fatigado?'),
	pregunta('Tiene irritabilidad?').

ebola :-
	tiene_ebola,
	pregunta('Presenta dolores musculares?'),
	pregunta('Tiene vmito y diarrea?'),
	pregunta('Presenta erupciones cutaneas?'),
	pregunta('Siente debilidad intensa?'),
	pregunta('Tiene dolor de garganta?').

gastritis :-
	tiene_gastritits,
	pregunta('Tiene acidez estomacal?'),
	pregunta('Presenta aerofagia?'),
	pregunta('Tiene ausencia de hambre que en ocasiones puede producir perdida de peso?'),
	pregunta('Presenta heces de color negro o con sangrado?'),
	pregunta('Tiene nuseas?').

neumonia :-
	tiene_neumonia,
	pregunta('Tiene dolores articulares?'),
	pregunta('Ha tenido tos constate los ultimos dos dias?'),
	pregunta('Presenta dificultad para respirar?').

parkinson :-
	tiene_parkinson,
	pregunta('Tiene dolores articulares?'),
	pregunta('Ha notado algn cambio perdida de movimiento espontneo y automtico en alguna extremidad?'),
	pregunta('Ha presentado rigidez severa en alguna region muscular?'),
	pregunta('Sufre de depresin o ha utilizado farmacos para tratar una enfermedad semejante?'),
	pregunta('Presenta algun trastorno en el sueo?').


desconocido :- se_desconoce_enfermedad.

tiene_colesterol:-	pregunta('Tiene vision borrosa?').
tiene_diabetes:-	pregunta('Tiene vision borrosa?').
tiene_ebola:-		pregunta('Tiene fiebre?').
tiene_gastritits:-	pregunta('Tiene dolor abdominal?').
tiene_neumonia:-	pregunta('Tiene fiebre?').
tiene_parkinson:-	pregunta('Presenta temblor en alguna de las extremidades superiores del cuerpo?').

:-dynamic si/1,no/1.


preguntar(Problema):-
  new(Dialogo, dialog('Examen Medico')),
	new(L2, label(texto,'Responde las siguientes preguntas')),
	new(La, label(prob,Problema)),

	new(B1,button(si,and(message(Dialogo,return,si)))),
	new(B2,button(no,and(message(Dialogo,return,no)))),

	send(Dialogo,append(L2)),
	send(Dialogo,append(La)),
	send(Dialogo,append(B1)),
	send(Dialogo,append(B2)),

	send(Dialogo,default_button,si),
	send(Dialogo,open_centered),
	get(Dialogo,confirm,Answer),
	write(Answer),send(Dialogo,destroy),

	((Answer==si)->assert(si(Problema)); assert(no(Problema)),fail).

pregunta(S):- 
  (si(S)->true; (no(S)->fail;preguntar(S))).
limpiar:- 
  retract(si(_)),fail.
limpiar:- 
  retract(no(_)),fail.
limpiar.


botones :-lim,
	send(@boton,free),
	send(@btncarrera,free),
	enfermedades(Enter),
	send(@texto, selection('De acuerdo con el diagnostico:')),
	send(@respl, selection(Enter)),
	new(@boton, button('Iniciar su evaluación', message(@prolog, botones))),
	send(Menu,display,@boton,point(40,50)),
	send(Menu,display,@btncarrera,point(20,50)),
	limpiar.

lim:- 
  send(@respl, selection('')).

limpiar2:-
	send(@texto,free),
	send(@respl,free),
	send(@btncarrera,free),
	send(@boton,free).





