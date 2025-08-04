---
topic: Requirements
---

# Requirements
De prioriteit van elke onderstaande functionele eis wordt vastgesteld volgens de MoSCoW-methodiek, waarbij eisen worden geclassificeerd op basis van hun belang en noodzaak voor de implementatie:

| Prioriteit | Omschrijving |
| --- | --- |
| M(ust have) | Nodig voor de basisfunctionaliteit van de toepassing en moet worden geïmplementeerd om het proces succesvol te laten verlopen. |
| S(hould have) | Belangrijke functionaliteit die niet absoluut nodig is, maar die voordelen biedt voor gebruikers en de algehele gebruikservaring. |
| C(ould have) | Gewenste functionaliteit die waarde toevoegt, maar minder kritisch is en indien nodig kan worden uitgesteld. |
| W(on't have) | Functionaliteiten die nu buiten scope zijn maar mogelijk in de toekomst worden overwogen. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 1 | PGO | Zorggebruiker | Beelden in de webviewer bekijken | Geen DICOM-viewer op mijn apparaat hoef te downloaden | M |

| Acceptatiecriteria | Beschrijving |
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

| Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Medische verslagen zijn in de PGO te openen zonder externe PDF-viewer of door ze eerst te downloaden. |
| 2. | Verslagen zijn leesbaar op alle schermformaten (desktop, tablet, mobiel). |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 3 | PGO | Zorggebruiker | Beelden en verslagen die bij hetzelfde onderzoek horen, gekoppeld zien | Mijn uitslag (beeld en verslag samen) kan interpreteren om goed voorbereid te zijn op een vervolgconsult | M |

| Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Bij elk verslag of beeld wordt automatisch gecontroleerd of er een bijbehorend gekoppeld item is (i.e. verslag bij beeld of beeld bij verslag). |
| 2. | Indien gekoppeld, worden deze gegevens samen weergegeven of met een duidelijke visuele link. |
| 3. | De koppeling gebeurt op basis van een gedeelde unieke identifier. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 4 | PGO | Zorggebruiker | Beelden en verslagen op chronologische volgorde van uitvoerdatum zien | Ik niet hoef te sorteren om het juiste beeld te vinden | M |

| Acceptatiecriteria | Beschrijving |
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

| Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Beelden en verslagen van meerdere zorgaanbieders worden in één gecombineerd overzicht weergegeven. |
| 2. | Elk item in het overzicht toont duidelijk de naam van de zorgaanbieder waar het onderzoek heeft plaatsgevonden. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 6 | PGO | Zorggebruiker | Beelden en verslagen kunnen filteren op basis van datum | Snel de meest recente of specifieke onderzoeken kan zien | S |

| Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | De gebruiker kan een datumfilter instellen in het overzicht van beelden en verslagen (bijvoorbeeld via datumselectie, periode of jaar). |
| 2. | Het filter werkt op VerrichtingStartDatum (bbs-dataelement-174). |
| 3. | Er is standaard geen filter actief; alle items worden getoond tot de gebruiker zelf filtert. |
| 4. | Na toepassing van een filter wordt het overzicht direct bijgewerkt zonder paginaverversing. | 
| 5. | Het filter blijft actief bij navigatie binnen de sessie (totdat gebruiker reset of de sessie verlaat). | 
| 6. | Beelden en verslagen blijven chronologisch gesorteerd binnen het filterresultaat. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 7 | PGO | Zorggebruiker | Medische beelden kunnen downloaden in het originele bestandsformaat via een duidelijke button op mijn device | Zelf beschikking heb over mijn medische gegevens en deze kan delen met andere zorgverleners of bewaren voor mijn eigen administratie. | S |

| Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | De gebruiker ziet bij elk beschikbaar beeld of onderzoek een duidelijke downloadknop. |
| 2. | De gebruiker kan kiezen om dit op te slaan in: <br/> <ul> <li> DICOM Part10-formaat (standaard voor medische beelden); <li> JPEG-formaat (voor persoonlijk gebruik of eenvoudige weergave). |
| 3. | Wanneer de gebruiker kiest voor het originele formaat (DICOM), wordt een melding getoond met: <br/> <ul> <li> De aanduiding dat het om een DICOM-bestand gaat; <li> Een korte uitleg dat voor het openen van dit bestand een geschikte viewer nodig is; <li> Een waarschuwing dat het bestand persoonlijke data bevat. <li> De verwachte bestandsgrootte (MB/GB). |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 8 | PGO | Zorggebruiker | Verslagen van beelden kunnen downloaden via een button op mijn device | Zelf beschikking heb over mijn medische gegevens | S |

| Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Bij elk beschikbaar beeldverslag is een duidelijke knop zichtbaar met het label 'Download verslag'. |
| 2. | Verslagen zijn te downloaden als PDF-bestand. |
| 3. | Na het klikken op de downloadknop ontvangt de gebruiker visuele feedback, bijvoorbeeld een melding 'Download gestart' of 'Verslag opgeslagen'. | 

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 9 | PGO | Zorggebruiker | Wil ik beelden en verslagen kunnen filteren op basis van zorgaanbieder | Ik snel gegevens van een specifieke zorgverlener kan bekijken | S |

| Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | De gebruiker ziet een filter waarin de beschikbare zorgaanbieders worden weergegeven. |
| 2. | Na selectie van een zorgaanbieder worden alleen de bijbehorende beelden en verslagen getoond in het overzicht.|
| 3. | In de lijst van beelden en verslagen is duidelijk aangegeven welke zorgaanbieder het item heeft aangeleverd. |

| ID | Eis voor | Als (rol) | Wil ik (functie) | Zodat ik (doel) | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- |
| 10 | PGO | Zorggebruiker | Bij het beeld en verslag de betrokken zorgverlener(s) zien indien beschikbaar gesteld door zorgaanbieder | Weet welke zorgverlener verantwoordelijk is voor de informatie | C |

| Acceptatiecriteria | Beschrijving |
| --- | --- |
| 1. | Bij elk beeld of verslag wordt de beschikbaar gestelde naam en/of specialisme van de aanvragende zorgverlener getoond. |
| 2. | Bij elk beeld of verslag wordt de beschikbaar gestelde naam en/of specialisme van de uitvoerende zorgverlener getoond. |