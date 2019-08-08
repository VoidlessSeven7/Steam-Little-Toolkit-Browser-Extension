Remove-Item –path "publishing\Mozilla\Mozilla_Source\*" -Filter * -Force -Confirm:$False

Copy-Item "src" -Destination "publishing\Mozilla\Mozilla_Source\src" -Recurse
Copy-Item "package.json" -Destination "publishing\Mozilla\Mozilla_Source"
Copy-Item "gulpfile.js" -Destination "publishing\Mozilla\Mozilla_Source"
Copy-Item "publishing\Mozilla\Readme_Mozilla.txt" -Destination "publishing\Mozilla\Mozilla_Source"
Compress-Archive -Path "publishing\Mozilla\Mozilla_Source" -DestinationPath "publishing\Mozilla\Mozilla_Source\Mozilla_Source.zip"

Copy-Item "publishing\Mozilla\Mozilla_Source\Mozilla_Source.zip" -Destination "publishing\Mozilla\Mozilla_Source.zip" -Recurse

Remove-Item –path "publishing\Mozilla\Mozilla_Source\*" -Filter * -Force -Confirm:$False