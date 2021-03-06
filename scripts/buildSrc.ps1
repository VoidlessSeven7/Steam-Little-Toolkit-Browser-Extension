# Remove last build
Remove-Item –path "publishing\Mozilla\Mozilla_Source\*" -Filter * -Force -Confirm:$False

# Copy everything
Copy-Item "src" -Destination "publishing\Mozilla\Mozilla_Source\src" -Recurse
Copy-Item "package.json" -Destination "publishing\Mozilla\Mozilla_Source"
Copy-Item "gulpfile.js" -Destination "publishing\Mozilla\Mozilla_Source"
Copy-Item "publishing\Readme_Mozilla.txt" -Destination "publishing\Mozilla\Mozilla_Source"

# Compress
Compress-Archive -Path "publishing\Mozilla\Mozilla_Source" -DestinationPath "publishing\Mozilla\Mozilla_Source\Mozilla_Source.zip"

# Move compressed file
Copy-Item "publishing\Mozilla\Mozilla_Source\Mozilla_Source.zip" -Destination "publishing\Mozilla\Mozilla_Source.zip" -Recurse

# And delete unnecesary files
Remove-Item –path "publishing\Mozilla\Mozilla_Source" -Filter * -Force -Confirm:$False