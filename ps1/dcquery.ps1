$domainObj = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()

$PDC = ($domainObj.PdcRoleOwner).Name

$SearchString = "LDAP://"

$SearchString += $PDC + "/"

$DistinguishedName = "DC=$($domainObj.Name.Replace('.', ',DC='))"

$SearchString += $DistinguishedName

$Searcher = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$SearchString)

$objDomain = New-Object System.DirectoryServices.DirectoryEntry($SearchString)

$Searcher.SearchRoot = $objDomain

#$Searcher.filter="samAccountType=805306368"
#$Searcher.filter="memberof=CN=Domain Admins,CN=Users,DC=corp,DC=com"
#$Searcher.filter="objectCategory=CN=Computer,CN=Schema,CN=Configuration,DC=corp,DC=com"
#$Searcher.filter="operatingsystem=Windows 10 Pro"

$Searcher.filter="objectClass=Group"
$Result = $Searcher.FindAll()

#Itterate over users and computers
Foreach($obj in $Result)
{
    Foreach($prop in $obj.Properties)
    {
       $prop
    }
    Write-Host "----------------------------------------------------------------"
}

