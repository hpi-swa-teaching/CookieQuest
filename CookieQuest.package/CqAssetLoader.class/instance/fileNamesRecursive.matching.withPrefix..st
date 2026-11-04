resource loading
fileNamesRecursive: aDirectory matching: aPattern withPrefix: aPrefix
	"answers all filenames recursivly matching a pattern from a specific directory"
	
	| fileNames directory |
	directory := FileDirectory uri: aDirectory.
	fileNames := (directory fileNamesMatching: aPattern) collect: [:fileName | aPrefix, fileName].
	directory directoryNames do: [:subDirectory | 
		fileNames addAll:
			(self fileNamesRecursive: aDirectory, subDirectory, FileDirectory pathNameDelimiter
				matching: aPattern
				withPrefix: aPrefix, subDirectory, FileDirectory pathNameDelimiter)].
	^ fileNames