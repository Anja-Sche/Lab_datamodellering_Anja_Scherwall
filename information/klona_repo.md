# Instruktioner för att klona och köra kod
Jag har använt Git Bash, VS Code, Docker och Postgresql för detta projekt. 
## Klona

Följ stegen för att få en lokal kopia av projektet.
1. öppna din terminal och skriv "cd 'mappnamn'" tills du kommit in i den mapp du vill lägga kopian i. Är du osäker vilka mappas som finns kan du skriva "ls" i terminalen så ser du vilka mappas som finns.
2. Skriv i terminalen: 

    git clone https://github.com/Anja-Sche/Lab_datamodellering_Anja_Scherwall.git

Nu har du en kopia på din dator.

## Filer
För att kunna köra docker-compose filen behöver du skapa en fil som heter ".env". I filen ska du lägga in koden nedan och fylla i användarnamn och lösenord, du väljer fritt.

POSTGRES_USER="användarnamn"
POSTGRES_PASSWORD="lösenord" 
POSTGRES_DB="YrkesCo_db"
POSTGRES_PORT=5432

## Docker och Terminalen 
För att skapa databasen behöver du först installera och starta Docker och ha programmet igång (logga inte in). 

Skriv följande i terminalen:

1. docker ps (du kommer se att ingen information syns)

2. docker compose up -d (låt ladda, startar appen i bakgrunden och kör containern)

3. docker ps (igen, nu ser du att information finns under ex. status  och names)

4. docker exec -it YrkesCo bash (starta interaktiv session inuti containern)

5. cd sql (för att hoppa in i mappen)

6. psql -U 'användarnamn' -d YrkesCo_db (postgresql cli, nu kan du köra komandon och interagera med instansen)


Nu ska du köra kommandon för att lägga in tabellerna och informationen i databasen.

1. \i /sql/ddl.sql (lägger in alla tabeller)

2. \i /sql/dml.sql (lägger in information i tabellerna)

Nu kan du utforska och lägga in egen information. Tips! använd den [logiska modellen](../modeller/logisk_modell.md) för att se hur allt hänger ihop.
