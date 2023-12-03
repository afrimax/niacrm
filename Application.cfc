/**
*NiaCRM
*Built on Lucee's Coldfusion using Framework 1
*
* Copyright 2023 Nia Interactive
* niainteractive.com
* ---
*/

<cfcomponent output="false" extends=framework.one> 

<!--- Application --->
<cfset this.name = "NiaCRM" />
<cfset this.applicationTimeout = CreateTimeSpan(0,4,0,0) /> 

<!--- DSN --->
<cfset this.datasource = "niacrm_001">
    
<!--- Session --->
<cfset this.sessionManagement = "true">
<cfset this.sessionTimeout = CreateTimeSpan(0,0,30,0)>
<cfset this.setClientCookies = "true">

    <!--- Mappings and Paths --->
<cfset this.appBasePath = getDirectoryFromPath(getCurrentTemplatePath())>
<cfset this.mappings["/components"] = this.appBasePath & "components">
<cfset this.mappings["/frameworks"] = this.appBasePath & "frameworks">
<cfset this.mappings["/theme"] = this.appBasePath & "themes/Flattern">

<cfset themePath = '#GetContextRoot()#/niacms/themes/Flattern' />     
<cfset queryPath = '#GetContextRoot()#/niacms/models' />   
    <cfset this.customTagPath = expandPath('/niacrm/customtags') />
    
</cfcomponent>



