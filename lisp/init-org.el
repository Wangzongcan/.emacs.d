(use-package org-contrib
  :straight (:host github :repo "emacsmirror/org-contrib")
  :mode ("\\.org\\'" . org-mode)
  :hook (org-mode . org-indent-mode))

(provide 'init-org)
