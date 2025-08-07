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
Roos Dalstra heeft pijn op de borst en besluit naar de huisartsenpost te gaan. Hier aangekomen wordt ze gelijk naar de spoedeisende hulp doorverwezen. Er wordt een echo gemaakt van het hart. De cardioloog besluit haar in te sturen naar het academische ziekenhuis i.v.m. andere aandoeningen die Roos ook heeft. In het academische ziekenhuis worden nog een CT-scan en thoraxröntgenfoto gemaakt. Roos verblijft enkele dagen in het ziekenhuis en mag daarna naar huis. Roos wil bij thuiskomst de radiologische beelden en de bijbehorende verslagen van beide ziekenhuizen in haar PGO inzien. Hierdoor krijgt ze meer inzicht in haar situatie en kan ze de vervolgbehandeling beter voorbereiden. 

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

{{render: guides/medmij-r4-image-availability-ig/images/Raadplegen Beeld in PGO.png}}

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
De dataset kan gevonden worden op [GitHub](https://github.com/Stichting-MedMij/MedMij-R4-ImageAvailability/blob/main/dataset/Dataset_MedMij_Beeldbeschikbaarheid_1.0.0-beta.1.xlsx).