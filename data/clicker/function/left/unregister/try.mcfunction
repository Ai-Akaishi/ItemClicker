### Copyright © 2025 赤石愛
### This software is released under the MIT License, see LICENSE.

## 追加済みのコマンドかどうかチェック
$execute unless data storage clicker: modifier.components."minecraft:custom_data".item_clicker.left[{command:'$(command)'}] run return 0

## 追加済みなら削除
$data remove storage clicker: modifier.components."minecraft:custom_data".item_clicker.left[{command:'$(command)'}]

## 追加できたら1
return 1
