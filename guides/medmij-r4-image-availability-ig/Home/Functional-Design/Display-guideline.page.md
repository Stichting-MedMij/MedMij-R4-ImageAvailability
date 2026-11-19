---
topic: Weergavevoorbeelden
---

# Weergavevoorbeelden

## Inleiding
Dit zijn weergavevoorbeelden voor de gegevensdienst Beeldbeschikbaarheid. De voorbeelden betreffen mock-ups die bedoeld zijn ter inspiratie. PGO’s kunnen deze voorbeelden naar eigen inzicht visueel vormgeven, zolang de gebruiksvriendelijkheid behouden blijft.

## Doel
De weergavevoorbeelden hebben als doel om duidelijke handvatten te bieden voor een patiëntvriendelijke en begrijpelijke weergave van medische beeldgegevens in PGO's. Deze voorbeelden ondersteunen ontwikkelaars en zorgverleners bij het:
- gebruiken van begrijpelijke en patiëntvriendelijke termen en toelichtingen;
- structureren en presenteren van een overzicht van beeldgegevens op een manier die aansluit bij de informatiebehoefte van patiënten.

Naast de weergavevoorbeelden zijn ook {{pagelink: FunctioneleEisen, text: functionele eisen}} opgesteld. De functionele eisen bevatten de minimale eisen waaraan een DVA en PGO moeten voldoen en de weergavevoorbeelden bestaan daaropvolgend uit visuele en UX-uitwerkingen die aangeven hoe deze functionaliteit patiëntvriendelijk kan worden gepresenteerd.

## Weergave in PGO
Het inloggen en authenticeren bij de zorgaanbieder is niet opgenomen in deze weergavevoorbeelden.

Nadat de gebruiker één of meerdere zorgaanbieders heeft gekozen waar de beschikbare beelden en verslagen opgehaald moeten worden, kan de gebruiker vanuit het hoofdmenu navigeren naar het overzichtsscherm waar de beelden en verslagen kunnen worden opgehaald.

### Overzichtsscherm beelden en verslagen
Het overzichtsscherm bevat het overzicht van de beelden en verslagen die door de gebruiker in de PGO kunnen worden ingezien. De figuur hieronder is een voorbeeld van hoe dit overzicht zou kunnen worden weergegeven. Een PGO is vrij om onderstaande weergave te ondersteunen of zelf een weergave te maken. 

{{render: guides/medmij-r4-image-availability-ig/images/Overzicht_beelden_en_verslagen.png}}

**Figuur 1: Voorbeeld van een overzicht**

### Detailscherm beeld
Als de gebruiker een specifiek beeld in het overzicht selecteert en vanuit daar opent, wordt een detailscherm van het betreffende beeld aan de gebruiker getoond. De beeld-viewer wordt geopend in de browser of als programma/app in de PGO.

{{render: guides/medmij-r4-image-availability-ig/images/Voorbeeld beeld.png}}

**Figuur 2: Voorbeeld van een beeld**

### Detailscherm verslag
Als de gebruiker een specifiek verslag in het overzicht selecteert en vanuit daar opent, wordt een PDF-viewer geopend waarin het betreffende verslag wordt getoond.

{{render: guides/medmij-r4-image-availability-ig/images/Voorbeeld verslag.png}}

**Figuur 3: Voorbeeld van een verslag**

### Relevante gegevens
De tabel hieronder bevat patiëntvriendelijke termen voor alle SOP-klassen die ondersteund moeten worden (zie ook Tabel 9 in het {{pagelink: TD, text: technisch ontwerp, anchor: SupportedSOPClasses}}). Deze termen kunnen gebruikt worden als weergavetekst in de PGO.

