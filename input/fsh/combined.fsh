ValueSet: SeverityVS
Id: severity-vs
Title: "Condition Severity Valueset"
* $SCT#255604002 "Mild"
* $SCT#6736007 "Moderate"
* $SCT#24484000 "Severe"

Profile: MyCondition
Parent: Condition
Description: "My condition profile."
* clinicalStatus 1..1 MS
* onset[x] only dateTime
* subject only Reference(Patient)
* code = $SCT#55822004 "Hyperlipidaemia"
* severity from SeverityVS (required)
