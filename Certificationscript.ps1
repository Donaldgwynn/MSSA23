$cert = get-childitem -path cert:\currentuser\my -CodeSigningCert
Set-AuthenticodeSignature -Filepath E:\Cert.ps1 -Certificate $Cert

Set-ExecutionPolicy -Executionpolicy allsigned -scope CurrentUser