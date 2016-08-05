-- Set the theme to dark.
ui.set_theme(not CURSES and 'dark' or 'term', {font = 'Monospace', back='0x000000', fontsize = 8})

-- Allow multiple carets.
buffer.multiple_selection = true

-- Use autocomplete on all of multiple selections, not just the first.
buffer.auto_c_multi = buffer.MULTIAUTOC_EACH

-- Allow pasting into each of multiple selections.
buffer.multi_paste = buffer.MULTIPASTE_EACH

-- Set the tab width to the standard 4.
buffer.tab_width = 4

-- Space those lines a bit better.
buffer.extra_ascent = 2

-- Assign line cut to ctrl+l
keys["cl"] = buffer.line_cut

-- Assign moving lines to ctrl-up/down.
keys["cup"] = buffer.move_selected_lines_up
keys["cdown"] = buffer.move_selected_lines_down

-- Set scrolling to ctrl-shift-up/down.
keys["csup"] = buffer.line_scroll_up
keys["csdown"] = buffer.line_scroll_down

-- Scrolling past the last line is the best.
buffer.end_at_last_line = false

end