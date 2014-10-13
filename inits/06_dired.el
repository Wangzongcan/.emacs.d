(eval-after-load "dired"
  '(progn
     (require 'dired+)
     (require 'dired-single)

     (add-hook 'dired-mode-hook
               (lambda ()
                 (define-key dired-mode-map (kbd "RET") 'dired-single-buffer)
                 (define-key dired-mode-map (kbd "j") 'diredp-next-line)
                 (define-key dired-mode-map (kbd "k") 'diredp-previous-line)
                 (define-key dired-mode-map (kbd "f") 'dired-goto-file)
                 (define-key dired-mode-map (kbd "C-j") 'dired-single-buffer)
                 (define-key dired-mode-map (kbd "C-k")
                   (lambda ()
                     (interactive)
                     (dired-single-buffer "..")))
                 (setq dired-single-use-magic-buffer t)
                 (setq dired-single-magic-buffer-name "*dired*")
                 (dired-single-toggle-buffer-name)))))

;; RET 进入文件夹或打开文件
;; j   向下移动一行
;; k   向上移动一行
;; f   跳转到某个文件或文件夹
;; C-j 进入文件夹或打开文件
;; C-k 返回上级目录
