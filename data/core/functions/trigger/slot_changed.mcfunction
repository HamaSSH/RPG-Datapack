# ステータスのアップデート
  function player:status/update/_
# スニークスコアのリセット
  function core:trigger/sneak/reset
# 選択中スロットスコアの更新
  scoreboard players operation @s PreviousSlot = $SelectedItemSlot Temporary