
$excuteTool='./SoapUI-5.2.1/bin/testrunner.bat'
$reportPath='./API automation/QA/result' 
$API_qa_file='./API automation/QA/'

$files = Get-ChildItem -Path $API_qa_file -Filter "*.xml"

remove-item $reportPath/*

foreach($file in $files) {
    &$excuteTool  -r -a -j -J -f $reportPath -I $file.FullName  
}



