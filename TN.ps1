#Rename admin and guest acct
if (Get-LocalUser -Name "Administrator")
  {
  Rename-LocalUser Administrator Batman
  }
if (Get-LocalUser -Name "Guest")
  {
  Rename-LocalUser Guest Robin
  }

#Audit policies
auditpol /restore /file:.\audit.csv

#Security policies
secedit /import /cfg:.\GptTmpl.inf
