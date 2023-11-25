; === Script Information =======================================================
; Name .........: INI Queue File Driver
; Description ..: Handles reading and writing queue data to .ini files
; AHK Version ..: 1.1.36.02 (Unicode 64-bit)
; Start Date ...: 03/23/2023
; OS Version ...: Windows 10
; Language .....: English - United States (en-US)
; Author .......: Austin Fishbaugh <austin.fishbaugh@gmail.com>
; Filename .....: Ini.ahk
; ==============================================================================

; === Revision History =========================================================
; Revision 1 (03/23/2023)
; * Added This Banner
;
; Revision 2 (03/24/2023)
; * Implement the createFile and readFile methods
;
; Revision 3 (03/31/2023)
; * Add constructor
; * Major bug fixes and optimizations
;
; === TO-DOs ===================================================================
; ==============================================================================
; ! DO NOT INCLUDE DEPENDENCIES HERE, DO SO IN TOP-LEVEL PARENT
; Tasker.StorageDrivers.Ini
class IniFile extends Tasker.StorageDrivers.File
{
    __New(path)
    {
        base.__New(path, ".ini")
    }

    addRecord(namespace, data)
    {
        local file
        filePath := this._getUniqueFilename(namespace)

        file := new #.IniFile(filePath)
        file.writeObject(data)
    }

    getRecord(filePath)
    {
        local file
        file := new #.IniFile(filePath)
        data := file.readObject()
        return data
    }
}