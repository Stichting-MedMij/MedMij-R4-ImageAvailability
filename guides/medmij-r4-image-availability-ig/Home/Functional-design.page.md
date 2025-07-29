---
topic: FO
---

# Functioneel ontwerp

## Inleiding

### Algemeen
Dit ontwerp beschrijft een usecase voor de persoon in het kader van de [informatiestandaard Beeldbeschikbaarheid, versie 1.0.0-alpha.2](https://informatiestandaarden.nictiz.nl/wiki/Landingspagina_Beeldbeschikbaarheid). Deze informatiestandaard behandelt de uitwisseling van gegevens met de persoon nog niet expliciet. Dit ontwerp heeft als doel het scenario 'Beelden beschikbaar stellen aan een persoon in een PGO' op termijn op te nemen in de standaard Beeldbeschikbaarheid. Dit scenario wordt uitgewerkt in de vorm van de usecase 'Raadplegen beeld en verslag in persoonlijke gezondheidsomgeving'.

### Doelgroep
De doelgroep voor deze pagina wijkt niet af van de [algemene doelgroep](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Doelgroep) van de functionele ontwerpen binnen MedMij.

### Kaders en uitgangspunten

#### Richtlijn en proces
Dit ontwerp is conform specificaties genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.01/Ontwerpen#Richtlijn) van de functionele ontwerpen binnen MedMij.

#### Reikwijdte
De reikwijdte van dit ontwerp beslaat de functionele beschrijvingen en de dataset voor de gegevensuitwisselingen die voortvloeien uit uitgevoerde onderzoeken binnen het radiologisch zorgproces.

Deze eerste versie van de usecase 'Raadplegen beeld en verslag in persoonlijke gezondheidsomgeving' gaat over het beschikbaar stellen en inzien van medische beelden en verslagen die opgeslagen zijn bij zorgaanbieders die gebruikmaken van een XDS-infrastructuur. De ambitie is om dit in de nabije toekomst landelijk op te schalen, zodat beelden en verslagen van meer zorgaanbieders beschikbaar komen.

#### Infrastructuur
Voor deze usecase is een infrastructuur vereist waarin zorgaanbieders medische beelden en verslagen beschikbaar stellen via een XDS-gebaseerde uitwisselingsarchitectuur (IHE XDS). De infrastructuur moet ondersteuning bieden voor het registreren, opslaan en raadplegen van medische documenten volgens de XDS-profielen.

Daarnaast gelden de specificaties genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Infrastructuur) van de functionele ontwerpen binnen MedMij.

#### Geografische reikwijdte
Geen nadere specificatie, anders dan genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.02/Ontwerpen#Geografische_reikwijdte) van de functionele ontwerpen binnen MedMij.

### Kwalificatie en testen
Op dit moment wordt de usecase uit dit ontwerp getoetst in een Proof of Concept (PoC). Later volgt meer informatie over kwalificatie.

## Usecases

### Algemeen
Een usecase is een gedetailleerde beschrijving van een praktijksituatie in de zorg, waarin het uitwisselen van informatie wordt uitgewerkt aan de hand van actoren en transacties. Hierbij wordt vastgelegd welke informatie op welk moment wordt gedeeld. Een usecase beschrijft een stap in het zorgproces en de bijbehorende informatiebehoefte. Een informatiestandaard kan meerdere usecases bevatten, die gekoppeld zijn aan scenario's. Wanneer meerdere usecases hetzelfde scenario gebruiken, kan een alternatieve indeling op basis van het proces nuttig zijn. In dit ontwerp wordt het ophalen van beelden en verslagen door een patiënt vanuit een zorgverlener als één activiteit beschouwd, maar uitgewerkt in drie sub-usecases.

### Usecase: Raadplegen beeld en verslag in persoonlijke gezondheidsomgeving

#### Doel en relevantie raadplegen beeld en verslag
Het doel is om patiënten toegang te geven tot medische beelden en bijbehorende verslagen, zodat zij een beter inzicht krijgen in hun eigen medische situatie. Dit draagt bij aan een beter begrip van hun gezondheid en de behandelingen die zij ondergaan. Voor zorgverleners betekent dit dat patiënten beter geïnformeerd zijn over eerdere onderzoeken, wat kan bijdragen aan efficiëntere consulten en een beter afgestemd zorgproces.

