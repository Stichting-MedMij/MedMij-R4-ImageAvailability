---
topic: FHIR
---

# {{page-title}}

## FHIR profiles

### DocumentReference
In the current version of this IG, the [IHE.MHD.Comprehensive.DocumentReference profile](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference) is used as a base profile for the ITI-67 and ITI-68 based transactions. The bbs-DocumentReference profile is derived from the former profile, and contains mappings to the [Nictiz BBS dataset (1.0.0-alpha.2)](https://decor.nictiz.nl/pub/bbs/bbs-html-20240208T092809/ds-2.16.840.1.113883.2.4.3.11.60.133.1.1-2022-03-09T122352.html), as well as the [National IHE MetaData Set (2024)](https://decor.nictiz.nl/pub/nihemds/ihexds-html-20220712T144728/ds-2.16.840.1.113883.2.4.3.11.60.106.1.1-2013-12-04T122419.html), which were provided in [section 5.3 of the BBS FHIR IG](https://informatiestandaarden.nictiz.nl/wiki/Bbs:V1_Alpha2_IG#MHD.2FWIA:_Mobile_access_to_Health_Documents_.2F_Web-based_Image_Access). Moreover, mappings to the [MedMij dataset](https://github.com/Stichting-MedMij/MedMij-R4-ImageAvailability/blob/main/dataset/Dataset_MedMij_Beeldbeschikbaarheid_1.0.0-beta.1.xlsx) have been added for concepts that have been introduced in the MedMij use case.

{{tree:http://medmij.nl/fhir/StructureDefinition/bbs-DocumentReference, buttons}}

**Note:**
- The [Nictiz Profiling Guidelines for FHIR R4](https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_Profiling_Guidelines_R4) have been used as guidelines for creating the profile.
- The (element) descriptions present in het profile are taken (and translated, if necessary) from the respective dataset the mapped concept originates from. If concepts of different datasets are mapped to the same element within the profile, both descriptions have been included.
- The ['open world' modeling](https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_Profiling_Guidelines_R4#Open_vs._closed_world_modeling) approach is adopted as much as possible. Notable exceptions are cardinalities that have been restricted based on the functional dataset of the MedMij use case, such as the minimum cardinalities of `.date` and `.content.attachment.title`.
- For the ValueSets bound in the profile, the following approach has been followed:
  - If the IHE.MHD profile defines a ValueSet with a *required* binding on a certain element, those ValueSet and binding are kept as-is. Moreover, the terminology linked to the corresponding concept from the Nictiz BBS dataset or National IHE MetaData Set is added as an *additional* binding (assuming that the value set linked in the respective dataset is a subset of the ValueSet bound in the IHE.MHD profile);
  - If a concept from the Nictiz BBS dataset is mapped on a certain element, and a value set is linked to that concept, the corresponding ValueSet is bound on that element, together with the binding specified in the dataset;
  - If no concept from the Nictiz BBS dataset is mapped on a certain element, but there is a concept from the National IHE MetaData Set mapped to that element, and a value set is linked to that concept, the corresponding ValueSet is adopted on that element with an *extensible* binding.

### Other profiles
FHIR R4 conformance resources developed by Nictiz (based on zib publication 2020) from the [nl-core 0.12.0-beta.1 package](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1) are used and referenced where possible. In particular, the nl-core profiles the table below are used.

| Zib | FHIR resource/data type | FHIR profile |
| --- | --- | --- |
| [Patient](https://zibs.nl/wiki/Patient-v3.2(2020EN)) | Patient | [nl-core-Patient](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885819) |
| [HealthProfessional](https://zibs.nl/wiki/HealthProfessional-v3.5(2020EN)) | PractitionerRole | [nl-core-HealthProfessional-PractitionerRole](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885778)
| [HealthcareProvider](https://zibs.nl/wiki/HealthcareProvider-v3.4(2020EN)) | Organization | [nl-core-HealthcareProvider-Organization](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885776) |
| [Encounter](https://zibs.nl/wiki/Encounter-v4.0.1(2020EN)) | Encounter | [nl-core-Encounter](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885764) |
| [AnatomicalLocation](https://zibs.nl/wiki/AnatomicalLocation-v1.0(2020EN)) | CodeableConcept | [nl-core-AnatomicalLocation](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885731) |

**Table 1: Relevant nl-core profiles**