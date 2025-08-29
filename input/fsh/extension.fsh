Extension: MyMaritalStatusExtension
Id: marital-status
Title: "Marital Status Extension"
Description: "An extension to capture marital status"
* ^experimental = true
* ^status = #active

* value[x] only CodeableConcept
* valueCodeableConcept from VSMaritalStatus (extensible)
* valueCodeableConcept 1..
* ^context[+].type = #element
* ^context[=].expression = "Patient"