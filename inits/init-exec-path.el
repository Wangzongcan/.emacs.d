;; set path
(add-to-list 'exec-path "/usr/local/bin")
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))

(provide 'init-exec-path)