| Naam SOP-klasse | SOP Class UID | Patiëntvriendelijke term |
| --- | --- | --- |
| Computed Radiography (CR) Image Storage | 1.2.840.10008.5.1.4.1.1.1 | Röntgenfoto |
| Digital X-Ray Image Storage – For Presentation | 1.2.840.10008.5.1.4.1.1.1.1 | Röntgenfoto |
| Digital Mammography X-Ray Image Storage – For Presentation | 1.2.840.10008.5.1.4.1.1.1.2 | Borstfoto |
| Computed Tomography (CT) Image Storage | 1.2.840.10008.5.1.4.1.1.2 | CT-scan |
| Enhanced Computed Tomography (CT) Image Storage | 1.2.840.10008.5.1.4.1.1.2.1 | CT-scan |
| Ultrasound Multi-frame Image Storage | 1.2.840.10008.5.1.4.1.1.3.1 | Echo |
| Magnetic Resonance (MR) Image Storage | 1.2.840.10008.5.1.4.1.1.4 | MRI-scan |
| Enhanced Magnetic Resonance (MR) Image Storage | 1.2.840.10008.5.1.4.1.1.4.1 | MRI-scan |
| Ultrasound Image Storage | 1.2.840.10008.5.1.4.1.1.6.1 | Echo |
| Secondary Capture Image Storage | 1.2.840.10008.5.1.4.1.1.7 | Overig medisch beeld |
| Multi-frame Single Bit Secondary Capture Image Storage | 1.2.840.10008.5.1.4.1.1.7.1 | Overig medisch beeld |
| Multi-frame Grayscale Byte Secondary Capture Image Storage | 1.2.840.10008.5.1.4.1.1.7.2 | Overig medisch beeld |
| Multi-frame Grayscale Word Secondary Capture Image Storage | 1.2.840.10008.5.1.4.1.1.7.3 | Overig medisch beeld |
| Multi-frame True Color Secondary Capture Image Storage | 1.2.840.10008.5.1.4.1.1.7.4 | Overig medisch beeld |
| X-Ray Angiographic Image Storage | 1.2.840.10008.5.1.4.1.1.12.1 | Röntgenfoto van bloedvaten |
| X-Ray Radiofluoroscopic Image Storage | 1.2.840.10008.5.1.4.1.1.12.2 | Bewegende röntgenbeelden |
| Nuclear Medicine Image Storage | 1.2.840.10008.5.1.4.1.1.20 | Scan met radioactieve stof |
| VL Endoscopic Image Storage | 1.2.840.10008.5.1.4.1.1.77.1.1 | Kijkonderzoek |
| Video Endoscopic Image Storage | 1.2.840.10008.5.1.4.1.1.77.1.1.1 | Kijkonderzoek |
| Encapsulated PDF Storage | 1.2.840.10008.5.1.4.1.1.104.1 | PDF-document |
| Positron Emission Tomography (PET) Image Storage | 1.2.840.10008.5.1.4.1.1.128 | PET-scan |
| Enhanced Positron Emission Tomography (PET) Image Storage | 1.2.840.10008.5.1.4.1.1.130 | PET-scan |

**Tabel 1: Patiëntvriendelijke termen SOP-klassen**

### Disclaimers
#### Downloaden van beelden
Het is wenselijk de gebruiker erop te attenderen dat bij het downloaden van een beeld een DICOM-viewer op het apparaat geïnstalleerd dient te worden om het bestand te kunnen inzien. Door het ontwikkelen van een waarschuwing is het voor een gebruiker duidelijk wat de gevolgen zijn als een DICOM-bestand wordt gedownload.

Figuur 4 bevat een visuele weergave van hoe deze waarschuwing eruit zou kunnen komen te zien. In deze figuur verwijst de waarschuwing naar de knop waarmee het beeld als DICOM-bestand kan worden gedownload.

{{render: guides/medmij-r4-image-availability-ig/images/Let_op_DICOM_download.png}}

**Figuur 4: Voorbeeld van een waarschuwing met betrekking tot het downloaden van DICOM-bestanden**

#### Niet volledig tonen van beeldenreeks
Bij het niet volledig tonen van een beeldenreeks is het advies om de gebruiker hierop te attenderen. Figuur 5 bevat een visuele weergave van hoe deze waarschuwing er per niet getoond beeld van een beeldenreeks uit zou kunnen zien. De vermelde SOP-klasse in deze waarschuwing kan door terugkoppeling van de eindgebruiker naar de PGO-leverancier of zorgaanbieder gebruikt worden voor verder onderzoek naar weergavemogelijkheden van het betreffende beeld.

{{render: guides/medmij-r4-image-availability-ig/images/Waarschuwing_onvolledige_beeldenreeks.png}}

**Figuur 5: Voorbeeld van een waarschuwing bij niet tonen beeld uit beeldenreeks**