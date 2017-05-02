# path-zambia-etl
Customised OpenMRS ETL for Report Requirements for Path Zambia Project

### Concept Constants Dictionary:
- Location Concept ID:  `163531`
- Place of Birth Concept ID:  `16650`
- Date of Encounter Concept ID: `163138`
- Lives outside of catchment area Concept ID: `160636`

### Encounter Types Constants Dictionary
- Birth Registration encounter type ID `1`
- Growth Monitoring encounter type  ID: `2`
- Vaccination encounter type ID: `4`

### Patient Identifier's Constants Dictionary
- ZEIR ID: `17`
- M_ZEIR ID: `18`

### Person Attribute Type Constants Dictionary
-   Child Register Card Number ID: `20`

### Notes
- There is a high probability that the encounter date may be different from the vaccination date in the case where the vaccination date has time values. This has the potential of breaking the update vaccine data sql script
