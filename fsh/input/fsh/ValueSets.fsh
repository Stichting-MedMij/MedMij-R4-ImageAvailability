// All custom ValueSets used in Image Availability

ValueSet: Modality
Id: Modality
Title: "Modality ValueSet."
Description: "DICOM modalities that need to be supported in the context of Image Availability."
* insert DefaultNarrative
* ^url = $ModalityValueSetURL
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $ModalityValueSetOID
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* $DCM#CR "Computed Radiography"
* $DCM#CT "Computed Tomography"
* $DCM#DX "Digital Radiography"
* $DCM#ES "Endoscopy"
* $DCM#MG "Mammography"
* $DCM#MR "Magnetic Resonance"
* $DCM#NM "Nuclear Medicine"
* $DCM#OT "Other"
* $DCM#PT "Positron emission tomography"
* $DCM#RF "Radiofluoroscopy"
* $DCM#SC "Secondary Capture"
* $DCM#US "Ultrasound"
* $DCM#XA "X-Ray Angiography"

ValueSet: ModalityCombined
Id: ModalityCombined
Title: "ModalityCombined ValueSet."
Description: "Value set combining the (overlapping) value sets that are defined by Nictiz (in the Nationale IHE MetaData Set (2024)) and MedMij, respectively."
* insert DefaultNarrative
* ^url = $ModalityCombinedValueSetURL
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $ModalityCombinedValueSetOID
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* include codes from valueset http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.106.11.9--20131212104106
* include codes from valueset Modality