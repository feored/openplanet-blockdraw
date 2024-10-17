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
    auto editor = GetMapPlugin();
    if (editor is null) {
        print("Editor is null");
        return;
    }
    CGameCtnBlockInfo@ block = editor.GetBlockModelFromName("StadiumCircuitBase");
    for (int i = 0; i < 100; i++)
    {
        int3 coord;
        coord.x = i;
        coord.y = 16;
        coord.z = 0;
        editor.PlaceBlock(block, coord, CGameEditorPluginMap::ECardinalDirections::North);
    }
    
}