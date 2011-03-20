;;; append to load-path
(setq load-path (append
                 '("~/.emacs.d"
                   "~/.emacs.d/packages")
                 load-path))


;;; Locale
(set-locale-environment (or (getenv "LANG")
			    "ja_JP.UTF-8"))

;;; Backup & Autosave
(setq backup-inhibited t)
(setq delete-auto-save-files t)


;;; C-h <-> DEL
(keyboard-translate ?\C-h ?\C-?)


;;; Visit image files as images
(auto-image-file-mode t)


;;; Hide menu bar and tool bar
(menu-bar-mode -1)
(and (eq window-system 'mac)
     (tool-bar-mode -1))


;;; Turn blinking cursor mode off
(blink-cursor-mode nil)


;;; No limit while printing value in `eval-expression'
(setq eval-expression-print-length nil)


;;; Show paren and trailing whitespaces
(show-paren-mode t)
(setq show-paren-style 'mixed)
(setq-default show-trailing-whitespace t)    


;;; Show line and column number
(line-number-mode t)
(column-number-mode t)


;;; Automatically save place in each file
(require 'saveplace)
(setq-default save-place t)


;;; Kill line and newline
(setq kill-whole-line t)
(setq require-final-newline t)
(setq next-line-add-newlines nil)


;;; Completion
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
(partial-completion-mode t)
(icomplete-mode 1)


;;; History
(setq history-length 10000)
(setq recentf-max-saved-items 10000)
(savehist-mode 1)


;;; Automatic file compression/decompression
(auto-compression-mode t)


;;; dired
(add-hook 'dired-load-hook
	  '(lambda ()
	     (load "dired-x")
	     (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)))
(autoload 'wdired-change-to-wdired-mode "wdired")



;;; Unique buffer name
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)


;;; Battery
(display-battery-mode t)


;;; font-set
(if (eq window-system 'mac)
    (progn
      (require 'carbon-font)
      (fixed-width-set-fontset 'hiramaru 12)))

(setq default-frame-alist
       (append '((active-alpha . 1.00)
		 (inactive-alpha . 0.80))
               default-frame-alist))


;;; tDiary
(add-to-list 'load-path (expand-file-name "~/Documents/Emacsen/apel"))
(add-to-list 'load-path (expand-file-name "~/Documents/tDiary/contrib/util/tdiary-mode"))
(autoload 'tdiary-replace "tdiary-mode" "tDiary mode" t)


(load "config/builtins")
(load "config/packages")

;(package-install 'emacswiki "grep-edit.el" 'grep-edit)
