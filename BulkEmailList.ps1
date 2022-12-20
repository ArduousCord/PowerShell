$csv = Import-Csv C:\Users\Clint\Desktop\SendEmail.csv 
$Credential = Get-Credential
Foreach($Message in $csv){
$Recipient = $Message.EmailAddress
$FirstName = $Message.FirstName
$LastName = $Message.LastName
$UserName = $Message.UserName
$Password = $Message.Password
$Subject = "$FirstName $LastName - $UserName Credentials"
Write-Host "Sending email to $FirstName $LastName"
Write-Host "Email Address: $Recipient"
$mailBody = 
@"
Hello $FirstName,</br>
We have created a user account for your Institution the credentials are as follows:</br>
</br>
Full Name: $LastName, $FirstName</br>
UserName: $UserName</br>
Password: $Password</br>
</br>
Thank you for taking a course at our school,</br>
The Faculty
"@

Send-MailMessage -Body $mailBody -BodyAsHtml `
-From noreply@domain.com -To $Recipient `
-Subject $subject -Encoding $([System.Text.Encoding]::UTF8) `
-Credential $Credential -SmtpServer smtp.office365.com -UseSsl
}