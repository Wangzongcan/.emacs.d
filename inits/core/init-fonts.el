;;; init-fonts.el --- init file for fonts

;;; Commentary:

;; See `http://coldnew.github.io/blog/2013/11-16_d2f3a/`.

;;; Code:


;; (add-to-list 'default-frame-alist '(font . "M+ 1m-11"))
;; (set-face-attribute 'default nil :font "M+ 1m-11")

(defvar emacs-english-font "M+ 1m"
  "The font name of English.")

(defvar emacs-cjk-font "PingFang TC"
  "The font name for CJK.")

(defvar emacs-font-size-pair '(10 . 10)
  "Default font size pair for (english . chinese).")

(defvar emacs-font-size-pair-list
  '(( 6 .  6) (8 . 8) (10 . 10)
    (12 . 12) (14 . 14) (16 . 16)
    (18 . 18) (20 . 20) (22 . 22)
    (24 . 24) (26 . 26) (28 . 28)
    (30 . 30) (32 . 32) (34 . 34))
  "This list is used to store matching (englis . chinese) font-size.")

(defun font-exist-p (fontname)
  "Test if FONTNAME exists or not."
  (if (or (not fontname) (string= fontname ""))
      nil
    (if (not (x-list-fonts fontname)) nil t)))

(defun set-font (english chinese size-pair)
  "Setup Emacs ENGLISH and CHINESE SIZE-PAIR."

  (if (font-exist-p english)
      (set-frame-font (format "%s:pixelsize=%d" english (car size-pair)) t))

  (if (font-exist-p chinese)
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font) charset
                          (font-spec :family chinese :size (cdr size-pair))))))

(defun emacs-step-font-size (step)
  "Increase/Decrease Emacs's font size by STEP."
  (let ((scale-steps emacs-font-size-pair-list))
    (if (< step 0) (setq scale-steps (reverse scale-steps)))
    (setq emacs-font-size-pair
          (or (cadr (member emacs-font-size-pair scale-steps))
              emacs-font-size-pair))
    (when emacs-font-size-pair
      (message "Emacs font size set to %.1f" (car emacs-font-size-pair))
      (set-font emacs-english-font emacs-cjk-font emacs-font-size-pair))))

(defun increase-emacs-font-size ()
  "Decrease Emacs's font-size acording emacs-font-size-pair-list."
  (interactive) (emacs-step-font-size 1))

(defun decrease-emacs-font-size ()
  "Increase Emacs's font-size acording emacs-font-size-pair-list."
  (interactive) (emacs-step-font-size -1))

(when window-system
  (set-font emacs-english-font emacs-cjk-font emacs-font-size-pair)
  (global-set-key (kbd "C-=") 'increase-emacs-font-size)
  (global-set-key (kbd "C--") 'decrease-emacs-font-size))

(provide 'init-fonts)
