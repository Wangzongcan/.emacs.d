(use-package lsp-mode
  :custom
  (lsp-use-plists t)
  (lsp-keymap-prefix "C-c l")

  (lsp-keep-workspace-alive nil)
  (lsp-signature-auto-activate nil)
  (lsp-modeline-code-actions-enable nil)
  (lsp-modeline-diagnostics-enable nil)
  (lsp-modeline-workspace-status-enable nil)

  (lsp-semantic-tokens-enable t)
  (lsp-progress-spinner-type 'progress-bar-filled)

  (lsp-enable-file-watchers nil)
  (lsp-enable-folding nil)
  (lsp-enable-symbol-highlighting nil)
  (lsp-enable-text-document-color nil)

  (lsp-enable-indentation nil)
  (lsp-enable-on-type-formatting nil)
  :config
  (when (executable-find "emacs-lsp-booster")
    (defun lsp-booster--advice-json-parse (old-fn &rest args)
      "Try to parse bytecode instead of json."
      (or
       (when (equal (following-char) ?#)
         (let ((bytecode (read (current-buffer))))
           (when (byte-code-function-p bytecode)
             (funcall bytecode))))
       (apply old-fn args)))
    (advice-add (if (progn (require 'json)
                           (fboundp 'json-parse-buffer))
                    'json-parse-buffer
                  'json-read)
                :around
                #'lsp-booster--advice-json-parse)

    (defun lsp-booster--advice-final-command (old-fn cmd &optional test?)
      "Prepend emacs-lsp-booster command to lsp CMD."
      (let ((orig-result (funcall old-fn cmd test?)))
        (if (and (not test?)                             ;; for check lsp-server-present?
                 (not (file-remote-p default-directory)) ;; see lsp-resolve-final-command, it would add extra shell wrapper
                 lsp-use-plists
                 (not (functionp 'json-rpc-connection))  ;; native json-rpc
                 (executable-find "emacs-lsp-booster"))
            (progn
              (message "Using emacs-lsp-booster for %s!" orig-result)
              (cons "emacs-lsp-booster" orig-result))
          orig-result)))
    (advice-add 'lsp-resolve-final-command :around #'lsp-booster--advice-final-command)))

(provide 'init-lsp)
