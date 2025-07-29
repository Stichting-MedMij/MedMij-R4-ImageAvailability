---
topic: TO
---

# FHIR IG

## Introduction
This IG describes a patient use case in the context of the [information standard "Image Availability" (Dutch: Beeldbeschikbaarheid or BBS), version 1.0.0-alpha.2](https://informatiestandaarden.nictiz.nl/wiki/Landingspagina_Beeldbeschikbaarheid). The information standard Image Availability as published by Nictiz does not yet include a patient use case, this may change in the future. Up until then, the patient use case will be published by MedMij.

This IG is a technical counterpart of the {{pagelink:FO, text: functional design}}. The FHIR version used for this IG is R4 (4.0.1).

## Actors involved
| Actors | | Systems | | FHIR CapabilityStatements |
| --- | --- | --- | --- | --- | --- |
| Name | Description | Name | Description | Name | Description |
| Patient | The user of a personal healthcare environment | PHR (Document Consumer) | Personal health record | [TO DO] | FHIR client requirements |
| Healthcare provider | The user of a XIS | XIS (Document Responder) | Healthcare information system | [TO DO] | FHIR server requirements |

**Table 1: Actors**

## Boundaries and relationships
This FHIR IG includes use cases for the exchange of Images and Reports between healthcare providers (e.g. hospitals) and patients (e.g. in a PHR setting).

This IG assumes that a PHR is able to connect with a XIS. It does not provide information on finding the right source system nor does it provide information about security. These infrastructure and interface specifications are described in the [MedMij Afsprakenstelsel](https://afsprakenstelsel.medmij.nl/).

## Relating FHIR (profiles) to its functional counterpart
The [BBS FHIR IG, section 5.3](https://informatiestandaarden.nictiz.nl/wiki/Bbs:V1_Alpha2_IG#MHD.2FWIA:_Mobile_access_to_Health_Documents_.2F_Web-based_Image_Access) describes the (intended) mapping between metadata, FHIR (DocumentReference) and the ART-DECOR dataset. In this FHIR IG, we incorporate the aforementioned functional mapping provided by Nictiz BBS. This mapping is not yet available in FHIR profiles.

## Use cases
The use cases in this IG are based as much as possible on the specifications described in the [BBS FHIR IG, section 5.3](https://informatiestandaarden.nictiz.nl/wiki/Bbs:V1_Alpha2_IG#MHD.2FWIA:_Mobile_access_to_Health_Documents_.2F_Web-based_Image_Access). In short: IHE [MHD](https://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD)) and [WIA](https://wiki.ihe.net/index.php/Web-based_Image_Access).

### Use case: Retrieve Image and Report in personal health environment
The Nictiz BBS FHIR IG splits the transactions in different use cases, for reasons of convenience. Seen from the perspective of a patient using a PHR, retrieval of images and reports from a healthcare provider is a related activity performed in one action. Therefore, this IG bundles the BBS use cases as one.

#### Query Timeline Data (MHD ITI-67)
> Based on [Use case 3: Query Timeline Data (Raadplegen Tijdlijn Data)](https://informatiestandaarden.nictiz.nl/wiki/Bbs:V1_Alpha2_IG#Use_case_3:_Query_Timeline_Data_.28Raadplegen_Tijdlijn_Data.29_3) in the Nictiz BBS FHIR IG, see [ITI-67](https://profiles.ihe.net/ITI/MHD/ITI-67.html) for further details.

The ITI-67 transaction is used to find available documents for a patient, based on a search on DocumentReference.

##### PHR: request message
The PHR (Document Consumer) executes an HTTP search against the DocumentReference endpoint of the XIS.

See [ITI-67 Request Message](https://profiles.ihe.net/ITI/MHD/ITI-67.html#236741-find-document-references-request-message) for further details.

##### XIS: response message
The XIS (Document Responder) returns an HTTP Status code appropriate to the processing as well as a Bundle of the matching DocumentReference resources.

See [ITI-67 Response Message](https://profiles.ihe.net/ITI/MHD/ITI-67.html#236742-find-document-references-response-message) for further details.

#### Retrieve Imaging Report (MHD ITI-68)
> Based on [Use case 4: Retrieve Imaging Report (Raadplegen Verslag)](https://informatiestandaarden.nictiz.nl/wiki/Bbs:V1_Alpha2_IG#Use_case_4:_Retrieve_Imaging_Report_.28Raadplegen_Verslag.29_3) in the Nictiz BBS FHIR IG, see [ITI-68](https://profiles.ihe.net/ITI/MHD/ITI-68.html) for further details.

##### PHR: request message
The PHR sends an HTTP GET request to the XIS server to retrieve the document content referenced by a DocumentReference in `DocumentReference.content.attachment.url`. The PHR SHALL provide an HTTP Accept header to indicate the preferred MIME type, such that the XIS can provide the document requested in an encoding other than the encoding indicated in the `DocumentReference.content.attachment.contentType`. The XIS SHALL support the Accept header *application/pdf*, irrespective of the value of `.contentType`. The PHR MAY supply an Accept header other than *application/pdf* or the MIME type indicated in `DocumentReference.content.attachment.contentType`, but the XIS MAY choose to ignore such a header.

See [ITI-68 Request Message](https://profiles.ihe.net/ITI/MHD/ITI-68.html#236841-retrieve-document-request-message) for further details.

##### XIS: response message
The XIS returns an HTTP Status code appropriate to the processing. When the requested imaging report is returned, the XIS SHALL respond with HTTP Status Code 200, and the imaging report SHOULD use a correct content type based on the Accept header supplied in the request by the PHR. This MAY include CDA, PDF, DICOM Basic Text Structured Report (SR), or other structured or unstructured formats originating from an EHR.

If the XIS is unable to format the document in a content type listed in the Accept header, it SHALL respond with HTTP Status Code 406.

See [ITI-68 Response Message](https://profiles.ihe.net/ITI/MHD/ITI-68.html#236842-retrieve-document-response-message) for further details.

#### Retrieve Images (MHD ITI-68)
> Based on [Use case 5: Retrieve Images (Raadplegen Beeld)](https://informatiestandaarden.nictiz.nl/wiki/Bbs:V1_Alpha2_IG#Use_case_5:_Retrieve_Images_.28Raadplegen_Beeld.29_3) in the Nictiz BBS FHIR IG, see [ITI-68](https://profiles.ihe.net/ITI/MHD/ITI-68.html) for further details.

##### PHR: request message
The PHR sends an HTTP GET request to the XIS server to retrieve the document content referenced by a DocumentReference in `DocumentReference.content.attachment.url`. The PHR SHALL provide an HTTP Accept header to indicate the preferred MIME type, such that the XIS can provide the document requested in an encoding other than the encoding indicated in the `DocumentReference.content.attachment.contentType`. The table below indicates which Accept headers SHALL be supported by the XIS relative to the `.contentType` present in the DocumentReference for which the PHR requests the content. In particular, the XIS has to support reformatting a DICOM KOS document (with `.contentType` equal to *application/dicom*) into the [DICOM JSON Model](https://dicom.nema.org/medical/dicom/current/output/chtml/part18/chapter_f.html) (with `.contentType` equal to *application/dicom+json*). The PHR MAY supply another Accept header, but this MAY NOT be supported by the XIS.  

| `.contentType` (ITI-67 Response) | Accept header (ITI-68 Request) |
| --- | --- |
| *application/dicom* | *application/dicom* |
| *application/dicom* | *application/dicom+json* |
| *application/dicom+json* | *application/dicom+json* |

**Table 3: Mapping between content type and supported Accept headers**

See [ITI-68 Request Message](https://profiles.ihe.net/ITI/MHD/ITI-68.html#236841-retrieve-document-request-message) for further details.

##### XIS: response message
The XIS returns an HTTP Status code appropriate to the processing. When the requested imaging study manifest is returned, the XIS SHALL respond with HTTP Status Code 200, and the imaging study manifest SHOULD use a correct content type based on the Accept header supplied in the request by the PHR. The imaging study manifest SHOULD contain references to the relevant images following the [WADO-RS format](https://www.dicomstandard.org/using/dicomweb/retrieve-wado-rs-and-wado-uri/).

If the XIS is unable to format the document in a content type listed in the Accept header, it SHALL respond with HTTP Status Code 406.

See [ITI-68 Response Message](https://profiles.ihe.net/ITI/MHD/ITI-68.html#236842-retrieve-document-response-message) for further details.