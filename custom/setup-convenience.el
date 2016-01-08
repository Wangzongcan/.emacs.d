(global-auto-revert-mode)

(global-set-key (kbd "M-/") 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol))

(global-hl-line-mode)

(setq ibuffer-use-other-window t)

(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook
	  (lambda ()
	    (interactive)
	    (setq show-trailing-whitespace 1)))

(windmove-default-keybindings)

(provide 'setup-convenience)
