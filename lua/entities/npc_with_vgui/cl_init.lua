include("shared.lua")

local function OpenVGUI()

    if IsValid(window) then return end -- prevents from opening 50 windows in one use

    local window = vgui.Create("DFrame")
    window:SetSize(300,300)
    window:MakePopup()
    window:Center()
    function window:Paint(w,h)
        draw.RoundedBox(0,0,0,w,h,Color(20,100,200))
    end

    local button = vgui.Create("DButton", window)
    button:Center()
    function button:DoClick()
        net.Start("reqWep")
        net.SendToServer()
    end
end

net.Receive("OpenVGUI", OpenVGUI)
