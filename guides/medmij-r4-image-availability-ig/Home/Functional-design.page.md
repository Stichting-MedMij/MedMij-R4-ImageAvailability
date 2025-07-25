---
topic: FO
---

# Functioneel ontwerp

## Inleiding

### Algemeen

Dit ontwerp beschrijft een usecase voor de persoon in het kader van de 
 [informatiestandaard Beeldbeschikbaarheid, versie 1.0.0-alpha.2](https://informatiestandaarden.nictiz.nl/wiki/Landingspagina_Beeldbeschikbaarheid). Deze informatiestandaard behandelt de uitwisseling van gegevens met de persoon nog niet expliciet. Dit document heeft als doel het scenario 'Beelden beschikbaar stellen aan een persoon in een PGO' op te nemen in de standaard Beeldbeschikbaarheid. Dit scenario wordt uitgewerkt in de vorm van de usecase 'Raadplegen van beeld en verslag in de persoonlijke gezondheidsomgeving'.

### Doelgroep

De doelgroep voor deze pagina wijkt niet af van de [algemene doelgroep](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Doelgroep) van de MedMij functionele ontwerpen.

### Kaders en uitgangspunten

#### Richtlijn & proces

Dit ontwerp is conform specificaties genoemd in [de algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.01/Ontwerpen#Richtlijn) van de MedMij functionele ontwerpen.

#### Reikwijdte

De reikwijdte van dit ontwerp beslaat de functionele beschrijvingen en de dataset voor de gegevensuitwisselingen die voortvloeien uit uitgevoerde onderzoeken binnen het radiologisch zorgproces.

Deze eerste versie van de usecase “Raadplegen Beeld en Verslag in persoonlijke gezondheidsomgeving” gaat over het beschikbaar stellen en inzien van medische beelden en verslagen die opgeslagen zijn bij zorgaanbieders die gebruikmaken van een XDS-infrastructuur. De ambitie is om dit in de nabije toekomst landelijk op te schalen, zodat beelden en verslagen van meer zorgaanbieders beschikbaar komen.

#### Infrastructuur
Voor deze usecase is een infrastructuur vereist waarin zorgaanbieders medische beelden en verslagen beschikbaar stellen via een XDS-gebaseerde uitwisselingsarchitectuur (IHE XDS). De infrastructuur moet ondersteuning bieden voor het registreren, opslaan en raadplegen van medische documenten volgens de XDS-profielen.

Daarnaast gelden de specificaties genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Infrastructuur) van de MedMij functionele ontwerpen.

#### Geografische reikwijdte

Geen nadere specificatie, anders dan genoemd in [de algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.02/Ontwerpen#Geografische_reikwijdte) van de MedMij functionele ontwerpen.

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
- Het beeld / verslag zijn geregistreerd en beschikbaar voor systemen die tijdlijngegevens kunnen opvragen

##### Proces
- De Patiënt raadpleegt de ‘’Beelden en verslagen’’ in zijn of haar PGO.
- Het systeem van de patiënt (PGO) vraagt om beschikbare medische gegevens bij de Zorgaanbieder.
- Het systeem van de Zorgaanbieder (XIS) levert een lijst met metadata over de gevonden beelden en verslagen op voor de Patiënt.
- De Patiënt gebruikt de persoonlijke gezondheidsomgeving om het gewenste verslag of beeld te raadplegen of te downloaden.
- Het systeem van de Zorgaanbieder (XIS) levert de beelden en verslagen op voor de patiënt.


##### Postproces
-	De patiënt ziet het opgevraagde beeld en/of verslag in zijn of haar PGO.

### Usecase: Raadplegen beeld zonder verslag in persoonlijke gezondheidsomgeving

#### Doel en relevantie raadplegen beeld zonder verslag

Het doel is om patiënten toegang te geven tot medische beelden, zodat zij een beter inzicht krijgen in hun eigen medische situatie. Dit kan bijdragen aan een beter begrip van hun gezondheid en lopende behandelingen. Voor zorgverleners betekent dit dat patiënten bekend zijn met eerder gemaakte beelden, wat kan helpen bij efficiëntere consulten en een beter afgestemd zorgproces. 
  
##### Patient journey raadplegen beeld zonder verslag  

Roos Dalstra merkt dat haar gewicht de afgelopen dagen is toegenomen. Omdat vochtophoping een bekend verschijnsel is bij haar hartfalen, neemt ze contact op met haar huisarts. De huisarts verwijst haar door naar de radiologie voor een thoraxfoto. Na het maken van de thoraxfoto bekijkt Roos de radiologische beelden in haar PGO. Omdat er geen verslag beschikbaar is, wacht ze op de terugkoppeling van haar huisarts voor verdere duiding en bespreking van de volgende stappen. 

#### Procesbeschrijving raadplegen beeld zonder verslag

##### Preproces
- De patiënt heeft toestemming gegeven voor het elektronisch uitwisselen van medische gegevens tussen de zorgverlener en de eigen persoonlijke gezondheidsomgeving.
- Het beeld / verslag zijn geregistreerd en beschikbaar voor systemen die tijdlijngegevens kunnen opvragen
 
##### Proces
- De Patiënt raadpleegt de ‘’tijdlijn radiologisch onderzoeken’’ in zijn of haar PGO.
- Het systeem van de patiënt (PGO) vraagt om beschikbare medische gegevens bij de Zorgaanbieder.
- Het systeem van de Zorgaanbieder (XIS) levert een lijst met metadata over de gevonden beelden en verslagen op voor de Patiënt.
- De Patiënt gebruikt de persoonlijke gezondheidsomgeving om het gewenste beeld te raadplegen of te downloaden.
- Het systeem van de Zorgaanbieder (XIS) levert de gevraagde beelden op voor de patiënt.

##### Postproces
- De patiënt ziet het opgevraagde beeld in zijn of haar PGO, het bijbehorende verslag kan worden ingezien zodra beschikbaar gesteld door zorgaanbieder.

### Usecase: Raadplegen verslag zonder beeld in persoonlijke gezondheidsomgeving

#### Doel en relevantie raadplegen verslag zonder beeld

De patiënt raadpleegt relevante verslagen om een vollediger inzicht te krijgen in de medische situatie, wat zonder deze informatie niet mogelijk zou zijn. Dit is belangrijk voor het nemen van weloverwogen beslissingen over het eigen zorgproces. Het inzien van eerdere onderzoeken, zoals beelden en verslagen, naast de meest recente resultaten, is van grote waarde in elk zorgtraject waarin beeldvorming een rol speelt.

##### Patient journey raadplegen verslag zonder beeld  
  
Roos Dalstra merkt dat haar gewicht de afgelopen dagen is toegenomen. Omdat vochtophoping een bekend verschijnsel is bij haar hartfalen, neemt ze contact op met haar huisarts. De huisarts verwijst haar door naar de radiologie voor een thoraxfoto. Na het maken van de thoraxfoto raadpleegt Roos het bijbehorende verslag in haar PGO. Omdat de beelden niet beschikbaar zijn, baseert ze zich op de beschreven bevindingen. Voor verdere duiding en bespreking van de volgende stappen wacht ze op de terugkoppeling van haar huisarts.

#### Procesbeschrijving raadplegen verslag zonder beeld

##### Preproces

- De patiënt heeft toestemming gegeven voor het elektronisch uitwisselen van medische gegevens tussen de zorgverlener en de eigen persoonlijke gezondheidsomgeving.
- Het beeld en verslag zijn geregistreerd en beschikbaar voor systemen die tijdlijngegevens kunnen opvragen

##### Proces

- De Patiënt raadpleegt de ‘’tijdlijn radiologisch onderzoeken’’ in zijn of haar PGO.
- Het systeem van de patiënt (PGO) vraagt om beschikbare medische gegevens bij de Zorgaanbieder.
- Het systeem van de Zorgaanbieder (XIS) levert een lijst met metadata over de gevonden beelden en verslagen op voor de Patiënt.
- De Patiënt gebruikt de persoonlijke gezondheidsomgeving om het gewenste Verslag te raadplegen of te downloaden.
- Het systeem van de Zorgaanbieder (XIS) levert het gevraagde verslag op voor de patiënt.

##### Postproces

- De patiënt ziet het geraadpleegde verslag in zijn of haar PGO, het bijbehorend beeld kan worden inzien zodra dit beschikbaar is gesteld door de zorgaanbieder.

### Bedrijfsrollen en UML activity diagram

Deze usecase onderscheidt twee bedrijfsrollen, namelijk de Persoon en de (Zorg)Aanbieder zoals te zien in onderstaande tabel.

Tabel 1 Bedrijfsrollen

| Bedrijfsrol (actor) | Beschrijving bedrijfsrol |
| --- | --- |
| Patiënt/ Persoon | Gebruiker van de PGO |
| (zorg)aanbieder | Gebruiker van het XIS |

{{render: guides/medmij-r4-image-availability-ig/images/Beeld in PGO - 0.3.png}}

Figuur 1: Raadplegen in PGO

### Informatieoverdracht

Zowel de persoon als de (zorg)aanbieder maken ieder gebruik van een informatiesysteem:

- PGO (persoon)
- XIS ((zorg)aanbieder)

#### Systemen & Systeemrollen

Deze systemen kennen ieder verschillende systeemrollen, die het uitwisselen van gegevens tussen deze systemen mogelijk maken. Hier gaat het om de beeld en verslag van (zorg)aanbieder naar de persoon.

Tabel 2 Systeemrol

| Systeem | Naam Systeemrol | Systeemrolcode | Omschrijving |
| --- | --- | --- | --- |
| PGO | BeeldVerslagMetadataLijstRaadplegen | MM-1.0-TDR-FHIR | Raadplegen Beeld en verslag metadata lijst bij zorgaanbieder |
|XIS | BeeldVerslagMetadataLijstBeschikbaarstellen | MM-1.0-TDB-FHIR |Beschikbaar stellen Beeld en verslag metadata lijst bij Patiënt |
| PGO | BeeldVerslagRaadplegen  | MM-1.0-BR-FHIR |  Raadplegen Beeld en verslag bij zorgaanbieder |
| XIS | BeeldVerslagBeschikbaarstellen | MM-1.0-BB-FHIR | Beschikbaar stellen Beeld en verslag bij Patiënt |

### Transacties en Transactiegroepen

Het uitwisselen van gegevens tussen de verschillende systeemrollen gebeurt op basis van transacties, een verzameling van transacties (bijvoorbeeld een vraag- en antwoordbericht) vormt een zogeheten transactiegroep. Voor de transacties die tussen de systeemrollen plaatsvinden, wordt in ART-DECOR de berichtspecificatie beschreven. Hier is bij de scenario’s beschreven uit welke gegevenselementen een transactie bestaat en wat de kardinaliteit van deze elementen is. Voor de technische specificaties en implementation guide, zie de {{pagelink:TO, text:FHIR IG}}.

__Noot:__ De specificaties voor de transacties in dit ontwerp staan op dit moment nog niet in ART-DECOR. Bij een toekomstige samenvoeging met de Nictiz informatiestandaard zullen deze worden opgenomen.

Tabel 3 Transactiegroep

| Transactiegroep | Transactie | Systeemrolcode | Systeem | Bedrijfsrol |
| --- | --- | --- | --- | --- |
| Verzamelen Beeld en verslag tijdlijn (PULL) | Raadplegen beeld en verslag tijdlijn | MM-1.0-TDR-FHIR | PGO | Patiënt |
| Verzamelen Beeld en verslag tijdlijn (PULL) | Beschikbaar stellen beeld en verslag tijdlijn | MM-1.0-TDB-FHIR | XIS | Zorgaanbieder |
| Verzamelen Beeld en verslag (PULL) | Raadplegen beeld en verslag | MM-1.0-BR-FHIR | PGO | Patiënt |
| Verzamelen Beeld en verslag (PULL) | Beschikbaar stellen beeld en verslag | MM-1.0-BB-FHIR | XIS | Zorgaanbieder |

### Usecasediagram

{{render: guides/medmij-r4-image-availability-ig/images/UML Usecasediagram Beeld in PGO.png}}

### Dataset

De dataset kan gevonden worden op  [GitHub](https://github.com/Stichting-MedMij/MedMij-R4-ImageAvailability/blob/1.0.0-beta.1/dataset/Dataset_MedMij_Beeldbeschikbaarheid_1.0.0-beta.1.xlsx).

### Weergave richtlijnen

#### Scope weergave richtlijnen

*   Het betreft een richtlijn. PGO-leveranciers hebben zelf de keuze of zij (delen van de) richtlijn toepassen voor de weergave van medische beelden.
*   De richtlijn geeft handvatten voor:
    1.   het gebruik van patiëntvriendelijke termen en toelichting
    2.  de inhoud van het overzicht van beeldgegevens in de PGO
*   De richtlijn geeft géén handvatten voor de vormgeving (kleur, vorm, lettertype, etc.) van beeldgegevens. Er is wel een UX design ontwikkeld die richting aan de vormgeving geeft.

#### Inhoud weergave richtlijnen

In de dataset is weergegeven welke dataelementen getoond moeten worden met de weergavenaam erbij voor de gebruiker van een PGO. In kolom J staat welke elementen getoond moeten worden. In kolom K is een advies gemaakt voor de weergavenaam van de elementen.

De waardenlijsten die gebruikt worden in de dataset hebben onder de kolom “benamingen” de weergavenaam voor de gebruikers van de PGO dit is overeenstemming met het algemene [FO](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Terminologie_en_vertalingen) van Medmij.

Daarnaast moet om de beelden zichtbaar te maken 
Beeld en verslag zoveel mogelijk gekoppeld blijven

#### Advies filtering in overzicht beelden

Elke PGO-gebruiker kan het overzicht van beelden minimaal sorteren op onderstaande gegevens:
*   Datum onderzoek
*   Zorginstelling

Elke PGO-gebruiker kan het overzicht van beelden minimaal filteren op onderstaande gegevens:
*   Datum onderzoek
*   Zorginstelling

Gezocht kan worden op de volgende gegevens:
*   Naam onderzoek

#### Disclaimer

Het is wenselijk de gebruiker erop te attenderen dat bij het downloaden van een beeld een DICOM viewer op de het device dient geïnstalleerd te worden om het bestand te kunnen inzien. 

### Requirements

De prioriteit van elke onderstaande functionele eis wordt vastgesteld volgens de MoSCoW-methodiek, waarbij eisen worden geclassificeerd op basis van hun belang en noodzaak voor de implementatie:

| M(ust-have) | Nodig voor de basisfunctionaliteit van de toepassing en moet worden geïmplementeerd om het proces succesvol te laten verlopen |
| --- | --- |
| S(hould-have) | Belangrijke functionaliteit die niet absoluut nodig is, maar die voordelen biedt voor gebruikers en de algehele gebruikservaring. |
| C(ould-have) | Gewenste functionaliteit die waarde toevoegt, maar minder kritisch is en indien nodig kan worden uitgesteld. |
| W(on't-have) | Functionaliteiten die nu buiten scope zijn maar mogelijk in de toekomst worden overwogen. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 1 | PGO | Zorggebruiker | Beelden in de webviewer bekijken | Geen DICOM-viewer op mijn apparaat hoef te downloaden | M |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | Vanuit het overzicht in de PGO kan de gebruiker met één klik een viewer openen om beelden en/of verslagen te bekijken. |
| 2. | De gebruiker kan (rendered) DICOM-beelden bekijken zonder extra software te installeren. |
| 3. | De viewer werkt in gangbare webbrowsers en is bruikbaar op desktop, tablet en mobiel (responsive of mobiele variant). |
| 4. | De gebruiker krijgt duidelijke visuele feedback (bijv. een laadindicator of wachtcursor met tekst) wanneer beelden worden geladen. |
| 5. | Indien mogelijk wordt de voortgang van het laden weergegeven in procenten of met een voortgangsbalk. | 
| 6. | Bij het laden van grotere studies (bijvoorbeeld 100 MB met 200 beelden) blijft de interface bruikbaar en krijgt de gebruiker inzicht in de voortgang, ook als de laadtijd hoger is dan verwacht door systeem- of netwerklatentie. |
| 7. | De gemiddelde laadtijd voor een studie van 100 MB is indicatief tussen 10–60 seconden, afhankelijk van systeemcapaciteit. Hierop worden geen harde eisen gesteld, maar de gebruiker wordt geïnformeerd indien het langer duurt. |
| 8. | De viewer opent in hetzelfde venster of in een herkenbare tab/pagina binnen de PGO (geen verwarring met andere portalen). | 

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 2 | PGO | Zorggebruiker | medische verslagen kunnen bekijken via de browser | Geen PDF-software op mijn device hoef te downloaden | M |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | Medische verslagen zijn in de PGO te openen zonder externe PDF-viewer of door ze eerst te downloaden. |
| 2. | Verslagen zijn leesbaar op alle schermformaten (desktop, tablet, mobiel). |


| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 3 | PGO | Zorggebruiker | Beelden en verslagen die bij hetzelfde onderzoek horen gekoppeld zien | Mijn uitslag (beeld en verslag samen) kan interpreteren om goed voorbereid te zijn op een vervolg consult | M |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | Bij elk verslag of beeld wordt automatisch gecontroleerd of er een bijbehorend gekoppeld item is (bijv. verslag bij beeld of beeld bij verslag). |
| 2. | Indien gekoppeld, worden deze gegevens samen weergegeven of met een duidelijke visuele link (bijv. "Bekijk bijbehorende beelden" of "Bekijk bijbehorend verslag"). |
| 3. | De koppeling gebeurt op basis van een gedeelde unieke identifier |
| 4. | In de tijdlijnweergave is het voor de gebruiker duidelijk dat de items samen horen |
| 5. | Op het scherm waar het verslag wordt weergegeven, wordt indien mogelijk de unieke identifier van het onderzoek getoond. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 4 | PGO | Zorggebruiker | Beelden en verslagen op chronologische  volgorde van uitvoerdatum zien | Ik niet hoef te sorteren om het juiste beeld te vinden  | M |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | Beelden en verslagen worden automatisch gesorteerd op uitvoerdatum, van meest recent naar minst recent. |
| 2. | De sortering is standaard ingesteld van nieuw naar oud en kan handmatig worden gewijzigd.|
| 3. | De sortering blijft behouden bij filteracties door de gebruiker|
| 4. | Datum van uitvoering wordt zichtbaar getoond bij ieder verslag/beeld. |
| 5. | Zowel beelden als verslagen worden chronologisch weergegeven op een gecombineerde tijdlijn gesorteerd op uitvoerdatum |
| 6. | Indien twee items dezelfde datum hebben, worden ze op tijdstip gesorteerd (indien beschikbaar). |
| 7. | De sortering blijft consistent bij herladen van de pagina of terugkeer naar het overzicht. | 
| 8. | Beelden/verslagen zonder uitvoerdatum worden onderaan de lijst weergegeven, ná alle items met een bekende uitvoerdatum, ongeacht of die ouder of recenter zijn. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 5 | PGO | Zorggebruiker | wil ik beelden en verslagen van meerdere zorgaanbieders in één overzicht kunnen bekijken | ik in één oogopslag kan zien bij welke zorgaanbieders ik ben geweest en welke beelden en verslagen daar zijn opgevraagd | M |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | Beelden en verslagen van meerdere zorgaanbieders worden in één gecombineerd overzicht weergegeven.|
| 2. | Elk item in het overzicht toont duidelijk de naam van de zorgaanbieder waar het onderzoek heeft plaatsgevonden.|

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 6 | PGO | Zorggebruiker | Beelden en verslagen ophalen met mijn PGO zonder dat deze automatisch opgeslagen worden op mijn device | Mijn privacy kan waarborgen, beelden en verslagen online kan raadplegen en geen onnodige opslagruimte gebruik | M |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | Beelden en verslagen worden tijdelijk geladen in de PGO, zonder automatische download of lokale opslag. |
| 2. | Tijdens het raadplegen wordt de gebruiker niet geconfronteerd met meldingen om bestanden op te slaan, tenzij hij/zij dat expliciet kiest.|
| 3. | De gebruiker heeft wél de optie om handmatig te downloaden en op te slaan als hij/zij dat wenst. |
| 4. | Er wordt geen onnodige cache of tijdelijke opslag gebruikt op het device (of deze wordt automatisch gewist bij afsluiten). | 
| 5. | Bij gebruik op gedeelde apparaten worden privacyrisico’s (zoals terugvinden in browsergeschiedenis/downloadmap) actief voorkomen. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 7 | PGO | Zorggebruiker | Kan beelden en verslagen filteren op basis van datum | Snel de meest recente of specifieke onderzoeken kan zien | S |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | De gebruiker kan een datumfilter instellen in het overzicht van beelden en verslagen (bijv. via datumselectie, periode of jaar). |
| 2. | Het filter werkt op uitvoerdatum en toont alleen items die binnen het gekozen bereik vallen.|
| 3. | Er is standaard geen filter actief; alle items worden getoond tot de gebruiker zelf filtert. |
| 4. | Na toepassing van een filter wordt het overzicht direct bijgewerkt zonder pagina-verversing. | 
| 5. | Filter blijft actief bij navigatie binnen de sessie (totdat gebruiker reset of verlaat). | 
| 6. | Beelden en verslagen blijven chronologisch gesorteerd binnen het filterresultaat. |
| 7. | De filteroptie is beschikbaar binnen de gecombineerde weergave van meerdere zorgaanbieders (indien van toepassing). | 

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 8 | PGO | Zorggebruiker | Medische beelden kunnen downloaden in het originele bestandsformaat via een duidelijke button op mijn device | Zelf beschikking heb over mijn medische gegevens en deze kan delen met andere zorgverleners of bewaren voor mijn eigen administratie. | S |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | De gebruiker ziet bij elk beschikbaar beeld of onderzoek een duidelijke downloadknop. |
| 2. | De gebruiker kan kiezen om dit op te slaan in: 
| | DICOM Part10-formaat (standaard voor medische beelden); |
| | JPEG-formaat (voor persoonlijk gebruik of eenvoudige weergave). |
| 3. | Wanneer de gebruiker kiest voor het originele formaat (DICOM), wordt een melding getoond met:
| | De aanduiding dat het om een DICOM-bestand gaat; |
| | Een korte uitleg dat voor het openen van dit bestand een geschikte viewer nodig is; |
| | De gevolgen van opslag op het apparaat (privacy, beveiliging, duurzaamheid); |
| | De verwachte bestandsgrootte (MB/GB). |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 9 | PGO | Zorggebruiker | Verslagen van beelden kunnen downloaden via een button op mijn device | Zelf beschikking heb over mijn medische gegevens | S |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | Bij elk beschikbaar beeldverslag is een duidelijke knop zichtbaar met het label 'Download verslag'. |
| 2. | Verslagen zijn te downloaden als PDF-bestand met duidelijke bestandsnaam (bijvoorbeeld Verslag_CT_borst_2025-03-15.pdf). |
| 3. | De downloadfunctie werkt op mobiele telefoons (Android, iOS), tablets en desktopapparaten in gangbare browsers. |
| 4. | Na het klikken op de downloadknop ontvangt de gebruiker visuele feedback, bijvoorbeeld een melding 'Download gestart' of 'Verslag opgeslagen'. | 

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 10 | PGO | Zorggebruiker | Wil ik beelden en verslagen kunnen filteren op basis van zorgaanbieder | Ik snel gegevens van een specifieke zorgverlener kan bekijken | S |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | De gebruiker ziet een filter waarin de beschikbare zorgaanbieders worden weergegeven. |
| 2. | Na selectie van een zorgaanbieder worden alleen de bijbehorende beelden en verslagen getoond in het overzicht.|
| 3. | In de lijst van beelden en verslagen is duidelijk aangegeven welke zorgaanbieder het item heeft aangeleverd. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 11 | PGO | Zorggebruiker | Beelden en verslagen kunnen filteren op basis van aandoening | Gericht informatie kan vinden die relevant is voor mijn gezondheid | C |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | De gebruiker kan kiezen uit een lijst van aandoeningen om alleen gerelateerde beelden en verslagen te tonen. |
| 2. | Elk beeld of verslag in de PGO is (indien beschikbaar) gelabeld met een of meerdere aandoeningen of zorgindicaties, zodat correcte filtering mogelijk is. |
| 3. | Aandoeningen worden in de PGO weergegeven met patiëntvriendelijke termen die overeenkomen met de vertalingen uit de Nictiz-publicatie op de Nationale Terminologie Server. Indien er geen patiëntvriendelijke term beschikbaar is voor een specifieke SNOMED-code, wordt de medisch-technische term getoond. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 12 | PGO | Zorggebruiker | Bij het beeld en verslag de betrokken zorgverlener(s) zien indien beschikbaar gesteld door zorgaanbieder | Weet welke zorgverlener verantwoordelijk is voor de informatie | C |

|Acceptatiecriteria | Beschrijving |
| --- | ---|
| 1. | Bij elk beeld of verslag wordt de beschikbaar gestelde naam en/of specialisme van de aanvragende zorgverlener getoond. |
| 2. | Bij elk beeld of verslag wordt de beschikbaar gestelde naam en/of specialisme van de uitvoerende zorgverlener getoond. |