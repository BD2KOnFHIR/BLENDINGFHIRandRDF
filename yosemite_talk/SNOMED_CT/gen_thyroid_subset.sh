#!/usr/bin/env bash
# Extract the neighborhood of the concepts used in the diagnostic report
if [ $# -ne 1 ]
    then
       echo "Usage: $0 <location of SNOMED CT Distribution>"
       echo "   Example: gen_subset.sh /home/user/downloads/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z"
       exit 1
fi

# Concepts used in diagnosticreport-example-thyroidtumor.ttl
# 394914008 - Radiology - specialty (qualifier value) 
# 429858000 - Computed tomography of head and neck (procedure) 
# 363346000 - Malignant neoplastic disease (disorder)
# 363698007 - Finding site (attribute)
# 170784008 - Entire left lobe of thyroid gland (body structure)
#
# Concepts used in thyroidreport.owl
# 14304000 - Disorder of thyroid gland (disorder)

RF2Filter -i -a -d $1/Snapshot/ . 394914008 429858000 363346000 363698007 170784008 14304000

# Convert the resulting subset into OWL
SNOMEDToOWL -o ../snomed_thyroid_subset.ttl -f ttl . conf.json

# Change the URI to show it is a subset
sed -i.bak -e 's/sctm:900000000000207008 /sctm:900000000000207008thyroid_subset /' -e '/owl:versionIRI/ d'  ../snomed_thyroid_subset.ttl
rm ../snomed_thyroid_subset.ttl.bak
