; ==== Script Information ======================================================
; Name .........: Tasker
; Description ..: Task Queue / Manager
; AHK Version ..: 2.* (Unicode 64-bit)
; Start Date ...: 11/16/2023
; OS Version ...: Windows 10
; Language .....: English - United States (en-US)
; Author .......: Austin Fishbaugh <austin.fishbaugh@gmail.com>
; Filename .....: Tasker.ahk
; ==============================================================================

; ==== Revision History ========================================================
; Revision 1 (11/16/2023)
; * Added This Banner
;
; ==== TO-DOs ==================================================================
; ==============================================================================

; Directives
#Requires AutoHotkey >=2.0

class Tasker
{
   #Include "src/StorageDrivers.ahk"
   #Include "src/Queue.ahk"
   #Include "src/Task.ahk" 
}