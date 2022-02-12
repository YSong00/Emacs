(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Common
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq inhibit-startup-screen t)
(setq visible-bell t)
(setq display-time-24hr-format t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(column-number-mode t)
(display-time-mode t)
(setq scroll-margin 3 scroll-conservatively 10000)

;; Color Theme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/custom-themes/")
(require 'color-theme)
(color-theme-initialize)
(color-theme-subtle-hacker)

;; Font
(set-frame-font "-outline-consolas-normal-r-normal-normal-14-97-96-96-c-*-iso8859-1")