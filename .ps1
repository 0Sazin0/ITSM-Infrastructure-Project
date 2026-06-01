# Dynamically build the OU path based on the user's Department
$ouPath = "OU=$($user.Department),$domainPath"

# Check if the OU exists, if not, create it!
if (!(Get-ADOrganizationalUnit -Filter "Name -eq '$($user.Department)'" -SearchBase $domainPath -ErrorAction SilentlyContinue)) {
    Write-Host "Creating OU: $($user.Department)" -ForegroundColor Yellow
    New-ADOrganizationalUnit -Name $user.Department -Path $domainPath
}

# Generate User Principal Name (Email format) and SAM Account Name (UPDATED TO CROP)
$upn = "$($user.FirstName).$($user.LastName)@crop.local"
$sam = "$($user.FirstName)$($user.LastName)".Substring(0, [math]::Min("$($user.FirstName)$($user.LastName)".Length, 20))

# Create the User in Active Directory
Write-Host "Creating User: $($user.FirstName) $($user.LastName)" -ForegroundColor Green
New-ADUser -SamAccountName $sam `
    -UserPrincipalName $upn `
    -Name "$($user.FirstName) $($user.LastName)" `
    -GivenName $user.FirstName `
    -Surname $user.LastName `
    -Enabled $true `
    -DisplayName "$($user.LastName), $($user.FirstName)" `
    -Path $ouPath `
    -Title $user.JobTitle `
    -AccountPassword $defaultPassword

Write-Host "Automation Complete!" -ForegroundColor Cyan
