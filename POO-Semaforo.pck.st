'From Cuis 5.0 of 7 November 2016 [latest update: #3068] on 16 April 2017 at 2:58:16 pm'!
'Description '!
!provides: 'POO-Semaforo' 1 2!
!classDefinition: #ReguladorDeTransitoTest category: #'POO-Semaforo'!
TestCase subclass: #ReguladorDeTransitoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'POO-Semaforo'!
!classDefinition: 'ReguladorDeTransitoTest class' category: #'POO-Semaforo'!
ReguladorDeTransitoTest class
	instanceVariableNames: ''!

!classDefinition: #SemaforoTest category: #'POO-Semaforo'!
TestCase subclass: #SemaforoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'POO-Semaforo'!
!classDefinition: 'SemaforoTest class' category: #'POO-Semaforo'!
SemaforoTest class
	instanceVariableNames: ''!

!classDefinition: #SenialTest category: #'POO-Semaforo'!
TestCase subclass: #SenialTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'POO-Semaforo'!
!classDefinition: 'SenialTest class' category: #'POO-Semaforo'!
SenialTest class
	instanceVariableNames: ''!

!classDefinition: #ReguladorDeTransito category: #'POO-Semaforo'!
Object subclass: #ReguladorDeTransito
	instanceVariableNames: 'unaSenialDeAvance unaSenialDeDetencion'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'POO-Semaforo'!
!classDefinition: 'ReguladorDeTransito class' category: #'POO-Semaforo'!
ReguladorDeTransito class
	instanceVariableNames: ''!

!classDefinition: #Semaforo category: #'POO-Semaforo'!
Object subclass: #Semaforo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'POO-Semaforo'!
!classDefinition: 'Semaforo class' category: #'POO-Semaforo'!
Semaforo class
	instanceVariableNames: ''!

!classDefinition: #Senial category: #'POO-Semaforo'!
Object subclass: #Senial
	instanceVariableNames: 'prendida'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'POO-Semaforo'!
!classDefinition: 'Senial class' category: #'POO-Semaforo'!
Senial class
	instanceVariableNames: ''!


!ReguladorDeTransitoTest methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:58:38'!
testTransitoDetenidoDespuesDeDetenerTransito

|unReguladorDeTransito|

unReguladorDeTransito := ReguladorDeTransito initial.

unReguladorDeTransito detenerTransito.

self assert: true equals: (unReguladorDeTransito transitoDetenido).! !

!ReguladorDeTransitoTest methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 14:56:11'!
testTransitoPermitidoDespuesDePermitirTransito

|unReguladorDeTransito|

unReguladorDeTransito := ReguladorDeTransito initial.

unReguladorDeTransito permitirTransito.

self assert: true equals: (unReguladorDeTransito transitoPermitido).! !

!SemaforoTest methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 11:11:39'!
testAvisaPrecaucionPorEncendidoAlEncender

|unSemaforo|

unSemaforo := Semaforo new.

! !

!SenialTest methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:34:57'!
testApagadaDespuesDeApagar

|unaSenial|

unaSenial := (Senial initial) prender.

unaSenial apagar.

self assert: false equals: (unaSenial prendida).! !

!SenialTest methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:28:48'!
testComienzaApagada

|unaSenial|

unaSenial := Senial initial.

self assert: false equals: (unaSenial prendida).! !

!SenialTest methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:28:43'!
testPrendidaDespuesDePrender

|unaSenial|

unaSenial := (Senial initial) prender.

self assert: true equals: (unaSenial prendida).! !

!ReguladorDeTransito methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 11:02:11'!
detencion: aSenialDetencion avance: aSenialAvance
	unaSenialDeAvance := aSenialAvance.
	unaSenialDeDetencion := aSenialDetencion.! !

!ReguladorDeTransito methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:50:33'!
detenerTransito

	unaSenialDeAvance apagar.
	unaSenialDeDetencion prender.
	
	! !

!ReguladorDeTransito methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 11:08:16'!
permitirTransito

	unaSenialDeAvance prender.	
	unaSenialDeDetencion apagar.
	! !

!ReguladorDeTransito methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 11:04:27'!
transitoDetenido
		^unaSenialDeDetencion prendida.
! !

!ReguladorDeTransito methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 14:57:36'!
transitoPermitido
	^unaSenialDeAvance prendida.! !

!ReguladorDeTransito class methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:58:24'!
initial
	|unReguladorDeTransito|
	
	unReguladorDeTransito := ReguladorDeTransito new.
	unReguladorDeTransito detencion: (Senial new) avance: (Senial new).
	^unReguladorDeTransito! !

!Senial methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:35:20'!
apagar
	prendida := false.! !

!Senial methodsFor: 'accessing' stamp: 'dim 4/16/2017 09:55:04'!
prender
	prendida := true.! !

!Senial methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:27:25'!
prendida
	^prendida.! !

!Senial methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:27:14'!
prendida: estaPrendida
	prendida := estaPrendida.! !

!Senial class methodsFor: 'as yet unclassified' stamp: 'dim 4/16/2017 10:26:25'!
initial
	
	|nuevaSenial|
	
	nuevaSenial := self new.
	nuevaSenial prendida: false.	
	^nuevaSenial.! !
