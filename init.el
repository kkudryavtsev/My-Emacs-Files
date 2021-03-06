;;;;;;;;;;;;;;;;;;;; PACKAGES ;;;;;;;;;;;;;;;;;;;


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq my-package-packages '(js2-mode
                            js2-refactor
                            go-mode
                            solidity-mode
                            discover
                            discover-my-major
                            discover-js2-refactor
                            regex-tool
                            w3m
                            rainbow-mode
                            rainbow-delimiters
                            ace-jump-mode
                            auto-complete
                            magit
                            yaml-mode
                            csv-mode
                            yasnippet
                            jade-mode
                            floobits
                            ag
                            projectile
                            ack-and-a-half
                            helm-projectile
                            flx-ido
                            restclient
                            feature-mode
                            nginx-mode
                            enh-ruby-mode
                            markdown-mode
                            coffee-mode
                            vagrant
                            scss-mode
                            docker
                            dockerfile-mode
                            ansible
                            password-generator
                            haskell-mode
                            web-mode
                            rust-mode
                            toml-mode
                            helm
                            elm-mode
                            pug-mode
                            racer
                            company
                            cargo
                            rjsx-mode
                            elpy))

(add-to-list 'load-path "~/.emacs.d/lisp")

;; (require 'epa-file)
;; (epa-file-enable)

;;;;;;;;;;;;;;;;;; GLOBAL SETTINGS ;;;;;;;;;;;;;;;

(global-font-lock-mode 1)
(menu-bar-mode -1)
(setq tramp-default-method "ssh")
(setq tramp-auto-save-directory "/tmp")
(global-auto-revert-mode)
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )


;; (defun copy-from-osx ()
;;       (shell-command-to-string "pbpaste"))

;; (defun paste-to-osx (text &optional push)
;;   (let ((process-connection-type nil))
;;     (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
;;       (process-send-string proc text)
;;       (process-send-eof proc))))

;; (setq interprogram-cut-function 'paste-to-osx)
;; (setq interprogram-paste-function 'copy-from-osx)

;;;;;;;;;;;;;; MODE-EXTENSION MAPPINGS ;;;;;;;;;;;

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.less" . less-css-mode))
(add-to-list 'auto-mode-alist '("\\.srml" . sgml-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . sgml-mode))
(add-to-list 'auto-mode-alist '("\\.cshtml\\'" . sgml-mode))
(add-to-list 'auto-mode-alist '("\\.yasnippet\\'" . snippet-mode))
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . sgml-mode))
(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))

;;;;;;;;;;;;;;;;;;;;;; HOOKS ;;;;;;;;;;;;;;;;;;;;;

(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))
(add-hook 'html-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))
(add-hook 'isearch-mode-end-hook 'my-goto-match-beginning)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load "indentation-config" t)
(load "my-package-configs")
(load "my-handy-functions")
(load "my-keybindings")
(load "my-macros")
(load "my-local-macros" t)
(load "my-faces")


(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(ad-unadvise 'compilation-start)

(require 'solidity-mode)

(require 'uniquify)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(erc-away-nickname "jesus_is_unavailable")
 '(erc-modules
   (quote
    (autoaway autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring stamp track)))
 '(erc-nick "jesus666")
 '(erc-port nil)
 '(erc-server nil)
 '(erc-server-reconnect-attempts t)
 '(erc-server-reconnect-timeout 20)
 '(js-indent-level 2)
 '(js2-strict-inconsistent-return-warning nil)
 '(org-agenda-files (quote ("~/CODE/ETHEREUM/todo_ethereum.org")))
 '(package-selected-packages
   (quote
    (elpy rjsx-mode cargo company racer
          (\, pug-mode)
          pug-mode elm-mode toml-mode rust-mode web-mode haskell-mode password-generator ansible dockerfile-mode docker scss-mode vagrant coffee-mode markdown-mode enh-ruby-mode nginx-mode feature-mode restclient flx-ido helm-projectile projectile ag floobits jade-mode csv-mode yaml-mode auto-complete rainbow-delimiters rainbow-mode w3m regex-tool discover-js2-refactor discover-my-major discover solidity-mode go-mode js2-refactor magit js2-mode ack-and-a-half ace-jump-mode)))
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".eunit" ".git" ".hg" ".fslckout" ".bzr" "_darcs" ".tox" ".svn" "build" "node_modules")))
 '(projectile-project-root-files
   (quote
    ("rebar.config" "project.clj" "SConstruct" "pom.xml" "build.sbt" "build.gradle" "Gemfile" "requirements.txt" "package.json" "gulpfile.js" "Gruntfile.js" "bower.json" "composer.json" "Cargo.toml" "mix.exs" ".gitignore" ".meteor/packages")))
 '(pyvenv-activate "nil")
 '(safe-local-variable-values
   (quote
    ((eval pyvenv-activate "./.venv")
     (python-shell-interpreter-args . "-i --simple-prompt")
     (python-shell-interpreter . "ipython")
     (python-shell-interpreter-args "-i --simple-prompt")
     (python-shell-interpreter "ipython"))))
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bg:erc-color-face10 ((t (:background "color-18"))))
 '(bg:erc-color-face14 ((t (:background "black"))))
 '(diff-added ((t (:inherit diff-changed :background "#ffffff" :foreground "#000000"))))
 '(diff-file-header ((t (:background "grey70" :foreground "black" :weight bold))))
 '(diff-refine-change ((t (:background "color-45"))) t)
 '(diff-refine-changed ((t (:background "color-45"))))
 '(erb-face ((t (:background "color-240"))))
 '(fg:erc-color-face1 ((t (:background "#ffffff" :foreground "black"))))
 '(fringe ((t (:background "black" :foreground "brightwhite"))))
 '(js2-external-variable ((t (:foreground "#aaa"))))
 '(magit-diff-add ((t (:background "#ffffff" :foreground "green"))))
 '(magit-diff-del ((t (:background "#ffffff" :foreground "red"))))
 '(magit-item-highlight ((t (:background "black"))))
 '(magit-key-mode-button-face ((t (:foreground "#00ffff"))))
 '(org-document-info ((t (:foreground "#cccccc"))))
 '(org-pomodoro-mode-line ((t (:foreground "#cc0000"))))
 '(org-pomodoro-mode-line-break ((t (:foreground "#007700"))))
 '(org-table ((t (:foreground "#cccccc"))))
 '(w3m-anchor ((t (:foreground "#cccccc"))))
 '(w3m-arrived-anchor ((t (:foreground "#ffffff"))))
 '(w3m-header-line-location-content ((t (:background "Gray90" :foreground "#000077"))))
 '(w3m-image-anchor ((t (:background "#550055"))))
 '(w3m-session-select ((t (:foreground "#999999"))))
 '(w3m-tab-unselected ((t (:background "blue" :foreground "#ffffff"))))
 '(web-mode-html-attr-name-face ((t (:foreground "#00ff77"))))
 '(web-mode-html-attr-value-face ((t (:foreground "#ff2299"))))
 '(web-mode-html-tag-face ((t (:foreground "#0077ff")))))
