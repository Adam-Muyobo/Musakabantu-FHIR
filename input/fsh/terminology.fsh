//==============================
// Local CodeSystem for Inventory types
//==============================
CodeSystem: InventoryLocationTypeCS
Id: inventory-location-type-cs
Title: "Inventory Location Type CodeSystem"
Description: "Codes for inventory location types (pharmacy, storeroom, warehouse)."
* #pharmacy "Pharmacy" "A pharmacy location"
* #storeroom "Storeroom" "A storeroom location"
* #warehouse "Warehouse" "A warehouse location"

//==============================
// ValueSet that references the CodeSystem
//==============================
ValueSet: InventoryLocationTypeVS
Id: inventory-location-type-vs
Title: "Inventory Location Type ValueSet"
Description: "Types of inventory locations such as pharmacy, storeroom, or warehouse."
* include codes from system http://example.org/fhir/CodeSystem/inventory-location-type-cs

// The others

CodeSystem: CSMaritalStatus
Id: cs-marital-status
Title: "Marital Status"
Description: "A list of codes for marital status."

* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* #Other "Other"

ValueSet: VSMaritalStatus
Id: vs-marital-status
Title: "Marital Status"
Description: "A list of codes for marital status."
* ^experimental = true
* ^status = #active
* $SCT#315124004
* include codes from system CSMaritalStatus