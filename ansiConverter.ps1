cls
while(1){
    echo " __ __  ______  _____                      ____  ____   _____ ____  "
    echo "|  |  ||      ||     |                    /    ||    \ / ___/|    | "
    echo "|  |  ||      ||   __|         _____     |  o  ||  _  (   \_  |  |  "
    echo "|  |  ||_|  |_||  |_          |     |    |     ||  |  |\__  | |  |  "
    echo "|  :  |  |  |  |   _]         |_____|    |  _  ||  |  |/  \ | |  |  "
    echo "|     |  |  |  |  |                      |  |  ||  |  |\    | |  |  "
    echo " \__,_|  |__|  |__|     #VKM             |__|__||__|__| \___||____| "
    echo                                                                      ""
    #
    #
    #read the instruction below:
    #
    #This is for converting utf-8 character into ansi, means for copying from teams to java file (\_()_/).
    #
    #How to use
    #----------
    #right click on this file and select 'Run with Powershell' option.
    #Then drag and drop the file which you copied there and press enter.
    #done!
    #----------------------------------------------------------------------
    
    echo "|Enter q for quit and h for help|"
    echo ----------------------------------

    $file = Read-Host -Prompt 'Drag and drop your file here and press enter'
    $file = $file.Trim('\"')
    $file = $file.Trim("'")

    switch($file){


    #extra fhers

        'q'{
            echo going to exit...
            Start-Sleep 1
             exit   
         }

        'h'{
        echo ""
        echo ""
            echo "  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \_"
            echo "__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/ "
            echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::                                                                      ::"
echo ":: This is for converting utf-8 character into ANSI                     ::"
echo "::                                                                      ::"
echo ":: How to use                                                           ::"
echo ":: ==========                                                           ::"
echo ":: Right click on this file and select 'Run with Powershell' option.    ::"
echo "::                                                                      ::"
echo ":: Then drag and drop the file which you need to convert and press enter::"
echo "::                                                                      ::"
echo ":: done!                                                                ::"
echo "::                                                                      ::"
echo "::                                                                      ::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/ "
echo "  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \_"
echo "__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/  \__/ "
echo ""
echo ""

        }

        'c'{
             #Get-Clipboard | set-content vvv.txt -Encoding Ascii
        }



        default{
            try
            {
                $dirPath= Split-Path $file -Parent
                cd $dirPath
                $file = Split-Path $file -Leaf
                $file1 =$file+'1'
            
                Get-Content $file | Set-Content $file1 -Encoding Ascii
                Get-Content $file1 | Foreach-Object {$_ -replace "\?", ""} | Set-Content $file -Encoding Ascii
                #del $file1
            }
            catch [System.IO.FileNotFoundException] {
                echo "File Not Found"
            }
            
        
        }


    
    }
   
}

#for feedback and suggestions - vaisakhkm2625@gmail.com

#if script not running or below message is showing, copy this entire code and paste it to powershell...

#File C:\Users\vaisakh.km\OneDrive - HCL Technologies Ltd\Desktop\ansiConverter.ps1 cannot be loaded because running scripts 
#is disabled on this system. For more information, see about_Execution_Policies at 
#https:/go.microsoft.com/fwlink/?LinkID=135170.
#    + CategoryInfo          : SecurityError: (:) [], ParentContainsErrorRecordException
#    + FullyQualifiedErrorId : UnauthorizedAccess#

