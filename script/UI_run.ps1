$excuteTool='../UI automation/OMNI_UI_automation'
$reportPath='../UI automation/Result'
echo "the environment for run is " + $args[0]
if(Test-path $reportPath){
remove-item $reportPath/* 
}
else{
New-Item -Path $reportPath -ItemType directory
}


   & cd $excuteTool 
   & behave -D env=$args[0]



