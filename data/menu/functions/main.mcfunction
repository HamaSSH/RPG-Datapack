# メニューごとの場合分け
    execute if data storage menu:temp Data{type:"Brewing"} run function menu:brewing/_
    execute if data storage menu:temp Data{type:"Cooking"} run function menu:cooking/_
    execute if data storage menu:temp Data{type:"Crafting"} run function menu:crafting/_
    execute if data storage menu:temp Data{type:"Upgrading"} run function menu:upgrading/_