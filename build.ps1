Remove-Item –path ./client –recurse
& java -jar swagger-codegen-cli.jar generate -i https://api.cloudmersive.com/swagger/api/virus -l objc -o client -c packageconfig.json
(Get-Content ./client/CloudmersiveVirusApiClient.podspec).replace('CloudmersiveVirusApiClient/**/*.{m,h}', "client/CloudmersiveVirusApiClient/**/*.{m,h}") | Set-Content ./client/CloudmersiveVirusApiClient.podspec
(Get-Content ./client/CloudmersiveVirusApiClient.podspec).replace('CloudmersiveVirusApiClient/**/*.h', "client/CloudmersiveVirusApiClient/**/*.h") | Set-Content ./client/CloudmersiveVirusApiClient.podspec