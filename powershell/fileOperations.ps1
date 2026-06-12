Write-Host "File Operations Menu"
Write-Host "1. Create File"
Write-Host "2. Add Content to File"
Write-Host "3. View File Content"
Write-Host "4. Delete File"

$choice = Read-Host "Enter your choice (1-4)"

switch ($choice) {

    "1" {
        $fileName = Read-Host "Enter file name to create"

        if (-not (Test-Path $fileName)) {
            New-Item -Path . -Name $fileName -ItemType File | Out-Null
            Write-Host "File created successfully."
        }
        else {
            Write-Host "File already exists."
        }
    }

    "2" {
        $fileName = Read-Host "Enter file name"

        if (Test-Path $fileName) {
            $content = Read-Host "Enter content to add"
            Add-Content -Path $fileName -Value $content
            Write-Host "Content added successfully."
        }
        else {
            Write-Host "File does not exist."
        }
    }

    "3" {
        $fileName = Read-Host "Enter file name"

        if (Test-Path $fileName) {
            Write-Host "`nFile Content:"
            Get-Content -Path $fileName
        }
        else {
            Write-Host "File does not exist."
        }
    }

    "4" {
        $fileName = Read-Host "Enter file name to delete"

        if (Test-Path $fileName) {
            Remove-Item $fileName
            Write-Host "File deleted successfully."
        }
        else {
            Write-Host "File does not exist."
        }
    }

    default {
        Write-Host "Invalid choice. Please select 1, 2, 3, or 4."
    }
}