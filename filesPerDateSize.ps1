<# 
	Created by Uriel Lopez

	Script that get the list of all the files within a directory and prints the size of each of them
#>

$files = Get-ChildItem -recurse | where-object {$_.CreationTime -lt [datetime]::today} | sort LastWriteTime -Descending
$count = 1
$fileTotal = 0
$auxDate = $files[0].LastWriteTime.toString("MM/dd/yyyy")

Write-Output "Date|NumberFiles|Size"

for ($i=0; $i -lt $files.Count; $i++)
{	
	$extraDate
	$outfile = $files[$i].FullName + "out" + "Uriel"
	$fileDate = $files[$i].LastWriteTime.toString("MM/dd/yyyy")
	$fileSize = $files[$i].length/1KB

	if($auxDate -eq $fileDate) {
		$count = $count + 1
		$fileTotal = $fileTotal + $fileSize
	}
	else {
		if($fileTotal -eq 0) {
			$fileTotal = $fileSize
		}
        
        $fileTotal = $fileTotal / 1000
        
        #$concept = "MB"

		#if($fileTotal -gt 1000) {
		#	$fileTotal = $fileTotal / 1000
        #    $concept = "MB"
		#}
        #else {
        #    $concept = "KB"
        #}

		$auxDate = $fileDate 
		Write-Output "$auxDate|$count|$fileTotal"
		$fileTotal = 0
		$count = 1
	}
	
	
}


