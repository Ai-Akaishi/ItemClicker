### Copyright © 2025 赤石愛
### This software is released under the MIT License, see LICENSE.

$item replace entity @s contents from $(target) $(slot)
data remove entity @s Item.components
$item modify entity @s contents {function:"set_components",components:$(components)}
$item replace $(target) $(slot) from entity @s contents
