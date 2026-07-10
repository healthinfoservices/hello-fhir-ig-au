# MyCondition - Template FHIR Implementation Guide in Australian Context v0.1.0

## Resource Profile: MyCondition 

 
My condition profile. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hello.fhir.ig.au|current/StructureDefinition/StructureDefinition-MyCondition.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-MyCondition.csv), [Excel](../StructureDefinition-MyCondition.xlsx), [Schematron](../StructureDefinition-MyCondition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MyCondition",
  "url" : "https://healthinfoservices.net/hello-fhir-ig-au/StructureDefinition/MyCondition",
  "version" : "0.1.0",
  "name" : "MyCondition",
  "status" : "draft",
  "date" : "2026-07-10T01:34:45+00:00",
  "publisher" : "HealthInfoServices",
  "contact" : [{
    "name" : "HealthInfoServices",
    "telecom" : [{
      "system" : "url",
      "value" : "https://healthinfoservices.net"
    }]
  },
  {
    "name" : "Support",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.healthinfoservices.net"
    }]
  }],
  "description" : "My condition profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AUS",
      "display" : "Australia"
    }]
  }],
  "copyright" : "Daniel Foulkes (HealthInfoServices)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "min" : 1
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://healthinfoservices.net/hello-fhir-ig-au/ValueSet/severity-vs"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "55822004",
          "display" : "Hyperlipidaemia"
        }]
      }
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "type" : [{
        "extension" : [{
          "extension" : [{
            "url" : "code",
            "valueCode" : "SHALL:populate-if-known"
          },
          {
            "url" : "actor",
            "valueCanonical" : "http://hl7.org.au/fhir/core/ActorDefinition/au-core-actor-responder"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source",
            "valueCanonical" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-condition|2.0.0"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
        },
        {
          "extension" : [{
            "url" : "code",
            "valueCode" : "SHOULD:populate"
          },
          {
            "url" : "actor",
            "valueCanonical" : "http://hl7.org.au/fhir/core/ActorDefinition/au-core-actor-responder"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source",
            "valueCanonical" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-condition|2.0.0"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
        },
        {
          "extension" : [{
            "url" : "code",
            "valueCode" : "SHALL:no-error"
          },
          {
            "url" : "actor",
            "valueCanonical" : "http://hl7.org.au/fhir/core/ActorDefinition/au-core-actor-requester"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source",
            "valueCanonical" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-condition|2.0.0"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }]
    }]
  }
}

```
