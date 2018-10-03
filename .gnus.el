;; Send email via Gmail:
(setq message-send-mail-function 'smtpmail-send-it
  smtpmail-default-smtp-server "smtp.gmail.com")

;; Archive outgoing email in Sent folder on imap.gmail.com:
(setq gnus-message-archive-method '(nnimap "imap.gmail.com")
  gnus-message-archive-group "[Gmail]/Sent Mail")

;; store email in ~/gmail directory
(setq nnml-directory "~/gmail")
(setq message-directory "~/gmail")
