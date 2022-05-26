;Uninstaller Section

Section "Uninstall"
  
  Delete "$DESKTOP\Атака ІТ армії України.lnk"
  Delete "$DESKTOP\ItArmy of Ukraine Attack.lnk"
  Delete "$DESKTOP\Атака ІТ армии Украины.lnk"
  Delete "$DESKTOP\Атака ІТ армії України (BETA).lnk"
  Delete "$DESKTOP\ItArmy of Ukraine Attack (BETA).lnk"
  Delete "$DESKTOP\Атака ІТ армии Украины (BETA).lnk"
  Delete "$DESKTOP\Шукач Проксі (Шукати проксі для mhddos_proxy).lnk"
  Delete "$DESKTOP\Proxy Finder (Find proxies for mhddos_proxy).lnk"
  Delete "$DESKTOP\Искатель Прокси (Искать прокси для mhddos_proxy).lnk"

  ;Remove all registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}"
  DeleteRegKey HKLM "Software\${PRODUCT}"

  ;Delete the installation directory + all files in it
  ;Add 'RMDir /r "$INSTDIR\folder\*.*"' for every folder you have added additionaly
  RMDir /r "$INSTDIR\*.*"
  RMDir "$INSTDIR"

  ;Delete Start Menu Shortcuts
  Delete "$SMPROGRAMS\${PRODUCT}\*.*"
  RmDir  "$SMPROGRAMS\${PRODUCT}"

SectionEnd

;--------------------------------
;After Installation Function

Function .onInstSuccess

  ;Open 'Thank you for installing' site or something else
  ExecShell "open" "https://t.me/itarmyofukraine2022"

FunctionEnd