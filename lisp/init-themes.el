(use-package dracula-theme)
(use-package monokai-theme)
(use-package doom-themes)

(defun my-apply-theme (appearance)
  "Load theme, taking current system APPEARANCE into consideration."
  (mapc #'disable-theme custom-enabled-themes)
  (pcase appearance
    ('light (load-theme 'doom-one-light t))
    ('dark (load-theme 'doom-snazzy t))))

(add-hook 'ns-system-appearance-change-functions #'my-apply-theme)

(provide 'init-themes)
