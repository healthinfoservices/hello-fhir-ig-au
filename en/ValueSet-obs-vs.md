# Observation ValueSet - Template FHIR Implementation Guide in Australian Context v0.1.0

## ValueSet: Observation ValueSet 

 
Use all LOINC codes for observations 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "obs-vs",
  "url" : "https://healthinfoservices.net/hello-fhir-ig-au/ValueSet/obs-vs",
  "version" : "0.1.0",
  "name" : "ObsVS",
  "title" : "Observation ValueSet",
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
  "description" : "Use all LOINC codes for observations",
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
      "system" : "http://loinc.org"
    }]
  }
}

```
