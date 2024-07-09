(package-initialize)

(load "~/.emacs.d/install.el")

(add-to-list 'custom-theme-load-path
             "~/.emacs.d/themes/")

(add-to-list 'load-path
	     "~/.emacs.d/modes/")

(setq backup-directory-alist '(("." . "~/.emacs.d/backup/")))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq inhibit-startup-screen t)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)

(set-face-attribute 'default nil :height 150)

(global-display-line-numbers-mode)
(setq display-line-numbers-type `relative)


(global-hl-line-mode t)

(defun fullscreen (&optional f)
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
			 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
			 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))

(when (display-graphic-p)
  (fullscreen))


(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-c s") 'shell)


(require 'c3-mode)


(require 'cobol-mode)
(add-to-list 'auto-mode-alist '("\\.cbl" . cobol-mode))


(require 'zig-mode)
(setq zig-format-on-save nil)


(require 'dashboard)
(dashboard-setup-startup-hook)

(setq dashboard-banner-logo-title "Welcome to Emacs.")

(setq dashboard-startup-banner 'logo)

(setq dashboard-center-content t)

(setq dashboard-set-footer nil)

(x-install
 'ada-mode
 'cobol-mode
 'nasm-mode
 'zig-mode
 'rust-mode
 'd-mode
 'nim-mode
 'go-mode
 'v-mode
 'csharp-mode
 )
