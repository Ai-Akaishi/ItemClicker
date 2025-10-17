### Copyright © 2025 赤石愛
### This software is released under the MIT License, see LICENSE.

## コンポーネント取得
function clicker:get_components

## 最初の/を判定
$data modify storage clicker: _ set value {command:'$(command)'}
## 最初が/なら削る
data modify storage clicker: c set string storage clicker: _.command 0 1
execute if data storage clicker: {c:"/"} run data modify storage clicker: _.command set string storage clicker: _.command 1

## 登録できたか取得
execute store result storage clicker: b byte 1 run function clicker:left/register/try with storage clicker: _
## 登録できなかったらreturn
execute if data storage clicker: {b:false} run return fail

## エンチャントがなく、overrideもなければ、falseに設定
execute unless data storage clicker: modifier.components."minecraft:enchantments" unless data storage clicker: modifier.components."minecraft:enchantment_glint_override" run data modify storage clicker: modifier.components."minecraft:enchantment_glint_override" set value false

## 左クリックエンチャント追加（登録されたコマンド数）
data remove storage clicker: modifier.components."minecraft:enchantments"."clicker:left"
execute if data storage clicker: modifier.components."minecraft:custom_data".item_clicker.left[0] store result storage clicker: modifier.components."minecraft:enchantments"."clicker:left" int 1 if data storage clicker: modifier.components."minecraft:custom_data".item_clicker.left[]

## 貫通属性を付与
data modify storage clicker: modifier.components."minecraft:piercing_weapon" set value {min_reach:0,max_reach:0,hitbox_margin:0,deals_knockback:false,dismount:false}

## コンポーネントを適用
function clicker:set_components
