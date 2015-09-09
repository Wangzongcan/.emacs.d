;; set path
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/usr/local/opt/coreutils/libexec/gnubin")
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))

(provide 'init-exec-path)
