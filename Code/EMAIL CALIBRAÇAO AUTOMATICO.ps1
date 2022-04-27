$userName = 'forgeneralpurposeatl@gmail.com'
$password = 'Atlas2021'
$emailto = 'Barros_Rogerio_C@cat.com'
$emailfrom = 'forgeneralpurposeatl@gmail.com'

$mes = Read-Host "Qual o mes de aferição?"
$mesEscolhido = switch ( $mes )
{
    1 { '01-Janeiro'     }
    2 { '02-Fevereiro'   }
    3 { '03-Março'       }
    4 { '04-Abril'       }
    5 { '05-Maio'        }
    6 { '06-Junho'       }
    7 { '07-Julho'       }
    8 { '08-Agosto'      }
    9 { '09-Setembro'    }
   10 { '10-Outubro'     }
   11 { '11-Novembro'    }
   12 { '12-Dezembro'    }
    
}

$subject = "Ferramentas linha - Mes $mesEscolhido"
$body = "Ferramentas aferidas em linha - mes $mesEscolhido `n`nEMAIL ENVIADO DE FORMA AUTOMATIZADA PELO SCRIPT ""EMAIL CALIBRAÇÃO AUTOMATICO"" "

$pathx = "C:\Users\brirb\Desktop\Calibraçao\Ferramentas_aferidas_em_linha\$mesEscolhido\Ferramentas_em_linha_$mesEscolhido.xlsx"


[SecureString]$securepassword = $password | ConvertTo-SecureString -AsPlainText -Force 
try{
    $credential = New-Object System.Management.Automation.PSCredential -ArgumentList $username, $securepassword
    echo Enviando... - 
    Send-MailMessage -SmtpServer smtp.gmail.com -Port 587 -UseSsl -From $emailfrom -To $emailto -Subject $subject -Attachments $pathx -Body $body -Credential $credential
    echo "Email enviado com sucesso para:"
    write-host $emailto -ForegroundColor black -backgroundcolor yellow
    echo "Titulo do email: $subject `n---------------`n"
    echo "Corpo do email: `n""$body""`n"
    write-host "Script by: Guilherme Oliveira - TMC Caterpillar" -ForegroundColor magenta -backgroundcolor White
    pause
}catch{
    write-host "Ocorreu um erro: $error`n - `n" -ForegroundColor red -backgroundcolor black
    write-host "O EMAIL NAO FOI ENVIADO!" -ForegroundColor red -backgroundcolor yellow
    pause
}




