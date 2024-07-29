# Import AD Module
Import-Module ActiveDirectory

# Query User
$firstname = Read-Host -Prompt "Enter first name"
$lastname = Read-Host -Prompt "Enter last name"

# Creating AD User
New-ADUser `
    -Name "$firstname.$lastname" `
    -GivenName $firstname `
    -Surname $lastname `
    -UserPrincipalName "$firstname.$lastname" `
    -AccountPassword (ConvertTo-SecureString "P@ss123!" -AsPlainText -Force) `
    -Path "OU=Domain Users,OU=LabUsers,DC=labdomain,DC=com" `
    -ChangePasswordAtLogon 1 `
    -Enabled 1
