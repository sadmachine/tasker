; === Script Information =======================================================
; Name .........: Base Storage Driver
; Description ..: A base storage driver for other storage drivers to extend
; AHK Version ..: 2.* (Unicode 64-bit)
; Start Date ...: 03/20/2023
; OS Version ...: Windows 10
; Language .....: English - United States (en-US)
; Author .......: Austin Fishbaugh <austin.fishbaugh@gmail.com>
; Filename .....: Base.ahk
; ==============================================================================

; === Revision History =========================================================
; Revision 1 (03/20/2023)
; * Added This Banner
;
; Revision 2 (03/23/2023)
; * Updated api, fileExtension, getFileExtension, retrieveFiles, readFile
; * ... deleteFile
;
; Revision 3 (03/31/2023)
; * Update how files are retrieved
; * Added getNamespacePath()
;
; === TO-DOs ===================================================================
; ==============================================================================
; ! DO NOT INCLUDE DEPENDENCIES HERE, DO SO IN TOP-LEVEL PARENT
; Tasker.StorageDrivers.Base
class Base
{
    addData(namespace, data)
    {

    }

    fetchNamespaceData(namespace)
    {

    }

    fetchData(namespace, identifier)
    {

    }

    deleteNamespaceData(namespace)
    {

    }

    deleteData(namespace, identifier)
    {

    }
}