(global-auto-revert-mode 1)             ;; 自动加载改动

(setq
 confirm-kill-emacs 'yes-or-no-p        ;; 退出 emacs 前先确认
 tab-always-indent 'complete

 echo-keystrokes 0.1
 enable-recursive-minibuffers t

 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil                    ;; 编辑文件时，会创建一个 .#filename 的文件，取消这个设置

 confirm-nonexistent-file-or-buffer nil  ;; 创建 file 或 buffer 时不需要确认
 )

(fset 'yes-or-no-p 'y-or-n-p)            ;; 使用 y 和 n

(add-hook 'prog-mode-hook (lambda ()
                            (linum-mode 1)
                            (setq show-trailing-whitespace t)))

(provide 'init-misc)
