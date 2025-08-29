//==============================
// JIT Patient Instance
//==============================
Instance: ExampleJITPatient
InstanceOf: JITPatient
Title: "Example JIT Patient"
Description: "An example instance of a patient conforming to the JITPatient profile"

* identifier[0].system = "http://hospital.smarthealth.org/patients"
* identifier[0].value = "PAT-001"

* name[0].use = #official
* name[0].family = "Mogapi"
* name[0].given[0] = "Thabo"

* gender = #male
* birthDate = "1992-11-23"

// Extension for marital status
* extension[MaritalStatus].url = "http://md.jitmedical.org/fhir/StructureDefinition/marital-status"
* extension[MaritalStatus].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
