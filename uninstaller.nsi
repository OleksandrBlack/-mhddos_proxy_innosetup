;Uninstaller Section

Section "Uninstall"
  
  Delete "$DESKTOP\$(inst_itarmy_req).lnk"
  Delete "$DESKTOP\$(inst_itarmy_beta_req).lnk"
  Delete "$DESKTOP\$(inst_pf_req).lnk"
  
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
  ;ExecShell "open" "microsoft-edge:${AFTER_INSTALLATION_URL}"
  ;ExecShell "opennew" "https://t.me/itarmyofukraine2022"

FunctionEnd