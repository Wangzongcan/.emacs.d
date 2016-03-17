(defconst emacs-cache-directory
  (concat user-emacs-directory ".cache/"))
(make-directory emacs-cache-directory t)

(require 'emacs-ui)
(require 'emacs-editor)
(require 'emacs-dired)
(require 'emacs-ibuffer)
(require 'emacs-recentf)
(require 'emacs-saveplace)
(require 'emacs-uniquify)
(require 'emacs-whitespace)
(require 'emacs-prog)

(provide 'emacs-core.el)
