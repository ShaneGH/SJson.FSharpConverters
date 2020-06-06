echo Param 1 is the version, Param 2 is the API key

call Deploy\Package.bat %1

call dotnet nuget push ^
     -s https://api.nuget.org/v3/index.json ^
    SJson.FSharpConverters\bin\Release\SJson.FSharpConverters.%1.nupkg ^
    -k %2