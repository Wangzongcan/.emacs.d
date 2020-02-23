;; path
(let* ((extra-paths '("/usr/local/bin" "~/.asdf/shims"))
       (paths (mapconcat 'identity extra-paths ":")))
  (setenv "PATH" (concat paths ":" (getenv "PATH")))
  (setq-default exec-path (append extra-paths exec-path)))

;; language
(set-language-environment "UTF-8")

;; locale
(set-locale-environment "en_US.UTF-8")

;; encoding
(prefer-coding-system 'utf-8-unix)

(provide 'init-environment)
