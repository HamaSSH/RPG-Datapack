# メニューごとの場合分け
    execute if data storage menu:temp Data{type:"Brewing"} run function menu:brewing/_
    execute if data storage menu:temp Data{type:"Cooking"} run say cook
    execute if data storage menu:temp Data{type:"Crafting"} run say craft
    execute if data storage menu:temp Data{type:"Upgrade"} run say upgrade