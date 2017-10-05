#!/usr/bin/env bash
# Extract the neighborhood of the concepts used in the diagnostic report
if [ $# -ne 1 ]
    then
       echo "Usage: $0 <location of SNOMED CT Distribution>"
       echo "   Example: gen_subset.sh /home/user/downloads/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z"
       exit 1
fi

RF2Filter -i -a -d $1/Snapshot/ . 188340000 394914008 429858000

# Convert the resulting subset into OWL
SNOMEDToOWL -o ../snomed_subset.ttl -f ttl . conf.json
