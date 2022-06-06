;Nsis translations

!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "Russian"
!insertmacro MUI_LANGUAGE "Ukrainian"
!insertmacro MUI_LANGUAGE "Netherlands"

;Installer/Uninstaller translations
!addincludedir translations

;The languages should be in alphabetical order
!include english.nsi
!include russian.nsi
!include ukrainian.nsi
!include netherlands.nsi