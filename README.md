# YrkesCo databas 

Detta project bygger på att skapa en databas till en yrkeshögskola, YrkesCo.

För att skapa en bra databas behöver man en stabil bas som börjar med information och samtal med stakeholders, de som beställer databasen. Kravspecifikationer sätts upp och nästa steg är att skapa en konseptuell modell som visar de olika entiteterna och deras samband. 

## Konseptuell modell
Entiteter an vara t.ex. ett objekt, en person eller en plats. Den koseptuella modellen ska ha med de entiteter som är relevanta för databasen och vara enkel att förstå. När dessa är framtagna ska de kopplas samman med hjälp av ralationer och ERD (entity-relationship diagram). I diagrammet använder man kardinalitet för att visa förhållandet mellan entiteterna, hur många instanser av ena som kan relateras till instanser av den andra.

Här kan du se de konseptuella modellerna för YrkesCO: [Konseptuell modell](modeller/konseptuell_modell.md)


## Logisk modell
När den första modellen har en stark grund och beställaren har godkänt kan man gå vidare till den logiska modellen. Denna kommer utvecklas med fler entiteter, attribut och relationer för att få fram mer information som ska finnas i databasen. 

Attribut för entiteten Student kan vara namn och klass, sådan information som är kopplad till den entiteten. Här lägger man också till primära nycklar och främmande nycklar. De används för att koppla ihop olika entiteter och gör det enklare att minska ner antalet rade i datan som kommer ligga i databasen. 

????

Här kan du se de konseptuella modellerna för YrkesCO: [Konseptuell modell](modeller/logisk_modell.md)