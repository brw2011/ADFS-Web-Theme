Set-AdfsGlobalWebContent –CompanyName “Weill Cornell Medicine"
Set-AdfsGlobalWebContent -SignInPageDescriptionText "<p>Having trouble logging in? Remember to use your WCM email address ‘CWID@wcmtest.org' to log in. If you are still experiencing issues, please contact the ITS Service Desk for assistance.</br></br>This service and the services to which it provides access are for authorized use only. Any attempt to gain unauthorized access, or exceed authorized access, to online resources will be pursued, as applicable, under University codes and state or federal law.</br></br><strong><u>Contact us:</u></strong></br><strong>Email:</strong> <a href='mailto:support@med.cornell.edu'>support@med.cornell.edu</a></br><strong>Phone:</strong> 212-746-4878 (M-F 7am - 7pm)</br> <strong>In Person:</strong> SMARTDesk in the Library Commons at 1300 York Ave.</br>(M-F 9 am - 6 pm, Sat 10 am - 6 pm, Sun 12 pm - 8 pm)</br><strong>Online: </strong><a href='http://myhelpdesk.med.cornell.edu'>myhelpdesk.med.cornell.edu</a></p>"
New-AdfsWebTheme –Name wcm –SourceName default
Set-AdfsWebTheme -TargetName wcm -Logo @{path=".\logo\logo.png"}
Set-AdfsWebTheme -TargetName wcm -Illustration @{path=".\illustration\illustration.jpg"}
Set-AdfsWebTheme -TargetName wcm -StyleSheet @{locale="";path=".\css\style.css"}
Set-AdfsWebConfig -ActiveThemeName wcm
Set-AdfsWebTheme -TargetName wcm -AdditionalFileResource @{Uri=’/adfs/portal/script/onload.js’;path=".\script\onload.js"}
Set-AdfsWebConfig -ActiveThemeName wcm