$l = "http://www.google.com"
$ie = New-Object -ComObject InternetExplorer.Application
clear
$ie.Visible =$true
$ie.Navigate($l)

while($ie.Busy -eq $true){
Start-Sleep -Seconds 1
}

#$ie.Document | gm
$inp = $ie.Document.IHTMLDocument3_getElementsByTagName("input") | ? {$_.ClassName -eq "gLFyf gsfi"}
#$inp | gm

$inp.value ="car"
#$ie.Document.IHTMLDocument3_getElementsByTagName("input") 
Start-Sleep -Seconds 3
$butn = $ie.Document.IHTMLDocument3_getElementsByTagName("input") | ? {$_.ClassName -eq "gNO89b"}
Start-Sleep -Seconds 3
#$butn | gm
$butn.Click()