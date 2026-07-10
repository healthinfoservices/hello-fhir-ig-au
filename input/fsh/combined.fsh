Alias: $SCT = http://snomed.info/sct
Alias: $AUCoreCondition = http://hl7.org.au/fhir/core/StructureDefinition/au-core-condition
Alias: $AUCorePatient = http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient

ValueSet: SeverityVS
Id: severity-vs
Title: "Condition Severity Valueset"
* $SCT#255604002 "Mild"
* $SCT#6736007 "Moderate"
* $SCT#24484000 "Severe"

Profile: MyCondition
Parent: $AUCoreCondition
Description: "My condition profile."
* clinicalStatus 1..1 MS
* onset[x] only dateTime
* subject only Reference($AUCorePatient)
* code = $SCT#55822004 "Hyperlipidaemia"
* severity from SeverityVS (required)
