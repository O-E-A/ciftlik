<cfif isDefined('form.submitted') and len(form.submitted)>
    <cfif structKeyExists(form, "dosya") AND form.dosya neq "">
        
        <cffile 
        action="upload" 
        destination="C:\ColdFusion2021\cfusion\wwwroot\ciftlik\yukleme" 
        nameConflict="Overwrite"
        result="dosya"> 
        
        <cfif isDefined("dosya")>
            
            <cfset excelData = []>
            <cfspreadsheet action="read" src="C:\ColdFusion2021\cfusion\wwwroot\ciftlik\yukleme\yuklemekoyun.xlsx" query="excelData" headerrow="1">
            
            
            <cfloop query="excelData" startrow="2">
                
                <!-- Insert record into Hayvanlar table -->
                <cfquery name="insertAnimal" datasource="workCubeDSN">
                INSERT INTO Koyunlar (HayvanTuru, CinsAdi, HayvanAdi, YemMiktari, SutMiktari, MuayeneTarihi) 
                VALUES (
                    <cfqueryparam value="#excelData.HayvanTuru#" cfsqltype="cf_sql_varchar">, 
                    <cfqueryparam value="#excelData.CinsAdi#" cfsqltype="cf_sql_varchar">, 
                    <cfqueryparam value="#excelData.HayvanAdi#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#excelData.YemMiktari#" cfsqltype="cf_sql_integer">,
                    <cfqueryparam value="#excelData.SutMiktari#" cfsqltype="cf_sql_integer">,
                    <cfqueryparam value="#excelData.MuayeneTarihi#" cfsqltype="cf_sql_date">
                    
                )
            </cfquery>

            </cfloop>

            
            <cflocation url="koyunlar.cfm" addtoken="false">

        </cfif>
    </cfif>
</cfif>