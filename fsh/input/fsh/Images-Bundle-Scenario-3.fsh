//Bundle with FHIR test instances in FSH format for Image Availability test scenario 3

Instance: Images-DocumentReference-De-Graaff-Image-3-1
InstanceOf: http://medmij.nl/fhir/StructureDefinition/bbs-DocumentReference
Usage: #example
* masterIdentifier
  * system = $URI
  * value = "urn:uuid:e5864703-93bd-46dc-9754-fcd2c0f16489" // document uniqueId | Onderzoek.Beeldinformatie.BeeldinformatieIdentificatienummer
* status = #current // availabilityStatus | geen mapping naar dataset
* type = $SCT#16831000087101 "MRI van linker bovenbeen" // Onderzoek.Verrichting.VerrichtingType
* category
  * coding[radiologyStudies] = $LNC#18726-0 "Radiology studies (set)" // Primaire code
  * coding[images] = $XDSClassCode#IMAGES "Images" // Secundaire code
* subject = Reference(Images-Patient-De-Graaff) "de Graaff"
* date = "2020-03-03T12:00:00+01:00" // date | Onderzoek.Beeldinformatie.DatumTijd
* author[0] = Reference(Images-PractitionerRole-Pieterssen) "Pieterssen, Orthopedisch chirurg, Stichting Spaarne Gasthuis, Radiologie"
* author[1] = Reference(Images-Organization-Spaarne) "Stichting Spaarne Gasthuis, Radiologie, Algemeen ziekenhuis"
* securityLabel = $Confidentiality#N "Normal" // securityLabel | geen mapping naar dataset
* content
  * attachment
    * contentType = #application/dicom+json
    * language = #nl // languageCode | geen mapping naar dataset
    * url = "https://examplepacs.xis/wado/metadata" // geen mapping naar dataset | verwijst naar een dummy URL op een PACS
    * title = "MRI van linker bovenbeen" // title | Onderzoek.Beeldinformatie.BeeldTitel
    * creation = "2020-03-03T12:00:00+01:00" // creationTime | Onderzoek.Beeldinformatie.DatumTijd
  * format = $DICOMUIDRegistry#1.2.840.10008.5.1.4.1.1.88.59 // formatCode | geen mapping naar dataset
* context
  * period.start = "2020-03-03" // serviceStartTime | Onderzoek.Verrichting.VerrrichtingStartdatum
  * facilityType = $OrganizationType#V6 "Algemeen ziekenhuis" // Zorgaanbieder.OrganisatieType
  * practiceSetting = $SCT#394734003 "Radiological specialties" // Overgenomen uit de Nictiz IG, moet mogelijk specifieker
  * sourcePatientInfo = Reference(Images-Patient-De-Graaff) "de Graaff"
  * related[0]
    * identifier
      * type = $URI#urn:ihe:iti:xds:2013:accession
      * system = $MedMijImagesTest // MedMij OID voor testdoeleinden Beeldbeschikbaarheid
      * value = "RAD-20250212-47092" // Dummy Accession Number
      * assigner = Reference(Images-Organization-Spaarne) "Stichting Spaarne Gasthuis, Radiologie, Algemeen ziekenhuis" // Issuer of Accession Number
  * related[1]
    * identifier
      * type = $URI#urn:ihe:iti:xds:2016:studyInstanceUID
      * value = "1.2.826.0.1.3680043.8.498.90783674708684117220863480423356599801" // Dummy Study Instance UID

Instance: Images-Patient-De-Graaff
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient
Usage: #example
* identifier
  * system = $BSN
  * value.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #masked // gemaskeerd BSN
* name
  * use = #official
  * text = "de Graaff"
  * family = "de Graaff"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-prefix].valueString = "de"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Graaff"
* gender = #unknown
  * extension[http://nictiz.nl/fhir/StructureDefinition/ext-CodeSpecification].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "Unknown"
* birthDate = "2008-01-01"

Instance: Images-PractitionerRole-Pieterssen
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole
Usage: #example
* practitioner = Reference(Images-Practitioner-Pieterssen) "Pieterssen"
* organization = Reference(Images-Organization-Spaarne) "Stichting Spaarne Gasthuis, Radiologie, Algemeen ziekenhuis"
* specialty
  * coding = $UZI#01.032 "Orthopedisch chirurg"

Instance: Images-Practitioner-Pieterssen
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner
Usage: #example
* name
  * use = #official
  * text = "Pieterssen"
  * family = "Pieterssen"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Pieterssen"

Instance: Images-Organization-Spaarne
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization
Usage: #example
* identifier
  * system = $AGB
  * value = "6010754"
* type
  * coding[0] = urn:oid:2.16.840.1.113883.2.4.6.7#0362 "Radiologie"
  * coding[1] = $OrganizationType#V6 "Algemeen ziekenhuis"
* name = "Stichting Spaarne Gasthuis"