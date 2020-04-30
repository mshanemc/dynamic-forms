sfdx force:org:create -f config/project-scratch-def.json -s -d 1 -w 60
sfdx force:source:push
sfdx force:user:permset:assign -n AppBuilder
sfdx force:org:open -p /lightning/o/Vehicle__c/list?filterName=Recent
sfdx automig:load -d data --concise