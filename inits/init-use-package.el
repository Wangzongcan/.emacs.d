;; install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package)
  (require 'bind-key)
  (setq use-package-verbose t
        use-package-always-ensure t))

(provide 'init-use-package)
