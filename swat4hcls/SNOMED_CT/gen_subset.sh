# Extract the neighborhood of the concepts used in the diagnostic report
RF2Filter -i -a -d /Users/mrf7578/data/terminology/SNOMEDCT/SnomedCT_InternationalRF2_PRODUCTION_20170731T150000Z/Snapshot/ . 188340000 394914008 429858000

# Convert the resulting subset into OWL
SNOMEDToOWL -o ../snomed_subset.ttl -f ttl . conf.json
