# Import AD Module
Import-Module ActiveDirectory

# Creating AD User with example name
New-ADUser `
    -Name "Ken Masters" `
    -GivenName "Ken" `
    -Surname "Masters" `
    -UserPrincipalName "Ken.Masters" `
    -AccountPassword (ConvertTo-SecureString "P@ss123!" -AsPlainText -Force) `
    -Path "OU=Domain Users,OU=LabUsers,DC=labdomain,DC=com" `
    -ChangePasswordAtLogon 1 `
    -Enabled 1