##### Patient journey raadplegen beeld en verslag
Roos Dalstra merkt dat haar gewicht de afgelopen dagen is toegenomen. Omdat vochtophoping een bekend verschijnsel is bij haar hartfalen, neemt ze contact op met haar huisarts. De huisarts verwijst haar door naar de radiologie voor een thoraxfoto. Na het maken van de thoraxfoto bekijkt Roos de radiologische beelden en het bijbehorende verslag in haar PGO. Hierdoor krijgt ze meer inzicht in haar situatie en kan ze het vervolggesprek met haar huisarts goed voorbereiden.

#### Procesbeschrijving beeld en verslag

##### Preproces
- De patiënt heeft toestemming gegeven voor het elektronisch uitwisselen van medische gegevens tussen de zorgverlener en de eigen persoonlijke gezondheidsomgeving.
- Het beeld en/of het verslag zijn geregistreerd en beschikbaar voor systemen die tijdlijngegevens kunnen opvragen.

##### Proces
- De patiënt raadpleegt de beelden en verslagen in zijn of haar PGO.
- Het systeem van de patiënt (PGO) vraagt om beschikbare medische gegevens bij de zorgaanbieder.
- Het systeem van de zorgaanbieder (XIS) levert een lijst met metadata over de gevonden beelden en verslagen op voor de patiënt.
- De patiënt gebruikt de persoonlijke gezondheidsomgeving om het gewenste beeld en/of verslag te raadplegen of te downloaden.
- Het systeem van de zorgaanbieder (XIS) levert het gevraagde beeld en/of verslag op voor de patiënt.

##### Postproces
- De patiënt ziet het opgevraagde beeld en/of verslag in zijn of haar PGO.

### Usecase: Raadplegen beeld zonder verslag in persoonlijke gezondheidsomgeving

#### Doel en relevantie raadplegen beeld zonder verslag
Het doel is om patiënten toegang te geven tot medische beelden, zodat zij een beter inzicht krijgen in hun eigen medische situatie. Dit draagt bij aan een beter begrip van hun gezondheid en de behandelingen die zij ondergaan. Voor zorgverleners betekent dit dat patiënten beter geïnformeerd zijn over eerdere onderzoeken, wat kan bijdragen aan efficiëntere consulten en een beter afgestemd zorgproces.
  
##### Patient journey raadplegen beeld zonder verslag
Roos Dalstra merkt dat haar gewicht de afgelopen dagen is toegenomen. Omdat vochtophoping een bekend verschijnsel is bij haar hartfalen, neemt ze contact op met haar huisarts. De huisarts verwijst haar door naar de radiologie voor een thoraxfoto. Na het maken van de thoraxfoto bekijkt Roos de radiologische beelden in haar PGO. Omdat er geen verslag beschikbaar is, wacht ze op de terugkoppeling van haar huisarts voor verdere duiding en bespreking van de volgende stappen.

#### Procesbeschrijving raadplegen beeld zonder verslag

##### Preproces
- De patiënt heeft toestemming gegeven voor het elektronisch uitwisselen van medische gegevens tussen de zorgverlener en de eigen persoonlijke gezondheidsomgeving.
- Het beeld is geregistreerd en beschikbaar voor systemen die tijdlijngegevens kunnen opvragen.
 
##### Proces
- De patiënt raadpleegt de beelden en verslagen in zijn of haar PGO.
- Het systeem van de patiënt (PGO) vraagt om beschikbare medische gegevens bij de zorgaanbieder.
- Het systeem van de zorgaanbieder (XIS) levert een lijst met metadata over de gevonden beelden en verslagen op voor de patiënt.
- De patiënt gebruikt de persoonlijke gezondheidsomgeving om het gewenste beeld te raadplegen of te downloaden.
- Het systeem van de zorgaanbieder (XIS) levert het gevraagde beeld op voor de patiënt.

##### Postproces
- De patiënt ziet het opgevraagde beeld in zijn of haar PGO.

