# Normalformer

För att denna databas ska godkännas behöver den uppfylla kraven för 1Nf, 2NF och 3NF. 

### Första normalformen
Kraven för 1 NF är att kolumnerna endast får ha ett värde, e.g. får adress inte innehålla "stiggatan 2, 12345, Åbo". Nu innehåller den tre värden när det endast får vara ett.

Varje kolumn i entiteten måste ha ett unikt namn. 

Alla värden i en kolumn måste ha samma datatyp e.g. INTEGER för siffa.

Alla rader måste vara unika.


### Andra normalformen
Ett non-key attribut (kolumn) måste vara fullt beroende av hela komposit nyckeln. En kompositnyckel är en primärnyckel som består av två eller fler attribut som tillsammans unikt identifierar varje rad.


### Tredje normalformen
Ett attribut får endast vara peroende av primära nyckeln och endast primära nyckeln. Om det uppstår ett transitivt beroende är ett attribut beroende av primära nyckeln genom ett annat attribut, alltså att attributet är beroende av ett annat non-prime attribut.

<div style="margin-bottom: 3em;"></div>


## Uppfyller databasen för YrkesCo dessa krav?
Ja, databasen uppfyller kraven för alla tre Normalformen. Detta då alla attribut i entitterna är beroende av den primära nyckeln. De har unika namn inom entiteterna och upprepar inte information i onödan. Om en viss information e.g. anläggning för klasser, så har dessa fått unika id:n så att man endast behöver ändra anläggningens namn på ett ställe istället för att ändra det för varje klass på den anläggningen. 