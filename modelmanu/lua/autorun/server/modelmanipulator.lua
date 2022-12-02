-- hook.Add("OnPhysgunReload", "Robb_ManiuplateModel", function(wep, ply)
--     local trace = ply:GetEyeTrace()
--     if trace.Entity:IsValid() then 
--         ply:SetModel(trace.Entity:GetModel())
--         ply:ChatPrint("[!] Your model has been updated! ("..trace.Entity:GetModel()..")")
--    else ply:ChatPrint("[!] Invalid model.") end
-- end)

hook.Add( "OnPhysgunPickup", "Robb_ManipulateModel", function(ply, ent)
    if ply:KeyDown( IN_RELOAD ) && ply:IsAdmin() then
        if ply:GetModel() == ent:GetModel() then
            ply:ChatPrint("[!] You've already become this model.")
        else
            ply:SetModel(ent:GetModel())
            ply:ChatPrint("[!] Your model has been updated! ("..ent:GetModel()..")")
        end
    end
end)