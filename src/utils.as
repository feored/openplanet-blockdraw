CGameCtnEditorFree@ GetMapEditor() {
  return cast<CGameCtnEditorFree>(GetApp().Editor);
}

CGameEditorPluginMapMapType@ GetMapPlugin() {
  CGameCtnEditorFree@ editor = GetMapEditor();
  if (editor is null) {
    print("Editor is null");
    return null;
  }
  return cast<CGameEditorPluginMapMapType>(editor.PluginMapType);
}
