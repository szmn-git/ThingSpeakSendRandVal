do{

	$counter = $counter + 1
	$temp = Get-Random -Minimum 15 -Maximum 90

	Write-Host $temp.ToString()

	#YOUR KEY
	$key=""

	$url="https://api.thingspeak.com/update?key=" + $key + "&field2=" + $temp

	$result = Invoke-WebRequest -Uri $url

	start-sleep -Seconds 60

}while($counter -lt 30)