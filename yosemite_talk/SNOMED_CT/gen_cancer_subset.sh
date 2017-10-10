#!/usr/bin/env bash
# Extract the neighborhood of the concepts used in the diagnostic report
if [ $# -ne 1 ]
    then
       echo "Usage: $0 <location of SNOMED CT Distribution>"
       echo "   Example: gen_subset.sh /home/user/downloads/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z"
       exit 1
fi

# Concepts used in diagnosticreport-example-thyroidtumor.ttl
# 188340000 - Malignant tumor of craniopharyngeal duct (disorder)
# 394914008 - Radiology - specialty (qualifier value)
# 429858000 - Computed tomography of head and neck (procedure)

# Generate the subset
RF2Filter -i -a -d $1/Snapshot/ . 188340000 394914008 429858000 

# Convert the resulting subset into OWL
SNOMEDToOWL -o ../snomed_cancer_subset.ttl -f ttl . conf.json

# Change the URI to show it is a subset
sed -i.bak -e 's/sctm:900000000000207008 /sctm:900000000000207008cancer_subset /' -e '/owl:versionIRI/ d'  ../snomed_cancer_subset.ttl
rm ../snomed_cancer_subset.ttl.bak
