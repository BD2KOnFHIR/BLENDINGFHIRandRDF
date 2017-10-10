# FHIR RDF as a Bridge to the Semantic Web in Healthcare
Supporting materials for presentation to Yosemite group  October 12, 2017.

## Files
### Classifiers
* [cancerreport.owl](cancerreport.owl) -- class definition for `DiagnosticReport` having a diagnosis of [346325008
|Malignant neoplastic disease|](http://snomed.info/id/346325008)
* [patientreport.owl](patientreport.owl) -- class definition for `DiagnosticReport` whose subject is a reference to a fhir:Patient
* [finalreport.owl](finalreport.owl) -- class definition for `DiagnsosticReport` whose status meets a local definition of "finalized"
* [fullreport.owl](fullreport.owl) -- class definition for a finalized `DiagnosticReport` on a patient with a cancer diagnosis
* [thyroidreport.owl](thyroidreport.owl) -- class definition for `DiagnosticReport` having a diagnosis of [14304000 | Disorder of thyroid gland (disorder](http://snomed.info/id/14304000)

### Data
* [diagnosticreport-example-f201-brainct.ttl](diagnosticreport-example-f201-brainct.ttl)
* [diagnosticreport-example-thyroidtumor.ttl](diagnosticreport-example-thyroidtumor.ttl)
* [imagingstudy-example-xr.ttl](imagingstudy-example-xr.ttl)
* [imagingstudy-example-xr-mod.ttl](imagingstudy-example-xr_mod.ttl) -- Imaging study w/ sample laterailty transformation

### Ontologies and the like
* [codesystem-diagnostic-report-status.owl](codesystem-diagnostic-report-status.owl) -- proposed OWL representation of the `DiagnosticReport.status` code system
* [fhir.ttl](fhir.ttl) -- FHIR Metadata vocabulary with offending `xsd:date`, `xsd:time`, `xsd:base64Binary` and `fhir:xhtml` data types changed to `xsd:dateTime` and `xsd:string`
* [w5.ttl](w5.ttl) -- local copy of the FHIR 5 W's ontology
* [snomed_cancer_subset.ttl](snomed_cancer_subset.ttl) -- an OWL representation of the transitive closure and neighborhood of concepts:
  * [18834000 |Malignant tumor if craniopharyngeal duct (disorder)|](http://snomed.info/id/188340000)
  * [394914008 |Radiology - speciality (qualifier value)](http://snomed.info/id/394914008)
  * [429858000|Computed tomography of head and neck (procedure)|](http://snomed.info/id/429858000)
     
     see [SNOMED_CT directory](SNOMED_CT) for description of how this was generated
* [snomed_thyroid_subset.ttl](snomed_thyroid_subset.ttl) -- An OWL representation of the transitive closure of:
    * [394914008 | Radiology - specialty (qualifier value)](http://snomed.info/id/394914008)
    * [429858000 | Computed tomography of head and neck (procedure)](http://snomed.info/id/429858000)
    * [363346000 | Malignant neoplastic disease (disorder)](http://snomed.info/id/363346000)
    * [363698007 | Finding site (attribute)](http://snomed.info/id/363698007)
    * [170784008 | Entire left lobe of thyroid gland (body structure)](http://snomed.info/id/170784008)
    * [14304000 | Disorder of thyroid gland (disorder](http://snomed.info/id/14304000)
    
    see [SNOMED_CT directory](SNOMED_CT) for description of how this was generated

### Support
* [catalog-v001.xml](catalog-v001.xml) -- XML catalog used by Protégé.  This causes all references to be resolved locally
* [catalog-v001.backup.xml](catalog-v001.backup.xml) -- Backup copy of XML catalog as Protégé tends to scribble on these things if you so much
as look at it crosseyed
* README.md -- this file

## Use
1. Install a current version of [Protégé](https://protege.stanford.edu) (we use 5.1.0)
2. Clone a copy of the [BLENDINGFHIRandRDF](https://github.com/BD2KOnFHIR/BLENDINGFHIRandRDF) repository
3. Change to the yosemite_talk directory
3. Start Protégé and open [fullreport.owl](fullreport.owl)
4. Select the FaCT++ reasoner under the `Reasoner` menu
5. Select `Start Reasoner` under the `Reasoner` menu
6. Navigate to `FinalPatientReportWithCancerDiagnosis` in the `Class Hierarchy` tab and observe that `f201` (the id of the DiagnosticReport) has been recognized as an instance.
![Class Hierarchy Tab](images/img1.png)
7. Open [thyroidreport.owl](thyroidreport.owl), answering "no" to the current window prompt.
8. Select `Start Reasoner` under the `Reasoner` menu.
9. Navigate to `ReportOfThyroidDisease` in the `Class Hierarchy` tab and observe that `dxreport117` has been classified
as an instance of thyroid disease.
![Class Hierarchy Tab](images/img2.png)