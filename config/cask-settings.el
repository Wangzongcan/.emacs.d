(require 'cask)
(cask-initialize)

(add-to-list 'auto-mode-alist '("Cask$" . emacs-lisp-mode))

(require 'pallet)
(pallet-mode t)

(provide 'cask-settings)
