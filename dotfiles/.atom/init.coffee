atom.commands.add 'atom-workspace', 'custom:focus-editor', ->
	activeTextEditor = atom.workspace.getActiveTextEditor()
	if activeTextEditor and atom.workspace.isTextEditor(activeTextEditor)
		pane = atom.workspace.paneForItem(activeTextEditor)
		pane.activate()
