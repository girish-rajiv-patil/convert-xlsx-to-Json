# Name		: Girish Patil
# Date		: 13/06/2018
# Program	: xlsx to json
# Description   : Create json to take xlsx input data and make json with key and values


!/bin/sh

  echo "Json file created question.json"
  `convert-excel-to-json --config='{"sourceFile": "flags00.xlsx", "sheets":"['Sheet1']", "outputJSON": true}' >> Flags00.json`

   sed -i -e 's/"A"/"COUNTRYCODE"/g' Flags00.json
   sed -i -e 's/"B"/"COUNTRYNAME"/g' Flags00.json
   sed -i -e 's/"Sheet1"/"QUESTION_SET"/g' Flags00.json
   sed -i '789,890 d' Flags00.json


