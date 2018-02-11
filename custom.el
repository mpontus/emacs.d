(load "~/.emacs.d/secrets.gpg")

(set-frame-font "PragmataPro-9" 'keep-size t)
(setq-default line-spacing 0.12)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(custom-safe-themes t)
 '(fci-rule-color "#383838")
 '(flycheck-disabled-checkers (quote (emacs-lisp-checkdoc php-phpcs javascript-jshint))) 
 '(org-agenda-files (quote ("~/todo.org")))
 '(org-babel-load-languages
   (quote
    ((emacs-lisp . t)
     (python . t)
     (shell . t)
     (octave . t)
     (latex . t))))
 '(org-capture-templates
   (quote
    (("r" "Add remark" plain
          (file+headline "~/notes/notes.org" "Remarks")
          " * %?"))))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.4 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
     ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-latex-create-formula-image-program (quote imagemagick))
 '(package-selected-packages
   (quote
    (nil rainbow-mode queue auto-overlays ahungry-theme)))
 '(paradox-automatically-star t)
 '(safe-local-variable-values
   (quote
    ((eval font-lock-add-keywords nil
           (\`
            (((\,
               (concat "("
                       (regexp-opt
                        (quote
                         ("sp-do-move-op" "sp-do-move-cl" "sp-do-put-op" "sp-do-put-cl" "sp-do-del-op" "sp-do-del-cl"))
                        t)
                       "\\_>"))
              1
              (quote font-lock-variable-name-face)))))
     (eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
           (add-hook
            (quote write-contents-functions)
            (lambda nil
              (delete-trailing-whitespace)
              nil))
           (require
            (quote whitespace))
           "Sometimes the mode needs to be toggled off and on."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face tabs trailing lines-tail)
     (hl-sexp-mode)
     (rainbow-mode . t)
     (org-confirm-babel-evaluate)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(erc-distinct-1-face ((t (:foreground "tan"))))
 '(erc-distinct-2-face ((t (:foreground "chartreuse1"))))
 '(erc-distinct-3-face ((t (:foreground "SpringGreen2"))))
 '(erc-distinct-4-face ((t (:foreground "light pink"))))
 '(erc-distinct-5-face ((t (:foreground "yellow"))))
 '(erc-distinct-6-face ((t (:foreground "pale green"))))
 '(erc-distinct-7-face ((t (:foreground "cyan"))))
 '(match ((t (:foreground "yellow"))))
 '(variable-pitch ((t (:family "sans-serif")))))
