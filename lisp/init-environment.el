;; PATH
(let* ((extra-paths '("/usr/local/bin" "~/.asdf/shims"))
       (paths (mapconcat 'identity extra-paths ":")))
  (setenv "PATH" (concat paths ":" (getenv "PATH")))
  (setq-default exec-path (append extra-paths exec-path)))

(setenv "LIBRARY_PATH" "/usr/local/opt/libgccjit/lib/gcc/11")

;; Encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

(provide 'init-environment)
