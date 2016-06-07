(use-package pbcopy
  :ensure t
  :if (not (window-system))
  :init (turn-on-pbcopy))

(provide 'init-pbcopy)
