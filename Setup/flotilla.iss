; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Flotilla Desktop"
#define MyAppVersion "1.0"
#define MyAppPublisher "Pimoroni Ltd"
#define MyAppURL "http://flotil.la"
#define MyAppExeName "flotilla.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{38A1FD9B-F53A-4D6F-ACF7-C5779B5808A2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
CreateAppDir=no
OutputBaseFilename=setup
SetupIconFile=rockpool.ico
Compression=lzma
SolidCompression=yes
UsePreviousGroup=False
Uninstallable=no
DisableWelcomePage=no
WizardImageFile=WizModernImage.bmp
SignTool=signtool

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "FlotillaSetup.msi"; DestDir: "{tmp}"; Flags: deleteafterinstall; MinVersion: 0,6.1

[Run]
Filename: "msiexec.exe"; Parameters: "/i ""{tmp}\FlotillaSetup.msi"" /qn"; WorkingDir: "{tmp}"; Flags: waituntilterminated skipifdoesntexist runhidden; MinVersion: 0,6.1

; NOTE: Don't use "Flags: ignoreversion" on any shared system files