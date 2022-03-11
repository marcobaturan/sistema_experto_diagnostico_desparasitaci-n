% Sistema experto veterinario de diagnostico anti-parasitos.
% Partimos de un SE básico educativo, luego modificaremos al uso.
% Éste código corre con la version de 64 bits, version 8.4.2
% Probado en Ubuntu 21.04, 64 bits.
% Codigo Completo

evaluar:-
  hipotesis(Enfermedad),
  write('Creo que el paciente tiene '),
  write(Enfermedad),
  nl,
  write('Tener cuidado!'),
  deshacer.

/*Hipotesis que deberia ser probada*/
hipotesis(resfriado) :- resfriado.
hipotesis(gripe) :- gripe.
hipotesis(tifoidea) :- tifoidea.
hipotesis(sarampion) :- sarampion.
hipotesis(malaria) :- malaria.
hipotesis(desconocido). /* sin diagnostico*/

/*Reglas de identificacion*/
resfriado :-
  verificar(dolor_cabeza),
  verificar(nariz_moqueda),
  verificar(estornudo),
  verificar(dolor_garganta),
  write('Consejos y Sugerencias:'),
  nl,
  write('1: Tylenol'),
  nl,
  write('2: Panadol'),
  nl,
  write('3: Aerosol nasal'),
  nl,
  write('Por favor use ropa de abrigo porque'),
  nl.

gripe :-
  verificar(fiebre),
  verificar(dolor_cabeza),
  verificar(escalofrio),
  verificar(dolor_cuerpo),
  write('Consejos y Sugerencias:'),
  nl,
  write('1: Tamigripe/tableta'),
  nl,
  write('2: panadol/tableta'),
  nl,
  write('3: Zanamivir/tableta'),
  nl,
  write('Por favor tome un baño tibio y haga gárgaras de sal porque'),
  nl.

tifoidea :-
  verificar(dolor_cabeza),
  verificar(dolor_abdominal),
  verificar(bajo_apetito),
  verificar(fiebre),
  write('Consejos y Sugerencias:'),
  nl,
  write('1: Chloramphenicol/tableta'),
  nl,
  write('2: Amoxicillin/tableta'),
  nl,
  write('3: Ciprofloxacin/tableta'),
  nl,
  write('4: Azithromycin/tableta'),
  nl,
  write('Please do complete bed rest and take soft Diet Because'),
  nl.

sarampion :-
  verificar(fiebre),
  verificar(nariz_moqueda),
  verificar(erupcion),
  verificar(conjuntivitis),
  write('Consejos y Sugerencias:'),
  nl,
  write('1: Tylenol/tableta'),
  nl,
  write('2: Aleve/tableta'),
  nl,
  write('3: Advil/tableta'),
  nl,
  write('4: Vitamina A'),
  nl,
  write('Por favor, descanse y use más líquido porque'),
  nl.

malaria :-
  verificar(fiebre),
  verificar(sudoracion),
  verificar(dolor_cabeza),
  verificar(nausea),
  verificar(vomito),
  verificar(diarrea),
  write('Consejos y Sugerencias:'),
  nl,
  write('1: Aralen/tableta'),
  nl,
  write('2: Qualaquin/tableta'),
  nl,
  write('3: Plaquenil/tableta'),
  nl,
  write('4: Mefloquine'),
  nl,
  write('Por favor, no duerma al aire libre y cubra toda su piel porque'),
  nl.

/* Como se hacen las preguntas */
preguntar(Pregunta) :-
  write('El paciente tiene los siguientes sintomas:'),
  write(Pregunta),
  write('? '),
  read(Respuesta),
  nl,
  ((Respuesta == si) -> assert(si(Pregunta));
  assert(no(Pregunta)), fail).

:- dynamic si/1,no/1.
/*Como se verifica */
verificar(S) :-
  (si(S)->true ; (no(S)->fail ; preguntar(S))).


/* deshacer all si/no assertions*/
deshacer :- retract(si(_)),fail.
deshacer :- retract(no(_)),fail.
deshacer.
