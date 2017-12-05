FROM microsoft/aspnetcore:latest

ARG source

EXPOSE 80

WORKDIR /app

COPY ${source:-obj/Docker/Publish} .

ENTRYPOINT ["dotnet", "ContosoUniversity.dll"]