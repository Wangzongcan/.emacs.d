(package-install 'multi-term)

(require 'multi-term)

(setq multi-term-program "/bin/bash"
      term-buffer-maximum-size 0
      multi-term-dedicated-select-after-open-p t)

(provide 'init-multi-term)
