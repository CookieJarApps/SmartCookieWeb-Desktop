!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "SmartCookieWeb" "Software\Clients\StartMenuInternet\SmartCookieWeb\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\SmartCookieWeb" "" "SmartCookieWeb HTML Document"
  WriteRegStr SHCTX "SOFTWARE\Classes\SmartCookieWeb\Application" "AppUserModelId" "SmartCookieWeb"
  WriteRegStr SHCTX "SOFTWARE\Classes\SmartCookieWeb\Application" "ApplicationIcon" "$INSTDIR\SmartCookieWeb.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\SmartCookieWeb\Application" "ApplicationName" "SmartCookieWeb"
  WriteRegStr SHCTX "SOFTWARE\Classes\SmartCookieWeb\Application" "ApplicationCompany" "SmartCookieWeb"      
  WriteRegStr SHCTX "SOFTWARE\Classes\SmartCookieWeb\Application" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"      
  WriteRegStr SHCTX "SOFTWARE\Classes\SmartCookieWeb\DefaultIcon" "DefaultIcon" "$INSTDIR\SmartCookieWeb.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\SmartCookieWeb\shell\open\command" "" '"$INSTDIR\SmartCookieWeb.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "SmartCookieWeb" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "SmartCookieWeb" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb" "" "SmartCookieWeb"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\DefaultIcon" "" "$INSTDIR\SmartCookieWeb.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\Capabilities" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\Capabilities" "ApplicationName" "SmartCookieWeb"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\Capabilities" "ApplicationIcon" "$INSTDIR\SmartCookieWeb.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\Capabilities\FileAssociations" ".htm" "SmartCookieWeb"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\Capabilities\FileAssociations" ".html" "SmartCookieWeb"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\Capabilities\URLAssociations" "http" "SmartCookieWeb"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\Capabilities\URLAssociations" "https" "SmartCookieWeb"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\Capabilities\StartMenu" "StartMenuInternet" "SmartCookieWeb"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb\shell\open\command" "" "$INSTDIR\SmartCookieWeb.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\SmartCookieWeb"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\SmartCookieWeb"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "SmartCookieWeb"
!macroend