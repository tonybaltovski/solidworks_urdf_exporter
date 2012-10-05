; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SolidWorks To URDF"
#define MyAppVersion "1.0.4659.42046"
#define MyAppPublisher "Stephen Brawner"
#define MyAppURL "http://kforge.ros.org/robotmodel/viewvc/sw_urdf_exporter/"



[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E43E85A9-071D-430A-91B2-84B7AB923170}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
CreateAppDir=yes
OutputBaseFilename=sw2urdfSetup
Compression=lzma                                                        
DefaultDirName="C:\Program Files\SolidWorks Corp\SolidWorks\URDFExporter"
SolidCompression=no
PrivilegesRequired=admin
OutputDir=..\..\INSTALL\OUTPUT
SourceDir=..\SW2URDF\bin\
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: x64\Debug\*;  DestDir: {app}; Flags: ignoreversion; Check: IsWin64;
;Source: x86\Debug\*;  DestDir: {app}; Flags: regserver ignoreversion; Check: not IsWin64

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Run]                                                        
Filename: "{reg:HKLM64\SOFTWARE\Microsoft\.NETFramework,InstallRoot}\v4.0.30319\RegAsm.exe"; Parameters: """{app}\SW2URDF.dll"" ""/codebase"""; StatusMsg: Registering controls ...; Check: IsWin64; Languages:


[Registry]
Root: HKLM64; Subkey: "SOFTWARE\SolidWorks\Addins\65c9fc17-6a74-45a3-8f84-55185900275d";        ValueType: none; ValueName: ""; Flags: dontcreatekey deletekey uninsdeletevalue; Check: IsWin64
Root: HKCU64; Subkey: "Software\SolidWorks\AddInsStartup\65c9fc17-6a74-45a3-8f84-55185900275d"; ValueType: none; ValueName: ""; Flags: dontcreatekey deletekey uninsdeletevalue; Check: IsWin64

[UninstallRun]

Filename: "{reg:HKLM64\SOFTWARE\Microsoft\.NETFramework,InstallRoot}\v4.0.30319\RegAsm.exe"; Parameters:  """{app}\SW2URDF.dll"" ""/unregister"""; StatusMsg: Unregistering controls ...; Check: IsWin64; Languages:
