$day = Read-Host "result: "

$result = switch ( $day )
{
    0 { 'Sunday'    }
    1 { 'Monday'    }
    2 { 'Tuesday'   }
    3 { 'Wednesday' }
    4 { 'Thursday'  }
    5 { 'Friday'    }
    6 { 'Saturday'  }
}

echo "resultado: $result"

pause 
Get-ChildItem -Path C:\Users\brirb\Desktop\Calibraçao\Ferramentas_aferidas_em_linha 
$Age = Read-Host "Please enter your age"
echo $Age

if($age -eq 'y')
{
echo SIM!
}else
{
echo nao!!}