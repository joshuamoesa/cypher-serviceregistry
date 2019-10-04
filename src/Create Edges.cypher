//------------
//Create Edges
//------------

MATCH (a:Application), (b:ProvidingEntityService)   
WHERE a.name = "CPP" AND b.name = "esb-pes-cpp-observationbulkmail"   
CREATE (a)-[r:MSG_OBSERVATIONBULKMAIL { name: a.name + '<->' + b.name,creationdate:'2018-11-23',datamodel: 'CDM3',noun:'ObservationBulkMail',verbs: 'Process'}]->(b)

WITH count(*) as dummy

MATCH (a:ProvidingEntityService), (b:ConsumingEntityService)   
WHERE a.name = "esb-pes-cpp-observationbulkmail" AND b.name = "esb-ces-mailinfo-observationbulkmail"   
CREATE (a)-[r:MSG_OBSERVATIONBULKMAIL { name: a.name + '<->' + b.name,creationdate:'2018-11-23',datamodel: 'CDM3',noun:'ObservationBulkMail',verbs: 'Process' }]->(b)

WITH count(*) as dummy

MATCH (a:ConsumingEntityService), (b:Application)
WHERE a.name = "esb-ces-mailinfo-observationbulkmail" AND b.name = "MailInfo"
CREATE (a)-[r:MSG_OBSERVATIONBULKMAIL { name: a.name + '<->' + b.name,creationdate:'2018-11-23',datamodel: 'CDM3',noun:'ObservationBulkMail',verbs: 'Process' }]->(b)

WITH count(*) as dummy

MATCH (a:ProvidingEntityService), (b:ConsumingEntityService)   
WHERE a.name = "esb-pes-cpp-observationbulkmail" AND b.name = "esb-ces-saphybrisbilling-observationbulkmail"   
CREATE (a)-[r:MSG_OBSERVATIONBULKMAIL { name: a.name + '<->' + b.name,creationdate:'2018-11-23',datamodel: 'CDM3',noun:'ObservationBulkMail',verbs: 'Process' }]->(b)

WITH count(*) as dummy

MATCH (a:ConsumingEntityService), (b:Application)
WHERE a.name = "esb-ces-saphybrisbilling-observationbulkmail" AND b.name = "SAP Hybris Billing"
CREATE (a)-[r:MSG_OBSERVATIONBULKMAIL { name: a.name + '<->' + b.name,creationdate:'2018-11-23',datamodel: 'CDM3',noun:'ObservationBulkMail',verbs: 'Process' }]->(b)

WITH count(*) as dummy

MATCH (a:ProvidingEntityService), (b:ConsumingEntityService)   
WHERE a.name = "esb-pes-cpp-observationbulkmail" AND b.name = "esb-ces-lipp-observationbulkmail"   
CREATE (a)-[r:MSG_OBSERVATIONBULKMAIL { name: a.name + '<->' + b.name,creationdate:'2018-11-23',datamodel: 'CDM3',noun:'ObservationBulkMail',verbs: 'Process' }]->(b)

WITH count(*) as dummy

MATCH (a:ConsumingEntityService), (b:Application)
WHERE a.name = "esb-ces-lipp-observationbulkmail" AND b.name = "LIPP"
CREATE (a)-[r:MSG_OBSERVATIONBULKMAIL { name: a.name + '<->' + b.name,creationdate:'2018-11-23',datamodel: 'CDM3',noun:'ObservationBulkMail',verbs: 'Process' }]->(b)