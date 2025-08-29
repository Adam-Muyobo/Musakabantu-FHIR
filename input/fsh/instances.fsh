//==============================
// JIT Patient Logical Model
//==============================
Instance: JITPatientLogicalModel
InstanceOf: StructureDefinition
Usage: #definition
Title: "JIT Patient Logical Model"
Description: "Requirements to register a JIT Medical patient."

* experimental = true
* status = #active
* name = "JITPatientLogicalModel"
* url = "http://md.jitmedical.org/fhir/StructureDefinition/JITPatientLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "http://md.jitmedical.org/fhir/StructureDefinition/JITPatientLogicalModel"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Base"
* derivation = #specialization
* fhirVersion = #4.0.1

* mapping[+].identity = "FHIR-R4"
* mapping[=].name = "FHIR Release 4"

* differential.element[+].id = "JITPatientLogicalModel"
* differential.element[=].path = "JITPatientLogicalModel"
* differential.element[=].definition = "A sample data dictionary describing the JIT Medical patient registration structure."
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient"

* differential.element[+].id = "JITPatientLogicalModel.identifier"
* differential.element[=].path = "JITPatientLogicalModel.identifier"
* differential.element[=].short = "Patient Identifier"
* differential.element[=].definition = "A unique ID assigned to the patient."
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.identifier"

* differential.element[+].id = "JITPatientLogicalModel.name"
* differential.element[=].path = "JITPatientLogicalModel.name"
* differential.element[=].short = "Full Name"
* differential.element[=].definition = "Patient's full name."
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.name.text"

* differential.element[+].id = "JITPatientLogicalModel.gender"
* differential.element[=].path = "JITPatientLogicalModel.gender"
* differential.element[=].short = "Gender"
* differential.element[=].definition = "Administrative gender of the patient."
* differential.element[=].type.code = #code
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].binding.strength = #required
* differential.element[=].binding.valueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.gender"

* differential.element[+].id = "JITPatientLogicalModel.birthDate"
* differential.element[=].path = "JITPatientLogicalModel.birthDate"
* differential.element[=].short = "Date of Birth"
* differential.element[=].definition = "The date of birth of the patient."
* differential.element[=].type.code = #date
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.birthDate"
