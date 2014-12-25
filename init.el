;; Turn off mouse interface early in startup to avoid momentary display
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen
(setq inhibit-startup-message t)

;; Setup and install packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Initialize packages
(package-initialize)
(when (not (file-exists-p package-user-dir))
  (package-refresh-contents))

(defun require-packages (&rest packages)
  (mapcar
    (lambda (package)
    (when (not (package-installed-p package))
    (package-install package)))
    packages))

(require-packages
        'evil
        'autopair
        'projectile
        'yasnippet
        'auto-complete
        'spacegray-theme
        'dired+
        'magit)

;; Set font
(set-default-font "Inconsolata 11")

;; No tabs
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq-default tab-width 4)

;; Disable text wrapping
(setq-default truncate-lines t)

;; Color Theme
(load-theme 'spacegray t)
(set-face-font 'mode-line "Inconsolata 10")

;; Show Line numbers
(global-linum-mode t)

;; Match Parenthesis
(show-paren-mode 1)

;; Set bash as shell program
(setq shell-file-name "/bin/bash")

(setq make-backup-files nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'ido)
(ido-mode t)

(require 'evil)
(evil-mode 1)

(require 'yasnippet)
(yas-global-mode 1)

(require 'auto-complete)
(global-auto-complete-mode t)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

(require 'projectile)
(projectile-global-mode)

;;(require 'flymake)
;;(add-hook 'find-file-hook 'flymake-find-file-hook)
;;(custom-set-faces '(flymake-errline ((((class color)) (:background "#FF2A2A"))))
;;                 '(flymake-warnline((((class color)) (:background "#FFFE7F")))))

;; dired+ settings
(require 'dired+)
(diredp-make-find-file-keys-reuse-dirs)
(setq-default dired-omit-files-p t)
(setq dired-omit-files-p t)
(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))

(global-set-key (kbd "RET") 'newline-and-indent)
