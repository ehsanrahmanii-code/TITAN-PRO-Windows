; TITAN PRO V75 — Inno Setup installer script
; Requires: Inno Setup 6 + built dist\TITAN_PRO.exe
; Compile this after running build_windows.bat

#define MyAppName "TITAN PRO"
#define MyAppVersion "75.0"
#define MyAppPublisher "TITAN Analysis"
#define MyAppExeName "TITAN_PRO.exe"

[Setup]
AppId={{A7B3C1D2-E4F5-6789-ABCD-EF0123456789}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\TITAN_PRO
DefaultGroupName=TITAN PRO
OutputDir=installer_output
OutputBaseFilename=TITAN_PRO_V75_Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest
ArchitecturesInstallIn64BitMode=x64compatible
UninstallDisplayIcon={app}\{#MyAppExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop icon"; GroupDescription: "Additional icons:"

[Files]
Source: "dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch TITAN PRO"; Flags: nowait postinstall skipifsilent

[Code]
procedure CurStepChanged(CurStep: TSetupStep);
var
  TitanDir: string;
begin
  if CurStep = ssPostInstall then
  begin
    TitanDir := ExpandConstant('{userdocs}') + '\..\Desktop\TITI';
    ForceDirectories(TitanDir + '\data');
    ForceDirectories(TitanDir + '\cache');
    ForceDirectories(TitanDir + '\memory');
    ForceDirectories(TitanDir + '\secrets');
  end;
end;
