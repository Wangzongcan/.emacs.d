;; Evil Leader
(package-install 'evil-leader)

(require 'evil-leader)

(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

;; base
(evil-leader/set-key
 "0" 'delete-window
 "1" 'delete-other-windows
 "2" 'split-window-below
 "3" 'split-window-right
 )

(provide 'init-evil-leader)
