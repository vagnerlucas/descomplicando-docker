cd /odp
echo "Configurando NLS_LANG"
setx /m NLS_LANG "PORTUGUESE_BRAZIL.WE8ISO8859P1" > docker-install.log
echo "Configurando NLS_DATE_FORMAT"
setx /m NLS_DATE_FORMAT "DD/MM/YYYY" >> docker-install.log
echo "Instalando odp no c:\oracle"
.\install.bat odp.net4 c:\oracle myhome true
echo "Copiando tnsnames e sqlnet"
copy /odp/*.ora /oracle/network/admin/ 
echo "Configurando TNS_ADMIN"
setx /m TNS_ADMIN "c:\oracle\network\admin" >> docker-install.log
echo "Adicionando c:\oracle ao PATH"
setx /m PATH "$env:Path;c:\oracle" >> docker-install.log

$Acl = Get-Acl "C:\Data"
$Ar = New-Object  system.security.accesscontrol.filesystemaccessrule("Everyone", "FullControl", "Allow")
$Acl.SetAccessRule($Ar)
Set-Acl "C:\Data" $Acl