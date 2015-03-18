(require-package 'flatland-theme)
(require-package 'zenburn-theme)

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

;; Indentation
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; emacs powerline
(require 'powerline)
(setq powerline-color1 "gray30")
(setq powerline-color2 "gray45")
(set-face-attribute 'mode-line nil
                    :background "gray22"
                    :foreground "F0DFAF"
                    :box nil)

;; show marker in left frint for lines not in buffer
(setq indicate-empty-lines t)

;; suppress GUI Features
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

(setq evil-default-cursor t)

(column-number-mode t)
(global-visual-line-mode t)

(defun init-theme ()
  (load-theme 'zenburn t))

(defun init-fonts ()
  (set-default-font "Droid Sans Mono-8")
  (add-to-list 'default-frame-alist '(font . "Droid Sans Mono-8")))


(defun init-gui-customisations ()
  (init-theme)
  (setq-default line-spacing 2)
  (init-fonts))

(add-hook 'after-init-hook 'init-gui-customisations)

(provide 'init-gui)
