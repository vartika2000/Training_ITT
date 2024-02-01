function Get-ModuleCommands {
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string]$ModuleName
    )

    # Import the module
    Write-Host "Importing module: $ModuleName"
    Import-Module -Name $ModuleName

    # Get the commands in the module
    Write-Host "Commands in module: $ModuleName"
    $commands = Get-Command -Module $ModuleName

    # Output the commands
    foreach ($command in $commands) {
        Write-Host $command.Name
    }
}

$module = "PSReadLine"
Write-Host "Commands in module '$module':"
Get-ModuleCommands -ModuleName $module
