void Main() {
    print("Hello from the new plugin system!");
}

void RenderMenu()
{
    if (UI::MenuItem(Icons::Pencil + "	Blockdraw Draw 1 block"))
    {
        DrawBlock();
    }
}

void DrawBlock(){
    CGameEditorPluginMapMapType@ editor = GetMapPlugin();
    if (editor is null) {
        print("Editor is null");
        return;
    }
    CGameCtnChallenge@ challenge = GetChallenge();
    for (int i = 0; i < 100; i++){
        
        CGameItemModel@ model = CGameItemModel();
        model.MwAddRef();
        model.Author.SetName("feor");
        model.NameE = "Stadium";
        model.Name = "test";

        CGameCtnAnchoredObject@ item = CGameCtnAnchoredObject();
        item.ItemModel = model;
        item.AbsolutePositionInMap = vec3(i, i, i);
        challenge.AnchoredObjects.Add(item);
    }
    
}
CGameEditorPluginMapMapType@ editor = GetMapPlugin();
CGameCtnBlockInfo@ block = editor.GetBlockModelFromName("StadiumCircuitBase");