### Usecase: Raadplegen verslag zonder beeld in persoonlijke gezondheidsomgeving

#### Doel en relevantie raadplegen verslag zonder beeld
De patiënt raadpleegt relevante verslagen om een vollediger inzicht te krijgen in de medische situatie, wat zonder deze informatie niet mogelijk zou zijn. Dit is belangrijk voor het nemen van weloverwogen beslissingen over het eigen zorgproces. Het inzien van eerdere onderzoeken, zoals beelden en verslagen, naast de meest recente resultaten, is van grote waarde in elk zorgtraject waarin beeldvorming een rol speelt.

##### Patient journey raadplegen verslag zonder beeld
Roos Dalstra merkt dat haar gewicht de afgelopen dagen is toegenomen. Omdat vochtophoping een bekend verschijnsel is bij haar hartfalen, neemt ze contact op met haar huisarts. De huisarts verwijst haar door naar de radiologie voor een thoraxfoto. Na het maken van de thoraxfoto raadpleegt Roos het bijbehorende verslag in haar PGO. Omdat de beelden niet beschikbaar zijn, baseert ze zich op de beschreven bevindingen. Voor verdere duiding en bespreking van de volgende stappen wacht ze op de terugkoppeling van haar huisarts.

#### Procesbeschrijving raadplegen verslag zonder beeld

##### Preproces
- De patiënt heeft toestemming gegeven voor het elektronisch uitwisselen van medische gegevens tussen de zorgverlener en de eigen persoonlijke gezondheidsomgeving.
- Het verslag is geregistreerd en beschikbaar voor systemen die tijdlijngegevens kunnen opvragen.

##### Proces
- De patiënt raadpleegt de beelden en verslagen in zijn of haar PGO.
- Het systeem van de patiënt (PGO) vraagt om beschikbare medische gegevens bij de zorgaanbieder.
- Het systeem van de zorgaanbieder (XIS) levert een lijst met metadata over de gevonden beelden en verslagen op voor de patiënt.
- De patiënt gebruikt de persoonlijke gezondheidsomgeving om het gewenste verslag te raadplegen of te downloaden.
- Het systeem van de zorgaanbieder (XIS) levert het gevraagde verslag op voor de patiënt.

##### Postproces
- De patiënt ziet het geraadpleegde verslag in zijn of haar PGO.

### Bedrijfsrollen en UML activity diagram
Deze usecase onderscheidt twee bedrijfsrollen, namelijk de Persoon en de (Zorg)Aanbieder, zoals te zien in onderstaande tabel.

| Bedrijfsrol (actor) | Beschrijving bedrijfsrol |
| --- | --- |
| Patiënt/persoon | Gebruiker van de PGO |
| Zorgaanbieder | Gebruiker van het XIS |

**Tabel 1: Bedrijfsrollen**

{{render: guides/medmij-r4-image-availability-ig/images/Beeld in PGO - 0.3.png}}

**Figuur 1: Raadplegen in PGO**

### Informatieoverdracht
Zowel de persoon als de zorgaanbieder maken ieder gebruik van een informatiesysteem:

- PGO (persoon)
- XIS (zorgaanbieder)

#### Systemen en systeemrollen
Deze systemen kennen ieder verschillende systeemrollen, die het uitwisselen van gegevens tussen deze systemen mogelijk maken. Hier gaat het om de beeld en verslag van zorgaanbieder naar de persoon.

| Systeem | Naam systeemrol | Systeemrolcode | Omschrijving |
| --- | --- | --- | --- |
| PGO | BeeldVerslagMetadataLijstRaadplegen | MM-1.0-TDR-FHIR | Raadplegen beeld en verslag metadatalijst bij zorgaanbieder |
| XIS | BeeldVerslagMetadataLijstBeschikbaarstellen | MM-1.0-TDB-FHIR | Beschikbaar stellen beeld en verslag metadatalijst bij patiënt |
| PGO | BeeldVerslagRaadplegen | MM-1.0-BR-FHIR |  Raadplegen beeld en verslag bij zorgaanbieder |
| XIS | BeeldVerslagBeschikbaarstellen | MM-1.0-BB-FHIR | Beschikbaar stellen beeld en verslag bij patiënt |

