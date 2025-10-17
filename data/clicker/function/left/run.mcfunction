### Copyright © 2025 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage clicker: _ set value {}
data modify storage clicker: _.command set from storage clicker: command_components[0].command
data remove storage clicker: command_components[0]

function clicker:left/run-m with storage clicker: _

execute if data storage clicker: command_components[0] run function clicker:left/run
