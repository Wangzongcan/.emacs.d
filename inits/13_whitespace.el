(global-whitespace-mode t)

(setq whitespace-style
      '(face tabs trailing tab-mark newline newline-mark))

(setq whitespace-display-mappings
      '((spaces-mark 32 [32] [183] [46])
        (tab-mark 9 [187 32 32 32])))
