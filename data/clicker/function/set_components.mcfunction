### Copyright © 2025 赤石愛
### This software is released under the MIT License, see LICENSE.

## コンポーネント設定
tag @s add ItemClickerTarget
	## 規定値は実行者のcontents
	data modify storage clicker: _ set value {target:"entity @n[tag=ItemClickerTarget]",slot:"contents"}
	## ターゲットタイプがエンティティで、実行者がプレイヤーなら、weapon.mainhandに読み替える
	execute unless data storage clicker: target{type:"block"} if entity @s[type=player] run data modify storage clicker: _ set value {target:"entity @n[tag=ItemClickerTarget]",slot:"weapon.mainhand"}
	## ターゲットタイプがブロックなら、ターゲット変更
	execute if data storage clicker: target{type:"block"} run data modify storage clicker: _ set value {target:"block ~ ~ ~",slot:"contents"}
	## slot指定があるなら、slot変更
	data modify storage clicker: _.slot set from storage clicker: target.slot
	## データ設定
	data modify storage clicker: _.components set from storage clicker: modifier.components
	execute summon item run function clicker:set_components-m with storage clicker: _
tag @s remove ItemClickerTarget
