data:extend({
    --[[
        the order of settings is categorized as follows:
        0x: ubiquitous (enviroment) settings
        1x: basic (gameplay) settings
        2x: advanced (gameplay) settings
    ]]
    --enviroment settings
    {
        type = "bool-setting",
        name = "debug-mode",
        setting_type = "runtime-global",
        default_value = false,
        order = "00"
    },
    --advanced settings
    {
        type = "string-setting",
        name = "mnemonic",
        setting_type = "runtime-global",
        default_value = "international",
        allowed_values = {
            "international",
            "german"
        },
        order = "20"
    },
    {
        type = "int-setting",
        name = "cycle-gap",
        setting_type = "runtime-global",
        default_value = 10,
        minimum_value = 0,
        maximum_value = 60,
        order = "21"
    }
})