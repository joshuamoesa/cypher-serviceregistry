//------------
//Create Nodes
//------------

//Applications

CREATE (app006:Application {name:'CPP'})
CREATE (app007:Application {name:'LIPP'})
CREATE (app008:Application {name:'MailInfo'})
CREATE (app013:Application {name:'SAP Hybris Billing'})

//TIBCO Components

CREATE (pes009:ProvidingEntityService {name:'esb-pes-cpp-observationbulkmail',creationdate:'2018-11-23',datamodel: 'CDM3',noun: 'ObservationBulkMail'})
CREATE (ces014:ConsumingEntityService {name:'esb-ces-mailinfo-observationbulkmail',creationdate:'2018-11-23',datamodel: 'CDM3',noun: 'ObservationBulkMail'})
CREATE (ces016:ConsumingEntityService {name:'esb-ces-saphybrisbilling-observationbulkmail',creationdate:'2018-11-23',datamodel: 'CDM3',noun: 'ObservationBulkMail'})
CREATE (ces017:ConsumingEntityService {name:'esb-ces-lipp-observationbulkmail',creationdate:'2018-11-23',datamodel: 'CDM3',noun: 'ObservationBulkMail'})
