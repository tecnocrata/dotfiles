# =================
# Enabling END and HOME key correctly
# =================
cd ~/Library
mkdir KeyBindings
cd KeyBindings
echo '' > DefaultKeyBinding.dict
echo '{' >> DefaultKeyBinding.dict
echo '/* Remap Home / End keys */' >> DefaultKeyBinding.dict
echo '/* Home Button*/' >> DefaultKeyBinding.dict
echo '"\UF729" = "moveToBeginningOfLine:"; ' >> DefaultKeyBinding.dict
echo '/* End Button */' >> DefaultKeyBinding.dict
echo '"\UF72B" = "moveToEndOfLine:"; ' >> DefaultKeyBinding.dict
echo '/* Shift + Home Button */' >> DefaultKeyBinding.dict
echo '"$\UF729" = "moveToBeginningOfLineAndModifySelection:"; ' >> DefaultKeyBinding.dict
echo '/* Shift + End Button */' >> DefaultKeyBinding.dict
echo '"$\UF72B" = "moveToEndOfLineAndModifySelection:"; ' >> DefaultKeyBinding.dict
echo '/* Ctrl + Home Button */' >> DefaultKeyBinding.dict
echo '"^\UF729" = "moveToBeginningOfDocument:"; ' >> DefaultKeyBinding.dict
echo '/* Ctrl + End Button */' >> DefaultKeyBinding.dict
echo '"^\UF72B" = "moveToEndOfDocument:"; ' >> DefaultKeyBinding.dict
echo '/* Shift + Ctrl + Home Button */' >> DefaultKeyBinding.dict
echo '"$^\UF729" = "moveToBeginningOfDocumentAndModifySelection:";' >> DefaultKeyBinding.dict
echo '/* Shift + Ctrl + End Button*/' >> DefaultKeyBinding.dict
echo '"$^\UF72B" = "moveToEndOfDocumentAndModifySelection:"; ' >> DefaultKeyBinding.dict
echo '}' >> DefaultKeyBinding.dict
cd ~/