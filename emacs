(when (display-graphic-p)
   (tool-bar-mode -1)
   (scroll-bar-mode -1))

;; melpa
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; cleaner window
(menu-bar-mode 1)
;;(scroll-bar-mode -1)
(tool-bar-mode   -1)
(add-to-list 'default-frame-alist '(height . 48))
(add-to-list 'default-frame-alist '(width . 80))

;; inhibit startup screen
(setq inhibit-splash-screen t)

;; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Using arrow for moving through buffers
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

;; visual-line-mode
(global-visual-line-mode 1)

;; smooth scrolling
(pixel-scroll-precision-mode 1)

;; use-package
'(package-selected-packages '(use-package))

;; auctex
(use-package tex
	     :ensure auctex)
(load "auctex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook
 'LaTeX-mode-hook
 (lambda ()
   (font-latex-add-keywords '(("citep" "*[[{")) 'reference)
   (font-latex-add-keywords '(("citet" "*[[{")) 'reference)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine 'xetex)
 '(custom-safe-themes
   '("f366d4bc6d14dcac2963d45df51956b2409a15b770ec2f6d730e73ce0ca5c8a7" "de8f2d8b64627535871495d6fe65b7d0070c4a1eb51550ce258cd240ff9394b0" default))
 '(package-selected-packages
   '(zenburn-theme zerodark-theme writeroom-mode auctex use-package)))

;; date
(defun date ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

;; reftex
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode
(setq reftex-cite-format 'natbib)

;; org-latex
(setq org-latex-pdf-process (list "latexmk -f -xelatex %f"
				  "latexmk -c"))
(setq org-latex-logfiles-extensions (quote ("lof" "lot" "tex~" "aux" "idx" "log" "out" "toc" "nav" "snm" "vrb" "dvi" "fdb_latexmk" "blg" "brf" "fls" "entoc" "ps" "spl" "bbl")))

(require 'ox-latex)
(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
	       '("Psychology_letter"
		 "\\documentclass{Psychology_letter}")))



;; org-journal
;;(require 'org-journal)
;;(setq org-journal-dir "~/Dropbox/Documents/org/journal/")
;;(setq org-journal-file-format "%Y%m%d.org")
;;(setq org-journal-date-format "%A %Y/%m/%d")
;;(global-set-key (kbd "C-c C-j") #'org-journal-new-entry)
;;(global-set-key (kbd "C-c C-o") #'org-journal-open-current-journal-file)

;; org-agenda
;;(use-package org-agenda)
;;(setq org-agenda-files (list "~/Dropbox/Documents/org/journal"
;;			     "~/Dropbox/Documents/org"))
;;(global-set-key (kbd "C-c l") #'org-store-link)
;;(global-set-key (kbd "C-c a") #'org-agenda)
;;(global-set-key (kbd "C-c c") #'org-capture)

;; on startup
;;(org-agenda nil "n")
;;(org-journal-new-entry 1)

;; def startup sequence
;;(defun startup ()
;;  "startup sequence"
;;  (interactive)
;;  (org-agenda nil "n")
;;  (org-journal-new-entry nil)
;;  )
;;(global-set-key (kbd "C-c C-.") #'startup)



;; DOCUMENT TEMPLATES

(defun orgsimple ()
  "Insert a template for a simple LaTeX document"
  (interactive)
  (insert-file "~/github/LaTeX/orgsimple.org")
  )

(defun simple ()
  "Insert a template for a simple LaTeX document"
  (interactive)
  (insert-file "~/github/LaTeX/simple.tex")
  )

(defun letter ()
  "Insert a template for a simple LaTeX document"
  (interactive)
  (insert-file "~/github/LaTeX/letter.tex")
  )

(defun paper ()
  "Insert a template for a simple LaTeX document"
  (interactive)
  (insert-file "~/github/LaTeX/paper.tex")
  ) 



;; for Mac, use same PATH as shell path
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell 
      (replace-regexp-in-string "[[:space:]\n]*$" "" 
        (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
(when (equal system-type 'darwin) (set-exec-path-from-shell-PATH))

;; mac use option key as meta
(setq mac-option-modifier 'meta)

(set-face-attribute 'default nil :height 140)

;; use zsh for shell
(setq explicit-shell-file-name "/bin/zsh")
(setq shell-file-name "zsh")
(setq explicit-zsh-args '("--login" "--interactive"))
(defun zsh-shell-mode-setup ()
  (setq-local comint-process-echoes t))
(add-hook 'shell-mode-hook #'zsh-shell-mode-setup)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
