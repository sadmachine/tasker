```

Queue --[addRecord(namespace, data)]--> <StorageDriver>
Queue --[getNamespaceIds(namespace)]--> <StorageDriver>
Queue --[getRecord(namespace, id)]--> <StorageDriver>
Queue --[removeNamespaceRecords(namespace)]--> <StorageDriver>
Queue --[removeRecord(namespace, id)]--> <StorageDriver>

<File>.addRecord(namespace, data):
	Create a new file within folder namespace, using the given file standards
<File>.getNamespaceIds(namespace):
	Return all filepaths within the given namespace
<File>.getRecord(namespace, id):
	Return the data contained within the file corresponding to the namespace and id (filepath)
<File>.removeNamespaceRecords(namespace):
	Remove all files within the namespace
<File>.removeRecord(namespace, id):
	Remove the file corresponding to the namespace and id (filepath)

<Database>.addRecord(namespace, data):
	Create a row with the corresponding namespace and the given data
<Database>.getNamespaceIds(namespace):
	Return all ids within the database with the given namespace
<Database>.getRecord(namespace, id):
	Return the data with the given namespace and id
<Database>.removeNamespaceRecords(namespace):
	Remove all rows within the database with the given namespace 
<Database>.removeRecord(namespace, id):
	Remove the record with the specified namespace and id