#!/bin/bash
generateEncounterEtl() {
  local pathToScripts=$1
  local mysqlUser=$2
  local mysqlPassword=$3
  local reportLife=$4
  local slackChannel=$5
  local slackToken=$6

  cd $pathToScripts

  now="$(date +'%d_%m_%Y')"
  file_name="facility_encounter_report_$now".csv
  report_folder="./etl"
  sourceFile="$report_folder/$file_name"
  destinationFile="etl/$file_name"

  mkdir -p $report_folder
  find $report_folder -mtime +$reportLife -exec rm {} \;
  /usr/bin/mysql -u $mysqlUser -p$mysqlPassword  /usr/bin/mysql -u etlgenerator -pPFmqHEN3NzDVEjYhFq4Yt  < ./facility_registration_report.sql
  /usr/bin/mysql -u $mysqlUser -p$mysqlPassword -e < ./facility_encounter_query.sql | sed  's/\t/,/g' > $sourceFile
  /usr/bin/aws s3 sync $report_folder s3://opensrp/reports/etl --acl public-read --delete
  if [ -z ${slackChannel+x} ]; then echo "Not sending URL to Slack"; else
    /usr/bin/curl -F username="PATH Zambia ETL" -F text="https://s3.amazonaws.com/opensrp/reports/$destinationFile" -F channel=$slackChannel -F token="$slackToken" https://slack.com/api/chat.postMessage;
  fi
}

generateEncounterEtl $1 $2 $3 $4 $5 $6
