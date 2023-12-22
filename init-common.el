;;; Common -- Summary
;;; Commentary:

;;; Code:

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq inhibit-startup-screen t)
(setq visible-bell t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(column-number-mode t)
(display-time-mode t)

(global-display-line-numbers-mode 1)

(setq scroll-margin 3 scroll-conservatively 10000)

;(setq default-frame-alist '((width . 150) (height . 45)))
;(setq initial-frame-alist '((top . 100) (left . 300)))
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(load-theme 'material t)

;; Font
(set-frame-font "-outline-consolas-normal-r-normal-normal-14-97-96-96-c-*-iso8859-1")
(set-face-attribute 'default nil :height 130)


;; Clear Key Map
(global-set-key (kbd "C-j") nil)
(global-set-key (kbd "C-f") 'forward-to-word)
(global-set-key (kbd "C-b") 'backward-word)
(global-set-key (kbd "M-f") 'forward-char)
(global-set-key (kbd "M-b") 'backward-char)


;;; init-common.el ends here
