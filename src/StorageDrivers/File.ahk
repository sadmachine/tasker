; === Script Information =======================================================
; Name .........: Base File Driver
; Description ..: A base file driver for other file drivers to extend
; AHK Version ..: 1.1.36.02 (Unicode 64-bit)
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
; Tasker.StorageDrivers.File
class File
{
    basePath := ""
    fileExtension := ""

    __New(path, extension)
    {
        this.basePath := path
        this.fileExtension := extension
    }

    addRecord(namespace, data)
    {

    }

    getRecordIds(namespace)
    {
        filePaths := []
        queueGlob := RTrim(this.getNamespacePath(namespace), "/") "/" "*" this.getFileExtension())
        Loop, Files, % queueGlob, F
        {
            filePaths.push(A_LoopFileLongPath)
        }
        return filePaths
    }

    getRecord(identifier)
    {

    }

    deleteRecords(namespace)
    {
        loopFiles := RTrim(this.getNamespacePath(), "/") "/*"
        Loop Files, loopFiles, F {
            this.deleteRecord(A_LoopFileFullPath)
        }
    }

    deleteRecord(identifier)
    {
        FileDelete % identifier
    }

    getFileExtension()
    {
        ext := Trim(LTrim(this.fileExtension, "."))
        return "." ext
    }

    getNamespacePath(namespace)
    {
        
        filePathBase := RTrim(this.basePath, "/") "/" namespace
        if (!InStr(FileExist(filePathBase), "D")) {
            FileCreateDir % filePathBase
        }
        return filePathBase
    }

    _getUniqueFilename(namespace)
    {
        filePathBase := this.getNamespacePath(namespace)
        FormatTime, dateStr,, % "yyyyMMddHHmmss"
        index := -1
        loop {
            index += 1
            filename := dateStr "-" index this.getFileExtension()
            filePath := RTrim(filePathBase, "/") "/" filename
        } until (!FileExist(filePath))

        return filePath
    }
}