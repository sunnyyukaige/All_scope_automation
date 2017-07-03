
$excuteTool='./apache-jmeter-3.0/bin/jmeter.bat'
$reportPath='./Performance automation/result/' 
$performance_file='./Performance automation/'

$files = Get-ChildItem -Path $performance_file -Filter "*.jmx"

remove-item $reportPath/*

foreach($file in $files) {
    $reportName=$reportPath+$file.BaseName+".jtl"
    &$excuteTool -n -t $file.FullName -l $reportName  
    Write-Host $excuteTool  -n -t $file.FullName -l $reportName  
}



