#C:\Users\drizer\Documents\WindowsPowerShell\profile.ps1
set-alias python35 E:\Programs\venv\py35\Scripts\Activate.ps1
set-alias python27 E:\Programs\venv\py27\Scripts\activate.ps1
set-alias scons E:\Programs\venv\py27\Scripts\scons.bat

#checksum fuctions
function MD5Sum([string]$sFile)
{
    $oMD5=[System.Security.Cryptography.MD5]::Create()
    $oStream=[System.IO.File]::OpenRead($sFile)
    $sMD5=[System.BitConverter]::ToString($oMD5.ComputeHash($oStream)).Replace("-","").ToLower()
    $oStream.Close()
    return($sMD5)
}

function sha256sum([string]$sFile)
{
    $oSHA256=[System.Security.Cryptography.SHA256]::Create()
    $oStream=[System.IO.File]::OpenRead($sFile)
    $sSHA256=[System.BitConverter]::ToString($oSHA256.ComputeHash($oStream)).Replace("-","").ToLower()
    $oStream.Close()
    return($sSHA256)
}
