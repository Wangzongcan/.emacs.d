(require 'init-packages)
(when (string-equal system-type "darwin")
  (require 'init-osx))
(when (string-equal system-type "gnu/linux")
  (require 'init-linux))
(require 'init-themes)
(require 'init-no-littering)
(require 'init-spaceline)
(require 'init-evil)
(require 'init-ag)
(require 'init-company)
(require 'init-rainbow-delimiters)
(require 'init-counsel)
(require 'init-flycheck)
(require 'init-yasnippet)
(require 'init-projectile)
(require 'init-smooth-scrolling)
(require 'init-parens)

(provide 'modules)