//==============================
// CompiledMedication
//==============================
Profile: CompiledMedication
Parent: Medication
Id: compiled-medication
Title: "Compiled Medication"
Description: "Defines the prescribed drug."
* code 1..1
* identifier 0..*

//==============================
// CompiledOrganization
//==============================
Profile: CompiledOrganization
Parent: Organization
Id: compiled-organization
Title: "Compiled Organization"
Description: "One of the compiled organizations (medical centers or pharmacies)."
* identifier 1..1
* name 1..1
* address 0..1

//==============================
// JITMedicationRequest
//==============================
Profile: JITMedicationRequest
Parent: MedicationRequest
Id: jit-medication-request
Title: "JIT Medication Request"
Description: "Records prescriptions issued by JIT."
* medicationReference 1..1 
* medicationReference only Reference(Medication)
* subject 1..1 
* subject only Reference(Patient)
* authoredOn 1..1
* performer 0..1 
* performer only Reference(Organization)
* status 1..1