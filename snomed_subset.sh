RF2Filter -i -a -d SnomedCT_InternationalRF2_Production_20170131T120000/Snapshot snomed_subset 363346000 40238009 385055001
SNOMEDToOWL snomed_subset snomed_subset.json -o snomed_subset.ttl
