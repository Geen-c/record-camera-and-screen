; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "Gutin���������Ƶ¼������ϵͳ"
#define MyAppVersion "0.3"
#define MyAppPublisher "�麣�й�����Ƶ�Ƽ����޹�˾"
#define MyAppExeName "RecordWindow.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{B91CC43B-FF1E-4169-B77C-1B259E89F014}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
;AppPublisherURL={#MyAppURL}
;AppSupportURL={#MyAppURL}
;AppUpdatesURL={#MyAppURL}
DefaultDirName=d:\gutin-record
DefaultGroupName=Gutin���������Ƶ¼������ϵͳ
AllowNoIcons=yes
OutputDir=D:\dev\record\out-test
OutputBaseFilename=Gutin���������Ƶ¼������ϵͳ-{#MyAppVersion}
SetupIconFile=C:\Users\lv\ctest\record-camera-and-screen\resource\gutin.ico
Compression=lzma
SolidCompression=yes

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "startupicon"; Description: "��������"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked 

[Files]
Source: "D:\dev\record\record-win\RecordWindow.exe"; DestDir: "{app}"; Flags: ignoreversionSource: "D:\dev\record\record-win\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
;Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon
Name: "{userstartup}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: startupicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent


[Registry]
Root: HKCU; Subkey: "SOFTWARE\Gutin\Record"; ValueType:string; ValueName: "InstallDir{#GetDateTimeString('dd/mm/yyyy hh:nn:ss', '-', ':')}"; ValueData: "{app}"; Flags: uninsdeletevalue createvalueifdoesntexist;
;����������HKLM�ڵ��޷�д��
;Root: HKCU; Subkey: "Software\My Company Test"; Flags: uninsdeletekeyifempty



