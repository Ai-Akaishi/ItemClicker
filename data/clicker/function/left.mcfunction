### Copyright © 2025 赤石愛
### This software is released under the MIT License, see LICENSE.

## コマンド取得
data modify storage clicker: command_components set from entity @s SelectedItem.components."minecraft:custom_data".item_clicker.left

execute if data storage clicker: command_components[0] run function clicker:left/run
