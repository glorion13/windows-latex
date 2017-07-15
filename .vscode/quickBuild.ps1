Write-Output "Begin quick build..."

$cmdOutput = pdflatex --synctex=1 --interaction=nonstopmode --output-directory=build main | Write-Output



foreach ($cmdItem in $cmdOutput) {
    if ($cmdItem.StartsWith("!")) {
        Write-Host $cmdItem -ForegroundColor Red
    }
    elseif ($cmdItem.StartsWith("LaTeX Warning")) {
        Write-Host $cmdItem -ForegroundColor Yellow
    }
    else
    {
    }
}

Write-Output "Quick build finished."