#
# This is a PowerShell Unit Test file.
# You need a unit test framework such as Pester to run PowerShell Unit tests. 
# You can download Pester from http://go.microsoft.com/fwlink/?LinkID=534084
#

@(
  "C:\Users\MatthewF\Source\Repos\7-Zip-PSM\7-Zip PSM",            # Laptop (Zen)
  "C:\Users\matthew.johnson\Source\Repos\7-Zip-PSM\7-Zip PSM"      # Desktop at work
  "D:\Users\Matthew Johnson\Source\GitHub\7-Zip-PSM\7-Zip PSM"     # Desktop at home
) | ? { Test-Path -Path $_ } | Set-Location


Describe "Import-Module 7-Zip.psm1" {
  It "Imports the module, which checks for, and if necessary, loads dependencies and writes embedded resources" {
    # Import-Module .\EmbeddedResources.psm1 is a dependency, which should be in the same working folder for this test
    Import-Module .\7-Zip.psm1
  }
}
