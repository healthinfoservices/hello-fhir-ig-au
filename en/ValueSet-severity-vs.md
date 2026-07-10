# Condition Severity Valueset - Template FHIR Implementation Guide in Australian Context v0.1.0

## ValueSet: Condition Severity Valueset 

 **References** 

* [MyCondition](StructureDefinition-MyCondition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "severity-vs",
  "url" : "https://healthinfoservices.net/hello-fhir-ig-au/ValueSet/severity-vs",
  "version" : "0.1.0",
  "name" : "SeverityVS",
  "title" : "Condition Severity Valueset",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AUS",
      "display" : "Australia"
    }]
  }],
  "copyright" : "Daniel Foulkes (HealthInfoServices)",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "255604002",
        "display" : "Mild"
      },
      {
        "code" : "6736007",
        "display" : "Moderate"
      },
      {
        "code" : "24484000",
        "display" : "Severe"
      }]
    }]
  }
}

```
