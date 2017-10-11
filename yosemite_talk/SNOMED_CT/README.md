# SNOMED CT subset generation
## Use
1. Download and unzip a current version of the SNOMED CT RF2 distribution.  For US citizens, the download can be found at the [National Library of Medicine download site](https://www.nlm.nih.gov/healthit/snomedct/index.html).
2. Install the [SNOMED CT to OWL utility package](https://github.com/hsolbrig/SNOMEDToOWL)
3. Run the [gen_cancer_subset.sh](gen_cancer_subset.sh) script.
  ```bash
(venv) > ./gen_cancer_subset.sh <path>SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z
Build transitive closure list
Processing <path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/Terminology/sct2_Relationship_Snapshot_INT_20170731.txt
Filtering files
Processing <path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/Terminology/sct2_Relationship_Snapshot_INT_20170731.txt
Processing <path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/Terminology/sct2_StatedRelationship_Snapshot_INT_20170731.txt
Iteration 1: 323 new concepts
Processing <path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/Terminology/sct2_Relationship_Snapshot_INT_20170731.txt

      ...
      
Processing <path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/Refset/Language/der2_cRefset_LanguageSnapshot-en_INT_20170731.txt
Creating transitive relationships
Processing RF2 files
Processing der2_cRefset_LanguageSnapshot-en_INT_20170731.txt
Processing sct2_Concept_Snapshot_INT_20170731.txt
Processing sct2_Description_Snapshot-en_INT_20170731.txt
Processing sct2_Relationship_Snapshot_INT_20170731.txt
Processing sct2_TextDefinition_Snapshot-en_INT_20170731.txt
Generating OWL concepts
Generating OWL properties
Adding localized descriptions
Writing ../snomed_cancer_subset.ttl
Summary:
    Concepts: 860
    Definitions: 0
    Equivalentclass: 346
    Labels: 860
    Prefnames: 88
    Propchains: 1
    Properties: 97
    Rolegreoups: 32
    Subclassof: 571
    Synonyms: 4
    Ungrouped: 0
  (venv) >
  ```
  4. Repeat step 3 for the [gen_thyroid_subset.sh](gen_thyroid_subset.sh) script.
   ```bash
   (venv) > ./gen_thyroid_subset.sh<path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z
Build transitive closure list
Processing<path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/Terminology/sct2_Relationship_Snapshot_INT_20170731.txt
Filtering files
Processing<path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/Terminology/sct2_Relationship_Snapshot_INT_20170731.txt
Processing<path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/Terminology/sct2_StatedRelationship_Snapshot_INT_20170731.txt
Iteration 1: 5955 new concepts
    ...
    Processing <path>/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/Refset/Language/der2_cRefset_LanguageSnapshot-en_INT_20170731.txt
Creating transitive relationships
Processing RF2 files
Processing der2_cRefset_LanguageSnapshot-en_INT_20170731.txt
Processing sct2_Concept_Snapshot_INT_20170731.txt
Processing sct2_Description_Snapshot-en_INT_20170731.txt
Processing sct2_Relationship_Snapshot_INT_20170731.txt
Processing sct2_TextDefinition_Snapshot-en_INT_20170731.txt
Generating OWL concepts
Generating OWL properties
Adding localized descriptions
Writing ../snomed_thyroid_subset.ttl
Summary:
    Concepts: 11252
    Definitions: 0
    Equivalentclass: 5706
    Labels: 11252
    Prefnames: 90
    Propchains: 1
    Properties: 97
    Rolegreoups: 2214
    Subclassof: 8498
    Synonyms: 9
    Ungrouped: 212
    (venv) >
    ```