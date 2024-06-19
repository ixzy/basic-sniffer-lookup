# please note this is so basic.
function cnc {
$ip = @()
4..1 |ForEach-Object {
 $ip += Get-Random -Minimum 1 -Maximum 255
 }
 $ip -join '.'
}

1..99999999 | ForEach-Object {
  $ip = cnc
  if(Test-Connection -ComputerName $ip -Count 1 -quiet){
   write-output "$ip Alive"
   } 
  }
