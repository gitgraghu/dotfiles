;; setup and install packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)
(when (not (file-exists-p package-user-dir)) (package-refresh-contents))
 
(defun require-packages (&rest packages) (mapcar (lambda (package) (when (not (package-installed-p package)) (package-install package))) packages))

(require-packages 
    'evil
    'autopair
    'projectile
    'spacegray-theme
    'sticky-windows
    'yasnippet
    'auto-complete
    'auto-complete-clang-async
     )


;;no splash
(setq inhibit-startup-message t)

;;no toolbar
(tool-bar-mode -1)

;;no menubar
(menu-bar-mode -1)

;;set font
(set-default-font "Inconsolata 11")

;;no tabs
(setq-default indent-tabs-mode nil)
(setq-default c-basin-offset 4)
(setq-default tab-width 4)

;;disable text wrapping
(setq-default truncate-lines t)

;;theme
(load-theme 'spacegray t)
(set-face-font 'mode-line "Inconsolata 10")

;;start maximized
(custom-set-variables '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;show line numbers
(global-linum-mode t)

;;match parenthesis
(show-paren-mode 1)

;;yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;;sticky windows
(require 'sticky-windows)

;;set bash as shell program
(setq shell-file-name "/bin/bash")

;;autocomplete
(require 'auto-complete)
(global-auto-complete-mode t)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;;clang autocomplete
(require 'auto-complete-clang-async)
(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "/usr/bin/clang-complete")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process)
)
(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup))
(my-ac-config)

;;autopair
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

;;initialize ido
(require 'ido)
(ido-mode t)

;;initialize evil
(require 'evil)
(evil-mode 1)

;;projectile
(require 'projectile)
(projectile-global-mode)

;;dired settings
;;(require 'dired+)
;;(diredp-make-find-file-keys-reuse-dirs)
;;(setq-default dired-omit-files-p t)
;;(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))

;;disable linum in some modes
(setq linum-disabled-modes-list
      '(eshell-mode
	wl-summary-mode
	dired-mode))

;;keymaps
(define-key global-map (kbd "RET") 'newline-and-indent)
