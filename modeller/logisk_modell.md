## Logisk modell 1:

<img src="bilder/logisk_modell_YrkesCo_1.png" alt="Beskrivning" width="600">

Första modellen. Skapade entiteter utifrån den konseptuella modellen samt kravspecifikationer från stakeholders. Även bridge entiteter skapades för att dela upp many-to-many relationer mellan entiteter.  

## Logisk modell 2:

<img src="bilder/logisk_modell_YrkesCo_2.png" alt="Beskrivning" width="600">

Andra modellen. Tog bort en entitet (Anställningstyp) då den inte var nödvändig. Lade till entitet för permanent anställda i övre vänstar hörnet för att koppla två andra entiteter som ska lagra samma information. Ändrade entitetnamnen till engelska.  

## Logisk modell 3:

<img src="bilder/logisk_modell_YrkesCo_3.1.png" alt="Beskrivning" width="600">

Tredje modellen. Två entiteter togs bort, ena var Courstype (fristående eller ej) som byttes till en boolean i Cours entiteten. Den andra var City som var kopplad till Addres (det kommer tillbaka senare). 


## Logisk modell 4:

<img src="bilder/logisk_modell_YrkesCo_4.png" alt="Beskrivning" width="600">

Fjärde modellen. Postcode och City lades till som entiteter för att undvika redundancy, att man lagrar samma data flera gånger. Fyra entiteter som innehöll address kopplades till Address entiteten. Rutornas bredd har anpassats efter varandra, fått en tydlighet för entitetnamnen och datatyper har korrigerats.