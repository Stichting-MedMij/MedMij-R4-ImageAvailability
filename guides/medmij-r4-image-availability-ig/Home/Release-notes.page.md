# {{page-title}}

## 1.0.0-beta.1

| Component             | Description  | Ticket   |
| --------------------- | ------------ | ---------|
| Dataset               | The concepts ReportTitle and ImageTitle have been added. | [DOSINZAGE2-514](https://medmij.atlassian.net/browse/DOSINZAGE2-514) |
| Dataset               | The cardinality of Performer has been changed from `1..1` to `0..1`. | [DOSINZAGE2-514](https://medmij.atlassian.net/browse/DOSINZAGE2-514) |
| Dataset               | The concepts AccessionNumber and StudyInstanceUID have been added. | [DOSINZAGE2-571](https://medmij.atlassian.net/browse/DOSINZAGE2-571) |
| Dataset               | The concept Modality has been added. | [DOSINZAGE2-671](https://medmij.atlassian.net/browse/DOSINZAGE2-671) |
| Functional design     | The definitions of the system roles have been corrected. | |
| Functional design     | The requirements have been updated. | [DOSINZAGE2-617](https://medmij.atlassian.net/browse/DOSINZAGE2-617), [DOSINZAGE2-659](https://medmij.atlassian.net/browse/DOSINZAGE2-659), [DOSINZAGE2-672](https://medmij.atlassian.net/browse/DOSINZAGE2-672) |
| Functional design     | The functional design has been finetuned based on the feedback of Nictiz. | [DOSINZAGE2-414](https://medmij.atlassian.net/browse/DOSINZAGE2-414) |
| Functional design     | The display guideline (weergaverichtlijn) has been added to the functional design. | [DOSINZAGE2-550](https://medmij.atlassian.net/browse/DOSINZAGE2-550), [DOSINZAGE2-671](https://medmij.atlassian.net/browse/DOSINZAGE2-671) |
| Functional design     | The deduplication guideline (deduplicatierichtlijn) has been added to the functional design. | [DOSINZAGE2-477](https://medmij.atlassian.net/browse/DOSINZAGE2-477) |
| Technical design      | The technical design has been finetuned based on the feedback of Nictiz. | [DOSINZAGE2-414](https://medmij.atlassian.net/browse/DOSINZAGE2-414) |
| Technical design      | The technical design has been finetuned based on the feedback of Founda. | [TBIPB-46](https://medmij.atlassian.net/browse/TBIPB-46) |
| Technical design      | More guidance on the relevant identifiers has been added. | [DOSINZAGE2-571](https://medmij.atlassian.net/browse/DOSINZAGE2-571), [DOSINZAGE2-617](https://medmij.atlassian.net/browse/DOSINZAGE2-617) |
| FHIR artifacts        | The profile bbs-DocumentReference has been created and added to the IG. | [DOSINZAGE2-533](https://medmij.atlassian.net/browse/DOSINZAGE2-533), [DOSINZAGE2-534](https://medmij.atlassian.net/browse/DOSINZAGE2-534), [DOSINZAGE2-571](https://medmij.atlassian.net/browse/DOSINZAGE2-571), [DOSINZAGE2-598](https://medmij.atlassian.net/browse/DOSINZAGE2-598), [DOSINZAGE2-620](https://medmij.atlassian.net/browse/DOSINZAGE2-620), [DOSINZAGE2-667](https://medmij.atlassian.net/browse/DOSINZAGE2-667), [DOSINZAGE2-671](https://medmij.atlassian.net/browse/DOSINZAGE2-671) |
| FHIR artifacts        | The nl-core dependency has been updated to 0.12.0-beta.1. | [DOSINZAGE2-576](https://medmij.atlassian.net/browse/DOSINZAGE2-576) |
| Test material         | The time zone in the FHIR instances has been updated to reflect the Dutch time zone. | [DOSINZAGE2-532](https://medmij.atlassian.net/issues/DOSINZAGE2-532) |
| Test material         | The concepts ReportInformationIdentificationNumber and ImageInformationIdentificationNumber have been uncoupled from the Study Instance UID and Accession Number, respectively. | [DOSINZAGE2-445](https://medmij.atlassian.net/issues/DOSINZAGE2-445) |
| Test material         | <ul> <li>The Accession Number issuers have been added. <li>Several missing Study Instance UIDs have been added. <li>The BSN numbers in Patient resources have been masked. <li>The bbs-DocumentReference profile has been assigned to all DocumentReference resources in `.meta.profile` instead of the IHE.MHD.Comprehensive.DocumentReference profile.</ul> | [DOSINZAGE2-412](https://medmij.atlassian.net/issues/DOSINZAGE2-412) |
| Test material         | The `PractitionerRole.organization` has been removed from all test instances. | [DOSINZAGE2-620](https://medmij.atlassian.net/issues/DOSINZAGE2-620) |
| Test material         | Test material of CZE has been added, containing a.o. a series of images. | [DOSINZAGE2-307](https://medmij.atlassian.net/issues/DOSINZAGE2-307), [DOSINZAGE2-336](https://medmij.atlassian.net/issues/DOSINZAGE2-336), [DOSINZAGE2-450](https://medmij.atlassian.net/issues/DOSINZAGE2-450), [DOSINZAGE2-461](https://medmij.atlassian.net/issues/DOSINZAGE2-461) |
| Test material         | The Modality has been added to all test instances. | [DOSINZAGE2-671](https://medmij.atlassian.net/browse/DOSINZAGE2-671) |
| Solution architecture | An initial version of the Solution architecture has been added. | [DOSINZAGE2-482](https://medmij.atlassian.net/issues/DOSINZAGE2-482) |