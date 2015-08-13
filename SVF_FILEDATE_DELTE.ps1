#SVFのデータファイルを作成から５時間以上経過したものを削除する。 
#事前にSet-ExecutionPolicy RemoteSignedを実行する。一度だけ。

$a = Get-ChildItem D:\GRANDIT\CROWN\SVF\DATAFILE\CTEC_?_R*.csv 

foreach($x in $a)  
{  
    $xtime = $x.LastWriteTime.AddHours(5)      #5hour set
    #$x1 = $x.LastWriteTime.Minute(5)
    if ((Get-Date) -ge $xtime){
        #{$x.Delete()}  
        Remove-Item $x
    }
} 

    
$a1 = Get-ChildItem D:\GRANDIT\CROWN\SVF\DATAFILE\CROW_?_R*.csv 
foreach($x1 in $a1)  
{  
    $xtime1 = $x1.LastWriteTime.AddHours(5)    #5hour set
    #$x1 = $x.LastWriteTime.Minute(5)
    if ((Get-Date) -ge $xtime1){
        #{$x.Delete()}  
        Remove-Item $x1
    }
} 