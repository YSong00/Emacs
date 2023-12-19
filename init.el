;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(material-theme counsel-projectile lsp-ui yasnippet dap-mode which-key)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Common
(setq init-common (expand-file-name "init-common.el" user-emacs-directory))
(load init-common)

;; Packages
(setq init-package (expand-file-name "init-package.el" user-emacs-directory))
(load init-package)

;; Custom Theme
;;(setq custom-theme (expand-file-name "init-themes.el" user-emacs-directory))
;;(load custom-theme)






;;; init.el ends here