**Tabel 2: Systeemrollen**

### Transacties en transactiegroepen
Het uitwisselen van gegevens tussen de verschillende systeemrollen gebeurt op basis van transacties. Een verzameling van transacties (bijvoorbeeld een vraag- en antwoordbericht) vormt een zogeheten transactiegroep. Voor de transacties die tussen de systeemrollen plaatsvinden, wordt in ART-DECOR de berichtspecificatie beschreven. Hier is bij de scenario’s beschreven uit welke gegevenselementen een transactie bestaat en wat de kardinaliteit van deze elementen is. Voor de technische specificaties en implementation guide, zie de {{pagelink:TO, text:FHIR IG}}.

**Noot:** De specificaties voor de transacties in dit ontwerp staan op dit moment nog niet in ART-DECOR. Bij een toekomstige samenvoeging met de informatiestandaard van Nictiz zullen deze worden opgenomen.

| Transactiegroep | Transactie | Systeemrolcode | Systeem | Bedrijfsrol |
| --- | --- | --- | --- | --- |
| Verzamelen Beeld en verslag tijdlijn (PULL) | Raadplegen beeld en verslag tijdlijn | MM-1.0-TDR-FHIR | PGO | Patiënt |
| Verzamelen Beeld en verslag tijdlijn (PULL) | Beschikbaar stellen beeld en verslag tijdlijn | MM-1.0-TDB-FHIR | XIS | Zorgaanbieder |
| Verzamelen Beeld en verslag (PULL) | Raadplegen beeld en verslag | MM-1.0-BR-FHIR | PGO | Patiënt |
| Verzamelen Beeld en verslag (PULL) | Beschikbaar stellen beeld en verslag | MM-1.0-BB-FHIR | XIS | Zorgaanbieder |

**Tabel 3: Transactiegroepen**

### Usecasediagram
{{render: guides/medmij-r4-image-availability-ig/images/UML Usecasediagram Beeld in PGO.png}}

**Figuur 2: Usecasediagram**

