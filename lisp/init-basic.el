;; Bell
(setq ring-bell-function #'ignore)

;; Scroll
(setq scroll-step 1
      scroll-conservatively 100000)

(setq inhibit-compacting-font-caches t)

;; Encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

;; Path
(when (display-graphic-p)
  (let* ((extra-paths '("/usr/local/bin" "~/.asdf/shims"))
         (paths (mapconcat 'identity extra-paths ":")))
    (setenv "PATH" (concat paths ":" (getenv "PATH")))
    (setq-default exec-path (append extra-paths exec-path))))

;; No Littering
(use-package no-littering
  :demand)

(provide 'init-basic)
