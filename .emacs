(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.




;; Require std cl libs
;;(require 'cl)
(require 'cl-lib)

;; No Startup Screen
(custom-set-variables
 '(inhibit-startup-screen t)
 '(initial-scratch-message ";;scratch")
)


(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (jorbi-vendor "auto-complete-install/dict"))
(ac-config-default)



(autoload 'twittering-mode "twittering-mode" "twitter" nil)


;; Web Mode
(autoload 'web-mode "web-mode" "web" nil)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))


;; Dart Mode
(autoload 'dart-mode "dart-mode" "Dart Mode" nil)
(add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))

;; io Mode
(autoload 'io-mode "io-mode" "IO mode" nil)
(add-to-list 'auto-mode-alist '("\\.io\\'" . io-mode))

;; SimpleGV Mode
(autoload 'simplegv-mode "simplegv-mode" "SimpleGV" nil)
(add-to-list 'auto-mode-alist '("\\.jlt\\'" . simplegv-mode))

;; Mars Functions
;;(autoload 'mars-init "mars" "Mars" nil)
;;(add-to-list 'auto-mode-alist '("\\(\\.asm\\|\\.a\\|\\.s\\)\\'" . mars-init))
;;(require 'mars)


;; Go Mode
(mac-eval
 (require 'go-mode-load)
 (autoload 'go-mode "go-mode" "go" nil)
 (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
;; (require 'go-mode)
)

;; SLIME
(mac-eval
 (setq inferior-lisp-program "/sw/bin/sbcl")
 (autoload 'slime-selector "slime" t)
)


(linux-eval
 (setq inferior-lisp-program "/usr/bin/clisp")
 (autoload 'slime-selector "slime" t)
)

;; Lua Mode
(autoload 'lua-mode "lua-mode" "lua" nil)
(add-to-list 'auto-mode-alist '("\\.lua\\'" . lua-mode))


;; Mathematica Mode
(setq mathematica-command-line "/usr/local/bin/math")

;; C# MODE
(require 'flymake)
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist  (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))


(require 'color-theme);

;; initialize personal settings
(jorbi-init)


;; Header 2.
(require 'header2)


;;(require 'smooth-scrolling)

(require 'powerline)
(powerline-default)
(set-face-foreground 'powerline-inactive1 "gray70")
(set-face-foreground 'powerline-active1 "gray70")


(require 'linum+)
(global-linum-mode)
(set-face-attribute 'linum nil :height 90)
(set-face-attribute 'linum+-current-line-face nil :height 100)
(setq scroll-margin 4)





 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
