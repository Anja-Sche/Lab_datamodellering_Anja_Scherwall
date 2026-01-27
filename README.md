# YrkesCo databas 

Detta project bygger på att skapa en databas till en yrkeshögskola, YrkesCo.

För att skapa en bra databas behöver man en stabil bas som börjar med information och samtal med stakeholders, de som beställer databasen. Kravspecifikationer sätts upp och nästa steg är att skapa en konseptuell modell som visar de olika entiteterna och deras samband. 

## Modeller

### Konseptuell modell
Entiteter kan vara t.ex. ett objekt, en person eller en plats. Den koseptuella modellen ska ha med de entiteter som är relevanta för databasen och vara enkel att förstå. När dessa är framtagna ska de kopplas samman med hjälp av ralationer och ERD (entity-relationship diagram). I diagrammet använder man kardinalitet för att visa förhållandet mellan entiteterna, hur många instanser av ena som kan relateras till instanser av den andra.

Här kan du se de konseptuella modellerna för YrkesCO: [Konseptuell modell](modeller/konseptuell_modell.md)


### Logisk modell
När den första modellen har en stark grund och beställaren har godkänt kan man gå vidare till den logiska modellen. Denna kommer utvecklas med fler entiteter, attribut och relationer för att få fram mer information som ska finnas i databasen. 

Attribut för entiteten Student kan vara namn och klass_id, sådan information som är kopplad till den entiteten. Här lägger man också till primära nycklar och främmande nycklar. De används för att koppla ihop olika entiteter och gör det enklare att minska ner antalet rade i datan som kommer ligga i databasen. Man ger också en hint på vilken datatyp varje attribut ska vara.

Här kan du se de logiska modellerna för YrkesCO: [Logisk modell](modeller/logisk_modell.md)


### Fysisk modell

Den fysiska modellen är sista steget innan man skapar databasen. Väldigt lik den logiska modellen med entiteter och attribut. I detta steg ska datatyperna utvecklas från att vara STRING(text) och INTEGER (siffror) till rätt datatyp utifrån vilket hanteringssystem för databaser (DBMS) man väljer att använda. I detta fall används PostgreSQL som är en relationsdatabas. 

Här kan du se denfysiska modellen för YrkesCO: [Fysisk modell](modeller/fysisk_modell.md)

Se även: [Kod fysisk modell](modeller/fysisk_modell.dbml)

<div style="margin-bottom: 3em;"></div>

## Normalformer
Denna databas uppnår kraven för tredje normalformen som efterfrågats. Alla attribut i entitterna är beroende av den primära nyckeln, De har unika namn inom entiteterna och upprepar inte information i onödan. 

Läs mer om normalformer och hur denna databas uppfyller dessa krav här: [Normalformer](Normalformer.md)

## SQL kod och querys
För dig som är intresserad över koden som skapade tabellerna, fyllde på information och tester kan du hitta dessa genom länkarna nedan.

- [DDL(Data Defenition Language), skapa tabelelrna](sql/ddl.sql)

- [DML(Data Manipulation Language), fylla information i tabellerna](sql/dml.sql)

- [JOIN querys, ta fram vald information från olika tabeller](sql/join_query.sql)

- [Insert Demo, lägga till ny information i tabellerna](sql/insert_demo.sql)

- Exempel på INSERTS som inte fungerar [DML fail 1](sql/dml_fail_1.sql), [DML fail 1](sql/dml_fail_2.sql), [DML fail 1](sql/dml_fail_3.sql)

## Klona repository
Det går jättebra att klona och testa koden. [Här finns instruktioner hur du gör](information/klona_repo.md)

# YrkseCo databas presentation

[Klicka här för att se presentationsvideo](https://youtu.be/lmHHZgSNITg) 