include("shared.lua")

local frameColor = Color(40,40,40)

local function OpenVGUI()

    -- Create ur UI here.
    -- Example
    window = vgui.Create("DFrame")
    window:SetSize(700,500)
    window:Center()
    window.Paint = function(pnl,w,h)
        surface.SetDrawColor(frameColor)
        surface.DrawRect(0,0,w,h)
    end
end 

net.Receive("Bully's DermaNPC Template", OpenVGUI) -- gotta have unique names n what not, u know how it is