### Dataset
De dataset kan gevonden worden op [GitHub](https://github.com/Stichting-MedMij/MedMij-R4-ImageAvailability/blob/1.0.0-beta.1/dataset/Dataset_MedMij_Beeldbeschikbaarheid_1.0.0-beta.1.xlsx).

### Weergaverichtlijn

#### Scope weergaverichtlijn
- Het betreft een richtlijn. PGO-leveranciers hebben zelf de keuze of zij (delen van de) richtlijn toepassen voor de weergave van medische beelden.
- De richtlijn geeft handvatten voor:
    1. het gebruik van patiëntvriendelijke termen en toelichting;
    2. de inhoud van het overzicht van beeldgegevens in de PGO.
- De richtlijn geeft géén handvatten voor de vormgeving (kleur, vorm, lettertype, etc.) van beeldgegevens. Er is wel een UX-design ontwikkeld die richting aan de vormgeving geeft.

#### Inhoud weergaverichtlijn
In de dataset is weergegeven welke dataelementen getoond zouden moeten worden (zie kolom 'Tonen in PGO') met een advies voor de weergavenaam erbij voor de gebruiker van een PGO (zie kolom 'Weergavenaam in PGO').

Daarnaast moeten beeld en verslag qua weergave zoveel mogelijk gekoppeld blijven om de beelden zichtbaar te maken.

#### Advies filtering in overzicht beelden
Elke PGO-gebruiker kan het overzicht van beelden minimaal sorteren op onderstaande gegevens:
*   Datum onderzoek
*   Zorginstelling

Elke PGO-gebruiker kan het overzicht van beelden minimaal filteren op onderstaande gegevens:
*   Datum onderzoek
*   Zorginstelling

Elke PGO-gebruiker kan binnen het overzicht zoeken op onderstaande gegevens:
*   Naam onderzoek

#### Disclaimer
Het is wenselijk de gebruiker erop te attenderen dat bij het downloaden van een beeld een DICOM-viewer op het device geïnstalleerd dient te worden om het bestand te kunnen inzien. 

### Requirements
De prioriteit van elke onderstaande functionele eis wordt vastgesteld volgens de MoSCoW-methodiek, waarbij eisen worden geclassificeerd op basis van hun belang en noodzaak voor de implementatie:

| M(ust have) | Nodig voor de basisfunctionaliteit van de toepassing en moet worden geïmplementeerd om het proces succesvol te laten verlopen. |
| S(hould have) | Belangrijke functionaliteit die niet absoluut nodig is, maar die voordelen biedt voor gebruikers en de algehele gebruikservaring. |
| C(ould have) | Gewenste functionaliteit die waarde toevoegt, maar minder kritisch is en indien nodig kan worden uitgesteld. |
| W(on't have) | Functionaliteiten die nu buiten scope zijn maar mogelijk in de toekomst worden overwogen. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 1 | PGO | Zorggebruiker | Beelden in de webviewer bekijken | Geen DICOM-viewer op mijn apparaat hoef te downloaden | M |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Vanuit het overzicht in de PGO kan de gebruiker met één klik een viewer openen om beelden en/of verslagen te bekijken. |
| 2. | De gebruiker kan (rendered) DICOM-beelden bekijken zonder extra software te installeren. |
| 3. | De viewer werkt in gangbare webbrowsers en is bruikbaar op desktop, tablet en mobiel (responsive of mobiele variant). |
| 4. | De gebruiker krijgt duidelijke visuele feedback (bijvoorbeeld een laadindicator of wachtcursor met tekst) wanneer beelden worden geladen. |
| 5. | Indien mogelijk wordt de voortgang van het laden weergegeven in procenten of met een voortgangsbalk. | 
| 6. | Bij het laden van grotere studies (bijvoorbeeld 100 MB met 200 beelden) blijft de interface bruikbaar en krijgt de gebruiker inzicht in de voortgang, ook als de laadtijd hoger is dan verwacht door systeem- of netwerklatentie. |
| 7. | De gemiddelde laadtijd voor een studie van 100 MB is indicatief tussen 10–60 seconden, afhankelijk van systeemcapaciteit. Hierop worden geen harde eisen gesteld, maar de gebruiker wordt geïnformeerd indien het langer duurt. |
| 8. | De viewer opent in hetzelfde venster of in een herkenbare tab/pagina binnen de PGO (geen verwarring met andere portalen). | 

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 2 | PGO | Zorggebruiker | Medische verslagen kunnen bekijken via de browser | Geen PDF-software op mijn device hoef te downloaden | M |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Medische verslagen zijn in de PGO te openen zonder externe PDF-viewer of door ze eerst te downloaden. |
| 2. | Verslagen zijn leesbaar op alle schermformaten (desktop, tablet, mobiel). |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 3 | PGO | Zorggebruiker | Beelden en verslagen die bij hetzelfde onderzoek horen, gekoppeld zien | Mijn uitslag (beeld en verslag samen) kan interpreteren om goed voorbereid te zijn op een vervolgconsult | M |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Bij elk verslag of beeld wordt automatisch gecontroleerd of er een bijbehorend gekoppeld item is (i.e. verslag bij beeld of beeld bij verslag). |
| 2. | Indien gekoppeld, worden deze gegevens samen weergegeven of met een duidelijke visuele link. |
| 3. | De koppeling gebeurt op basis van een gedeelde unieke identifier. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 4 | PGO | Zorggebruiker | Beelden en verslagen op chronologische volgorde van uitvoerdatum zien | Ik niet hoef te sorteren om het juiste beeld te vinden | M |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Beelden en verslagen worden automatisch gesorteerd op uitvoerdatum, van meest recent naar minst recent. |
| 2. | De sortering kan handmatig worden gewijzigd. |
| 3. | De sortering blijft behouden bij filteracties door de gebruiker. |
| 4. | Datum van uitvoering wordt zichtbaar getoond bij ieder verslag/beeld. |
| 5. | Indien twee items dezelfde datum hebben, worden ze op tijdstip gesorteerd (indien beschikbaar). |
| 6. | De sortering blijft behouden bij herladen van de pagina of terugkeer naar het overzicht. | 

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 5 | PGO | Zorggebruiker | Beelden en verslagen van meerdere zorgaanbieders in één overzicht kunnen bekijken | Ik in één oogopslag kan zien bij welke zorgaanbieders ik ben geweest en welke beelden en verslagen daar zijn opgevraagd | M |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Beelden en verslagen van meerdere zorgaanbieders worden in één gecombineerd overzicht weergegeven. |
| 2. | Elk item in het overzicht toont duidelijk de naam van de zorgaanbieder waar het onderzoek heeft plaatsgevonden. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 6 | PGO | Zorggebruiker | Beelden en verslagen kunnen filteren op basis van datum | Snel de meest recente of specifieke onderzoeken kan zien | S |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | De gebruiker kan een datumfilter instellen in het overzicht van beelden en verslagen (bijvoorbeeld via datumselectie, periode of jaar). |
| 2. | Het filter werkt op VerrichtingStartDatum (BBS-dataelement-174). |
| 3. | Er is standaard geen filter actief; alle items worden getoond tot de gebruiker zelf filtert. |
| 4. | Na toepassing van een filter wordt het overzicht direct bijgewerkt zonder paginaverversing. | 
| 5. | Het filter blijft actief bij navigatie binnen de sessie (totdat gebruiker reset of de sessie verlaat). | 
| 6. | Beelden en verslagen blijven chronologisch gesorteerd binnen het filterresultaat. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 7 | PGO | Zorggebruiker | Medische beelden kunnen downloaden in het originele bestandsformaat via een duidelijke button op mijn device | Zelf beschikking heb over mijn medische gegevens en deze kan delen met andere zorgverleners of bewaren voor mijn eigen administratie. | S |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | De gebruiker ziet bij elk beschikbaar beeld of onderzoek een duidelijke downloadknop. |
| 2. | De gebruiker kan kiezen om dit op te slaan in: 
| | DICOM Part10-formaat (standaard voor medische beelden); |
| | JPEG-formaat (voor persoonlijk gebruik of eenvoudige weergave). |
| 3. | Wanneer de gebruiker kiest voor het originele formaat (DICOM), wordt een melding getoond met:
| | De aanduiding dat het om een DICOM-bestand gaat; |
| | Een korte uitleg dat voor het openen van dit bestand een geschikte viewer nodig is; |
| | Het bestand persoonlijke data bevat. |
| | De verwachte bestandsgrootte (MB/GB). |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 8 | PGO | Zorggebruiker | Verslagen van beelden kunnen downloaden via een button op mijn device | Zelf beschikking heb over mijn medische gegevens | S |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Bij elk beschikbaar beeldverslag is een duidelijke knop zichtbaar met het label 'Download verslag'. |
| 2. | Verslagen zijn te downloaden als PDF-bestand met duidelijke bestandsnaam (bijvoorbeeld Verslag_CT_borst_2025-03-15.pdf). |
| 3. | Na het klikken op de downloadknop ontvangt de gebruiker visuele feedback, bijvoorbeeld een melding 'Download gestart' of 'Verslag opgeslagen'. | 

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 9 | PGO | Zorggebruiker | Wil ik beelden en verslagen kunnen filteren op basis van zorgaanbieder | Ik snel gegevens van een specifieke zorgverlener kan bekijken | S |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | De gebruiker ziet een filter waarin de beschikbare zorgaanbieders worden weergegeven. |
| 2. | Na selectie van een zorgaanbieder worden alleen de bijbehorende beelden en verslagen getoond in het overzicht.|
| 3. | In de lijst van beelden en verslagen is duidelijk aangegeven welke zorgaanbieder het item heeft aangeleverd. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 10 | PGO | Zorggebruiker | Bij het beeld en verslag de betrokken zorgverlener(s) zien indien beschikbaar gesteld door zorgaanbieder | Weet welke zorgverlener verantwoordelijk is voor de informatie | C |

|Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Bij elk beeld of verslag wordt de beschikbaar gestelde naam en/of specialisme van de aanvragende zorgverlener getoond. |
| 2. | Bij elk beeld of verslag wordt de beschikbaar gestelde naam en/of specialisme van de uitvoerende zorgverlener getoond. |