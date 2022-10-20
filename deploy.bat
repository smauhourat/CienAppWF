dotnet publish -c release -r win10-x64 --self-contained true
copy Database1* bin\Release\netcoreapp3.1\win10-x64
copy survey.json bin\Release\netcoreapp3.1\win10-x64
copy question.json bin\Release\netcoreapp3.1\win10-x64
copy answer.json bin\Release\netcoreapp3.1\win10-x64
copy cienapp.bat bin\Release\netcoreapp3.1
