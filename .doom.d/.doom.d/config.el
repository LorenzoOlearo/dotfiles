;; (setq doom-font "Source Code Pro Medium-12")
;; (setq doom-font :family "Source Code Pro Medium" :size 14)
(setq doom-font (font-spec :family "Source Code Pro" :size 16 :weight 'semi-bold)
      doom-variable-pitch-font (font-spec :family "sans" :size 18))

(setq doom-theme 'doom-monokai-spectrum)

;; Starts Emacs in fullscreen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . fullscreen)))))

(setq display-line-numbers-type t)

(setq indent-tabs-mode t)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox")

(setq-default
 delete-by-moving-to-trash t
 tab-width 4
 uniquify-buffer-name-style 'forward
 window-combination-resize t
 x-stretch-cursor t)

(delete-selection-mode 1)
(display-time-mode 1)
(global-subword-mode 1)


;;(defun remove-electric-indent-mode ()
;;  (electric-indent-local-mode -1))


;; Activate auto-fill-mode in all text mode buffers.
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Disable electric indent in LaTeX mode.
(add-hook 'LaTeX-mode-hook 'remove-electric-indent-mode)


(setq evil-vsplit-window-right t
      evil-split-window-below t)
(defadvice! prompt-for-buffer (&rest _)
  :after '(evil-window-split evil-window-vsplit)
  (+ivy/switch-buffer))
(setq +ivy-buffer-preview t)


(setq +doom-dashboard-banner-file
      "~/Dropbox/documents/emacs-stuff/banners/unixmib-scaled.png")


(setq c-default-style "linux"
      c-basic-offset 8)

(setq smerge-command-prefix "\C-cv")

(setq sly-lisp-implementations
      '((cmucl ("cmucl" "-quiet"))
        (sbcl ("sbcl") :coding-system utf-8-unix)))

(setq inferior-lisp-program "/usr/bin/sbcl")


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(use-package! org
  :config
  (setq
   org-bullets-bullet-list '("⁖")
   org-agenda-files (list "~/Dropbox/documents/org/agenda.org")
   org-directory "~/Dropbox/documents/org/"
   org-todo-keyword-faces
   '(("TODO" :foreground "#7c7c75" :weight normal :underline t)
     ("WAITING" :foreground "#9f7efe" :weight normal :underline t)
     ("INPROGRESS" :foreground "#0098dd" :weight normal :underline t)
     ("DONE" :foreground "#50a14f" :weight normal :underline t)
     ("CANCELLED" :foreground "#ff6480" :weight normal :underline t))
   org-priority-faces '((65 :foreground "#e45649")
                        (66 :foreground "#da8548")
                        (67 :foreground "#0098dd"))))

