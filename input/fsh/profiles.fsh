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
* endpoint 0..*

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

//==============================
// Inventory (Location profile)
//==============================
Profile: Inventory
Parent: Location
Id: inventory
Title: "Inventory Location"
Description: "Represents a stock-holding location (e.g., pharmacy, storeroom, warehouse) that belongs to an organization."
* status 1..1
* name 1..1
* managingOrganization 1..1
* type 1..1
* type from InventoryLocationTypeVS (required)

//==============================
// StockReport (Observation)
//==============================
Profile: StockReport
Parent: Observation
Id: stock-report
Title: "Stock Report"
Description: "Represents the stock level of a specific medication at a healthcare location."
* status 1..1
* code 1..1
* subject 1..1
* subject only Reference(Location)
* effectiveDateTime 1..1
* valueQuantity 1..1
* valueQuantity.unit = "pack(s)"
* valueQuantity.system = "http://unitsofmeasure.org"
* focus 1..1
* focus only Reference(Medication)

//==============================
// JITAlertSubscription
//==============================
Profile: JITAlertSubscription
Parent: Subscription
Id: jitalert-subscription
Title: "JIT Alert Subscription"
Description: "A standing request to get notified when a stock changes for a medication."
* criteria 1..1
* channel.type 1..1
* channel.endpoint 1..1
* channel.payload 0..1
* status 1..1

//==============================
// AlertMessage
//==============================
Profile: AlertMessage
Parent: Communication
Id: alert-message
Title: "Alert Message"
Description: "Captures the actual stock-out alert sent to JIT."
* subject 1..1 
* subject only Reference(Patient)
* sender 1..1 
* sender only Reference(Organization)
* recipient 1..* 
* recipient only Reference(Organization)
* payload 1..*
* sent 1..1

//==============================
// AuditTrail
//==============================
Profile: AuditTrail
Parent: AuditEvent
Id: audit-trail
Title: "Audit Trail"
Description: "Tracks all stock queries and alerts for non-repudiation."
* type 1..1
* agent 1..1
* entity 1..*
* recorded 1..1

//==============================
// JIT Patient
//==============================
Profile: JITPatient
Parent: Patient
Id: jit-patient
Title: "JIT Patient"
Description: "A patient at JIT Medical"
* maritalStatus from VSMaritalStatus (extensible)
* extension contains MyMaritalStatusExtension  named MaritalStatus 1..