; === Script Information =======================================================
; Name .........: QueueManager
; Description ..: Daemon for running queue jobs
; AHK Version ..: 1.1.36.02 (Unicode 64-bit)
; Start Date ...: 03/13/2023
; OS Version ...: Windows 10
; Language .....: English - United States (en-US)
; Author .......: Austin Fishbaugh <austin.fishbaugh@gmail.com>
; Filename .....: QueueManager.ahk
; ==============================================================================

; === Revision History =========================================================
; Revision 1 (03/13/2023)
; * Added This Banner
;
; Revision 2 (03/15/2023)
; * Got basic queue registration and calling working
;
; Revision 3 (03/16/2023)
; * Move registration to bootstrap file
; * Loop over priority array
; * Autoclose (gracefully) if DBA AutoTools.exe no longer exists
;
; Revision 4 (03/24/2023)
; * Delegate most of the queue logic to the actual Queue class
;
; Revision 5 (03/31/2023)
; * Properly call queue class (#.Queue instead of Queue)
;
; === TO-DOs ===================================================================
; ==============================================================================
#NoTrayIcon

Tasker.Queue.setStorageDriver(Tasker.StorageDrivers.Ini("some/queue/path"))

Tasker.Queue.registerHandler("1", Some.Queue.TaskType)
Tasker.Queue.registerHandler("2", Some.Other.TaskType)

while (true) {
    Tasker.Queue.executeTasks()

    ; If DBA AutoTools.exe isn't running, Break out of loop
    if(!ProcessExist("DBA AutoTools.exe")) {
        Break
    }

    Tasker.Queue.sleepInterval()
}

ExitApp