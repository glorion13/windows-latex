Write-Output "Cleaning..."

Get-ChildItem build\* -include *.aux, *.bbl, *.bcf, *.blg, *.lof, *.log, *.lol, *.lot, *.out, *.run.xml, *.toc, *.pdf, *.synctex.gz -recurse | remove-item

Write-Output "Cleaning complete."