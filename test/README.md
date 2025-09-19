# Test resources for MedMij R4 Image Availability  

This directory contains test resources intended for testing MedMij R4 Image Availability. These test resources are meant to support interoperability testing.

## Structure  
- The `pgo` folder contains a prototype PGO (Personal Health Environment) implementation, made by MedMij.
- The `resources` folder contains the FHIR test resources.
- The `dicom` folder contains DICOM files referenced by the FHIR resources.
- The [Excel file](https://github.com/Stichting-MedMij/MedMij-R4-ImageAvailability/blob/main/test/Testdata_MedMij_Beeldbeschikbaarheid_1.0.0-rc.1.xlsx) contains the functional test data from which the FHIR resources are generated.

## Important notes
- Various identifiers, such as the Study Instance UID, Accession Number, and `DocumentReference.masterIdentifier`, are dummy/mocked values and may not reference any actual data. Adjust these as needed to fit your testing scenarios.
- The `.content.attachment.url` in the DocumentReference resources for images points to an example URL. It is expected that this is replaced with a real URL (e.g., to a PACS) so that actual DICOM JSON metadata and images can be retrieved.  
- Any referenced reports are example PDFs provided in Binary format. You may also reference PDFs or reports from your own source system as needed.

## Disclaimer
These resources are for testing purposes only and may not be entirely correct.