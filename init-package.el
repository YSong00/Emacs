;;; package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
;;                         ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))
(package-initialize)

(eval-when-compile (require 'use-package))




;;; common
(use-package which-key
  :config
  (which-key-mode))

(use-package counsel
  :ensure t)
(use-package ivy
  :ensure t
  :init
  (ivy-mode 1)
  (counsel-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq search-default-mode #'char-fold-to-regexp)
  (setq ivy-count-format "(%d/%d) ")
  :bind
  (("C-x b" . 'ivy-switch-buffer)
   ("C-x C-f" . 'counsel-find-file)
   :map minibuffer-local-map
   ("C-r" . counsel-minibuffer-history)))

(use-package avy
  :ensure t
  :bind
  (("C-j w" . avy-goto-char)))




;;; program
(use-package company
  :ensure t
  :init
  (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  (setq company-show-quick-access t)
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence)))

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode))

(use-package flycheck-clang-tidy
  :ensure t)



;;; project
(use-package projectile
  :ensure t
  :config
  (setq projectile-mode-line "Projectile")
  (setq projectile-track-known-projects-automatically nil))
(use-package counsel-projectile
  :ensure t
  :after (projectile)
  :init (counsel-projectile-mode))




;;; lsp-mode
(use-package lsp-mode
    :init
    :hook ((c++-mode . lsp)
          (lsp-mode . lsp-enable-which-key-integration))
    :commands lsp
    :bind
    (("C-j d" . lsp-find-definition)
     ("C-j i" . lsp-find-implementation)))
(use-package lsp-ui
    :commands lsp-ui-mode)
(use-package lsp-ivy
    :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
    :commands lsp-treemacs-errors-list)




;;; dap-mode
(use-package dap-mode)
(use-package dap-lldb
    :after dap-mode
    :custom (dap-lldb-debug-program '("E:/Program Files/LLVM/bin/lldb-vscode")))

(dap-register-debug-template
  "LLDB::Run"
  (list :type "lldb-vscode"
        :cwd "E:/Data/EmacsTest/TestDebug/TestDebug"
        :request "launch"
        :program "E:/Data/EmacsTest/TestDebug/x64/Debug/TestDebug.exe"
        :name "LLDB::Run"))
